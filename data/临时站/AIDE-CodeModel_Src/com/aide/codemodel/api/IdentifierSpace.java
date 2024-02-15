package com.aide.codemodel.api;

import java.io.IOException;
import java.util.Arrays;

import com.aide.codemodel.api.collections.FunctionOfIntInt;
import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;

public class IdentifierSpace {
   private static final int[] SIZES = new int[]{
      5,
      11,
      17,
      37,
      67,
      131,
      257,
      521,
      1031,
      2053,
      4099,
      8209,
      16411,
      32771,
      65537,
      131101,
      262147,
      524309,
      1048583,
      2097169,
      4194319,
      8388617,
      16777259,
      33554467,
      67108879,
      134217757,
      268435459,
      536870923,
      1073741827,
      2147383649
   };
   private int[] hashes;
   private int[] tablePoss;
   private int count;
   private int sizeexp;
   private byte[] utfTable;
   private int utfTablePos;
   private final int[] shortMap;
   private final char[] shortMapInverted;
   private final FunctionOfIntInt uidentifiers = new FunctionOfIntInt();
   private char[] uchars = new char[100];
   private char[] temp1 = new char[1000];
   private char[] temp2 = new char[1000];

   public IdentifierSpace() {
      this.sizeexp = 0;
      this.hashes = new int[SIZES[this.sizeexp]];
      this.tablePoss = new int[SIZES[this.sizeexp]];
      this.count = 0;
      this.utfTable = new byte[10000];
      this.utfTablePos = 1;
      this.shortMap = new int[123];
      int p = 1;

      for(int i = 97; i <= 122; ++i) {
         this.shortMap[i] = p++;
      }

      for(int i = 65; i <= 90; ++i) {
         this.shortMap[i] = p++;
      }

      for(int i = 48; i <= 57; ++i) {
         this.shortMap[i] = p++;
      }

      this.shortMap[95] = p++;
      this.shortMapInverted = new char[64];

      for(int i = 0; i < this.shortMap.length; ++i) {
         this.shortMapInverted[this.shortMap[i]] = (char)i;
      }
   }

   protected void load(StoreInputStream stream) throws IOException {
      this.sizeexp = stream.readInt();
      this.count = stream.readInt();
      this.hashes = new int[SIZES[this.sizeexp]];
      this.tablePoss = new int[SIZES[this.sizeexp]];

      for(int i = 0; i < this.hashes.length; ++i) {
         this.hashes[i] = stream.readInt();
      }

      for(int i = 0; i < this.hashes.length; ++i) {
         this.tablePoss[i] = stream.readInt();
      }

      this.utfTablePos = stream.readInt();
      this.utfTable = new byte[this.utfTablePos * 5 / 4];

      for(int i = 0; i < this.utfTablePos; ++i) {
         this.utfTable[i] = stream.readByte();
      }
   }

   protected void store(StoreOutputStream stream) throws IOException {
      stream.writeInt(this.sizeexp);
      stream.writeInt(this.count);

      for (int hash : this.hashes) {
         stream.writeInt(hash);
      }

      for(int i = 0; i < this.hashes.length; ++i) {
         stream.writeInt(this.tablePoss[i]);
      }

      stream.writeInt(this.utfTablePos);

      for(int i = 0; i < this.utfTablePos; ++i) {
         stream.writeByte(this.utfTable[i]);
      }
   }

   public void clear() {
      if (this.count > 0) {
         Arrays.fill(this.hashes, 0);

         this.count = 0;
      }

      this.utfTablePos = 1;
   }

   public int get(String string) {
      return this.get(string, 0, string.length());
   }

   public int get(String string, int offset, int length) {
      return this.get(string.toCharArray(), offset, length);
   }

   public int get(char[] chars, int off, int len) {
      switch(len) {
         case 0:
         case 2:
         case 3:
         case 4:
         case 5:
         {
            int identifier = 0;
            int i = 0;

            while (true) {
               if (i >= len) {
                  return 1073741824 | identifier;
               }

               char c = chars[off + i];
               if (c >= this.shortMap.length) {
                  break;
               }

               int map = this.shortMap[c];
               if (map == 0) {
                  break;
               }

               identifier = identifier << 6 | map;
               ++i;
            }
      }
         default: {
            int hash = 0;
            if (len < 4) {
               int offset = off;

               for (int i = len; i > 0; --i) {
                  hash = hash * 37 + chars[offset++];
               }
            } else {
               int offset = off;
               int skip = len / 4;

               for (int i = len; i > 0; offset += skip) {
                  hash = hash * 39 + chars[offset];
                  i -= skip;
               }
            }

            int step = (hash & 2147483647) % (this.hashes.length - 2) + 1;
            int index = (hash & 2147483647) % this.hashes.length;

            for (int curHash = this.hashes[index]; curHash != 0; curHash = this.hashes[index]) {
               if (curHash == hash) {
                  int identifier = this.tablePoss[index];
                  if (this.equals(identifier, chars, off, len)) {
                     return identifier;
                  }
               }

               index = (index + step) % this.hashes.length;
            }

            int identifier = this.utfTablePos;
            this.insert(hash);
            this.insert(chars, off, len);
            return identifier;
         }
         case 1:
            return -2147483648 | chars[off];
      }
   }

   private void insert(int hash) {
      int index = (hash & 2147483647) % this.hashes.length;
      int step = (hash & 2147483647) % (this.hashes.length - 2) + 1;

      for(int curHash = this.hashes[index]; curHash != 0; curHash = this.hashes[index]) {
         index = (index + step) % this.hashes.length;
      }

      this.hashes[index] = hash;
      this.tablePoss[index] = this.utfTablePos;
      ++this.count;
      if (this.count * 2 > this.hashes.length) {
         this.rehash();
      }
   }

   private void rehash() {
      ++this.sizeexp;
      int[] keys = new int[SIZES[this.sizeexp]];
      int[] values = new int[SIZES[this.sizeexp]];
      int slots = 0;

      for(int i = 0; i < this.hashes.length; ++i) {
         int hash = this.hashes[i];
         if (hash != 0) {
            int step = (hash & 2147483647) % (keys.length - 2) + 1;
            int index = (hash & 2147483647) % keys.length;

            while(keys[index] != 0) {
               index = (index + step) % keys.length;
            }

            keys[index] = hash;
            values[index] = this.tablePoss[i];
            ++slots;
         }
      }

      this.hashes = keys;
      this.tablePoss = values;
   }

   private void insert(char[] chars, int off, int len) {
      while(this.utfTablePos + len * 3 + 1 >= this.utfTable.length) {
         byte[] utfTable = new byte[this.utfTable.length * 2 + 1];
         System.arraycopy(this.utfTable, 0, utfTable, 0, this.utfTable.length);
         this.utfTable = utfTable;
      }

      int endIndex = off + len;
      int i = 0;

      for(i = off; i < endIndex; ++i) {
         char c = chars[i];
         if (c < 1 || c > 127) {
            break;
         }

         this.utfTable[this.utfTablePos++] = (byte)c;
      }

      for(; i < endIndex; ++i) {
         char c = chars[i];
         if (c >= 1 && c <= 127) {
            this.utfTable[this.utfTablePos++] = (byte)c;
         } else if (c > 2047) {
            this.utfTable[this.utfTablePos++] = (byte)(224 | c >> '\f' & 15);
            this.utfTable[this.utfTablePos++] = (byte)(128 | c >> 6 & 63);
            this.utfTable[this.utfTablePos++] = (byte)(128 | c & 63);
         } else {
            this.utfTable[this.utfTablePos++] = (byte)(192 | c >> 6 & 31);
            this.utfTable[this.utfTablePos++] = (byte)(128 | c & 63);
         }
      }

      this.utfTable[this.utfTablePos++] = 0;
   }

   private boolean equals(int identifier, char[] chars, int off, int len) {
      int pos = identifier;
      int endIndex = off + len;
      int i = 0;

      for(i = off; i < endIndex; ++i) {
         char c = chars[i];
         if (c == 0) {
            return false;
         }

         if (c > 127) {
            break;
         }

         if ((byte)c != this.utfTable[pos++]) {
            return false;
         }
      }

      for(; i < endIndex; ++i) {
         char c = chars[i];
         if (c == 0) {
            return false;
         }

         if (c <= 127) {
            if ((byte)c != this.utfTable[pos++]) {
               return false;
            }
         } else if (c > 2047) {
            if ((byte)(224 | c >> '\f' & 15) != this.utfTable[pos++]) {
               return false;
            }

            if ((byte)(128 | c >> 6 & 63) != this.utfTable[pos++]) {
               return false;
            }

            if ((byte)(128 | c & 63) != this.utfTable[pos++]) {
               return false;
            }
         } else {
            if ((byte)(192 | c >> 6 & 31) != this.utfTable[pos++]) {
               return false;
            }

            if ((byte)(128 | c & 63) != this.utfTable[pos++]) {
               return false;
            }
         }
      }

      return this.utfTable[pos++] == 0;
   }

   public String getString(int identifier) {
      if ((identifier & -2147483648) == Integer.MIN_VALUE) {
         return Character.toString((char)(identifier & 2147483647));
      } else if ((identifier & 1073741824) == 1073741824) {
         identifier &= -1073741825;
         char[] chars = new char[5];
         int len = 0;

         for(int i = 0; i < 5; ++i) {
            int map = identifier & 63;
            if (map == 0) {
               break;
            }

            ++len;
            chars[5 - len] = this.shortMapInverted[map];
            identifier >>= 6;
         }

         return new String(chars, 5 - len, len);
      } else {
         StringBuilder buf = new StringBuilder();
         int pos = identifier;

         while(pos < this.utfTablePos) {
            int c = this.utfTable[pos++] & 255;
            if (c == 0) {
               break;
            }

            switch(c >> 4) {
               case 0:
               case 1:
               case 2:
               case 3:
               case 4:
               case 5:
               case 6:
               case 7:
                  buf.append((char) c);
                  break;
               case 8:
               case 9:
               case 10:
               case 11:
               default:
                  throw new RuntimeException("Malformed input");
               case 12:
               case 13: {
                  if (pos >= this.utfTablePos) {
                     throw new RuntimeException("End index not on boundary");
                  }

                  int char2 = this.utfTable[pos++] & 255;
                  buf.append((char) ((c & 31) << 6 | char2 & 63));
                  break;
               }
               case 14: {
                  if (pos + 1 >= this.utfTablePos) {
                     throw new RuntimeException("End index not on boundary");
                  }

                  int char2 = this.utfTable[pos++] & 255;
                  int char3 = this.utfTable[pos++] & 255;
                  buf.append((char) ((c & 15) << 12 | (char2 & 63) << 6 | (char3 & 63)));
               }
            }
         }

         return buf.toString();
      }
   }

   public int getChars(int identifier, char[] chars, int off) {
      if ((identifier & -2147483648) == Integer.MIN_VALUE) {
         if (off + 1 >= chars.length) {
            return -1;
         } else {
            chars[off++] = (char)(identifier & 2147483647);
            return off;
         }
      } else if ((identifier & 1073741824) == 1073741824) {
         identifier &= -1073741825;
         int oldidentifier = identifier;
         int len = 0;

         for(int i = 0; i < 5 && identifier != 0; ++i) {
            ++len;
            identifier >>= 6;
         }

         if (off + len >= chars.length) {
            return -1;
         } else {
            identifier = oldidentifier;

            for(int i = 0; i < len; ++i) {
               int map = identifier & 63;
               if (map == 0) {
                  break;
               }

               chars[off + len - i - 1] = this.shortMapInverted[map];
               identifier >>= 6;
            }

            return off + len;
         }
      } else {
         int pos = identifier;

         while(pos < this.utfTablePos) {
            int c = this.utfTable[pos++] & 255;
            if (c == 0) {
               break;
            }

            if (off >= chars.length) {
               return -1;
            }

            switch(c >> 4) {
               case 0:
               case 1:
               case 2:
               case 3:
               case 4:
               case 5:
               case 6:
               case 7:
                  chars[off++] = (char) c;
                  break;
               case 8:
               case 9:
               case 10:
               case 11:
               default:
                  throw new RuntimeException("Malformed input");
               case 12:
               case 13: {
                  if (pos >= this.utfTablePos) {
                     throw new RuntimeException("End index not on boundary");
                  }

                  int char2 = this.utfTable[pos++] & 255;
                  chars[off++] = (char) ((c & 31) << 6 | char2 & 63);
                  break;
               }
               case 14: {
                  if (pos + 1 >= this.utfTablePos) {
                     throw new RuntimeException("End index not on boundary");
                  }

                  int char2 = this.utfTable[pos++] & 255;
                  int char3 = this.utfTable[pos++] & 255;
                  chars[off++] = (char) ((c & 15) << 12 | (char2 & 63) << 6 | (char3 & 63));
               }
            }
         }

         return off;
      }
   }

   public int length(int identifier) {
      int len1;
      while((len1 = this.getChars(identifier, this.temp1, 0)) == -1) {
         this.temp1 = new char[this.temp1.length * 2 + 1];
      }

      return len1;
   }

   public int substring(int identifier, int startoffset, int endoffset) {
      while(this.getChars(identifier, this.temp1, 0) == -1) {
         this.temp1 = new char[this.temp1.length * 2 + 1];
      }

      return this.get(this.temp1, startoffset, endoffset - startoffset);
   }

   public boolean endsWith(int identifier, int postfixIdentifier) {
      int len1;
      while((len1 = this.getChars(identifier, this.temp1, 0)) == -1) {
         this.temp1 = new char[this.temp1.length * 2 + 1];
      }

      int len2;
      while((len2 = this.getChars(postfixIdentifier, this.temp2, 0)) == -1) {
         this.temp2 = new char[this.temp2.length * 2 + 1];
      }

      if (len1 < len2) {
         return false;
      } else {
         for(int i = 0; i < len2; ++i) {
            if (this.temp2[i] != this.temp1[len1 - len2 + i]) {
               return false;
            }
         }

         return true;
      }
   }

   public int toUpperCase(int identifier) {
      int uidentifier = this.uidentifiers.get(identifier);
      if (uidentifier == -1) {
         int off;
         while ((off = this.getChars(identifier, this.uchars, 0)) == -1) {
            this.uchars = new char[this.uchars.length * 2 + 1];
         }

         for (int i = 0; i < off; ++i) {
            this.uchars[i] = Character.toUpperCase(this.uchars[i]);
         }

         uidentifier = this.get(this.uchars, 0, off);
         this.uidentifiers.put(identifier, uidentifier);
      }
      return uidentifier;
   }
}
