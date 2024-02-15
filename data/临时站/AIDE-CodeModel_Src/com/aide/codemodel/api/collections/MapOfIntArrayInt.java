package com.aide.codemodel.api.collections;

import java.io.IOException;
import java.util.Arrays;

public class MapOfIntArrayInt {
   
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
   private int[] arrays;
   private int arraypos;
   private int[] poss;
   private int[] values;
   private int slots;
   private int count;
   private int sizeexp;
   private int[] buffer;

   public MapOfIntArrayInt(int size) {
      this.sizeexp = 0;

      while(SIZES[this.sizeexp] < size * 2) {
         ++this.sizeexp;
      }

      this.poss = new int[SIZES[this.sizeexp]];
      this.values = new int[SIZES[this.sizeexp]];
      this.arrays = new int[10];
      this.arraypos = 1;
      this.slots = 0;
      this.count = 0;
   }

   public MapOfIntArrayInt() {
      this.sizeexp = 0;
      this.poss = new int[SIZES[this.sizeexp]];
      this.values = new int[SIZES[this.sizeexp]];
      this.arrays = new int[10];
      this.arraypos = 1;
      this.slots = 0;
      this.count = 0;
   }

   public MapOfIntArrayInt(StoreInputStream stream) throws IOException {
      this.count = stream.readInt();
      this.slots = stream.readInt();
      this.sizeexp = stream.readInt();
      this.poss = new int[SIZES[this.sizeexp]];

      for(int i = 0; i < this.poss.length; ++i) {
         this.poss[i] = stream.readInt();
      }

      this.values = new int[SIZES[this.sizeexp]];

      for(int i = 0; i < this.values.length; ++i) {
         this.values[i] = stream.readInt();
      }

      this.arraypos = stream.readInt();
      this.arrays = new int[stream.readInt()];

      for(int i = 0; i < this.arraypos; ++i) {
         this.arrays[i] = stream.readInt();
      }
   }

   public void store(StoreOutputStream stream) throws IOException {
      stream.writeInt(this.count);
      stream.writeInt(this.slots);
      stream.writeInt(this.sizeexp);

      for (int j : this.poss) {
         stream.writeInt(j);
      }

      for (int value : this.values) {
         stream.writeInt(value);
      }

      stream.writeInt(this.arraypos);
      stream.writeInt(this.arrays.length);

      for(int i = 0; i < this.arraypos; ++i) {
         stream.writeInt(this.arrays[i]);
      }
   }

   public void clear() {
      Arrays.fill(this.poss, 0);

      this.slots = 0;
      this.count = 0;
   }

   private int getHash(int[] array, int off, int len) {
      int key = 0;

      for(int i = 0; i < len; ++i) {
         key ^= array[i + off];
      }

      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      return key & 2147483647;
   }

   public void put(int array0, int[] array1, int[] array2, int off, int len, int value) {
      int bufferlen = 1 + 2 * len;
      if (this.buffer == null || this.buffer.length <= bufferlen) {
         this.buffer = new int[bufferlen];
      }

      this.buffer[0] = array0;
      System.arraycopy(array1, off, this.buffer, 1, len);
      System.arraycopy(array2, off, this.buffer, 1 + len, len);
      this.put(this.buffer, 0, bufferlen, value);
   }

   public int get(int array0, int[] array1, int[] array2, int off, int len) {
      int bufferlen = 1 + 2 * len;
      if (this.buffer == null || this.buffer.length <= bufferlen) {
         this.buffer = new int[bufferlen];
      }

      this.buffer[0] = array0;
      System.arraycopy(array1, off, this.buffer, 1, len);
      System.arraycopy(array2, off, this.buffer, 1 + len, len);
      return this.get(this.buffer, 0, bufferlen);
   }

   public boolean contains(int array0, int[] array1, int[] array2, int off, int len) {
      int bufferlen = 1 + 2 * len;
      if (this.buffer == null || this.buffer.length <= bufferlen) {
         this.buffer = new int[bufferlen];
      }

      this.buffer[0] = array0;
      System.arraycopy(array1, off, this.buffer, 1, len);
      System.arraycopy(array2, off, this.buffer, 1 + len, len);
      return this.contains(this.buffer, 0, bufferlen);
   }

   public void put(int[] array, int off, int len, int value) {
      int hash = this.getHash(array, off, len);
      int index = hash % this.poss.length;
      int step = hash % (this.poss.length - 2) + 1;

      int curPos;
      for(curPos = this.poss[index]; curPos != 0 && curPos != Integer.MIN_VALUE; curPos = this.poss[index]) {
         if (this.arrays[curPos] == len) {
            ++curPos;
            int i = 0;

            while(true) {
               if (i >= len) {
                  this.values[index] = value;
                  return;
               }

               if (this.arrays[curPos++] != array[off + i]) {
                  break;
               }

               ++i;
            }
         }

         index = (index + step) % this.poss.length;
      }

      this.poss[index] = this.arraypos;
      if (this.arraypos + len + 1 >= this.arrays.length) {
         int[] arrays = new int[Math.max(this.arrays.length + len + 1, this.arrays.length * 2 + 1)];
         System.arraycopy(this.arrays, 0, arrays, 0, this.arrays.length);
         this.arrays = arrays;
      }

      this.arrays[this.arraypos++] = len;

      for(int i = 0; i < len; ++i) {
         this.arrays[this.arraypos++] = array[off + i];
      }

      this.values[index] = value;
      if (curPos != Integer.MIN_VALUE) {
         ++this.slots;
      }

      ++this.count;
      if (this.slots * 2 > this.poss.length) {
         this.rehash();
      }
   }

   public boolean contains(int[] array, int off, int len) {
      int hash = this.getHash(array, off, len);
      int index = hash % this.poss.length;
      int step = hash % (this.poss.length - 2) + 1;

      for(int curPos = this.poss[index]; curPos != 0 && curPos != Integer.MIN_VALUE; curPos = this.poss[index]) {
         if (this.arrays[curPos] == len) {
            ++curPos;
            int i = 0;

            while(true) {
               if (i >= len) {
                  return true;
               }

               if (this.arrays[curPos++] != array[off + i]) {
                  break;
               }

               ++i;
            }
         }

         index = (index + step) % this.poss.length;
      }

      return false;
   }

   public int get(int[] array, int off, int len) {
      int hash = this.getHash(array, off, len);
      int index = hash % this.poss.length;
      int step = hash % (this.poss.length - 2) + 1;

      for(int curPos = this.poss[index]; curPos != 0 && curPos != Integer.MIN_VALUE; curPos = this.poss[index]) {
         if (this.arrays[curPos] == len) {
            ++curPos;
            int i = 0;

            while(true) {
               if (i >= len) {
                  return this.values[index];
               }

               if (this.arrays[curPos++] != array[off + i]) {
                  break;
               }

               ++i;
            }
         }

         index = (index + step) % this.poss.length;
      }

      return -1;
   }

   public void remove(int[] array, int off, int len) {
      int hash = this.getHash(array, off, len);
      int index = hash % this.poss.length;
      int step = hash % (this.poss.length - 2) + 1;

      for(int curPos = this.poss[index]; curPos != 0 && curPos != Integer.MIN_VALUE; curPos = this.poss[index]) {
         if (this.arrays[curPos] == len) {
            ++curPos;
            int i = 0;

            while(true) {
               if (i >= len) {
                  this.poss[index] = Integer.MIN_VALUE;
                  break;
               }

               if (this.arrays[curPos++] != array[off + i]) {
                  break;
               }

               ++i;
            }
         }

         index = (index + step) % this.poss.length;
      }
   }

   private void rehash() {
      ++this.sizeexp;
      int[] poss = new int[SIZES[this.sizeexp]];
      int[] values = new int[SIZES[this.sizeexp]];
      int slots = 0;

      for(int i = 0; i < this.poss.length; ++i) {
         int pos = this.poss[i];
         if (pos != 0 && pos != Integer.MIN_VALUE) {
            int hash = this.getHash(this.arrays, pos + 1, this.arrays[pos]);
            int index = hash % poss.length;
            int step = hash % (poss.length - 2) + 1;

            while(poss[index] != 0) {
               index = (index + step) % poss.length;
            }

            poss[index] = pos;
            values[index] = this.values[i];
            ++slots;
         }
      }

      this.poss = poss;
      this.values = values;
      this.slots = slots;
   }

   public int size() {
      return this.count;
   }

}
