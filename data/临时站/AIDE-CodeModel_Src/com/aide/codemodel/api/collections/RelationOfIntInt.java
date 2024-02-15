package com.aide.codemodel.api.collections;

import java.io.IOException;
import java.util.Arrays;

public class RelationOfIntInt {
   public final Iterator DEFAULT_ITERATOR = new Iterator();
   
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
   private long[] keys;
   private long[] oldkeys;
   private int slots;
   private int count;
   private int sizeexp;

   public RelationOfIntInt(int size) {
      this.sizeexp = 0;

      while(SIZES[this.sizeexp] < size * 2) {
         ++this.sizeexp;
      }

      this.keys = new long[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;
   }

   public RelationOfIntInt() {
      this.sizeexp = 0;
      this.keys = new long[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;
   }

   public RelationOfIntInt(StoreInputStream stream) throws IOException {
      this.count = stream.readInt();
      this.slots = stream.readInt();
      this.sizeexp = stream.readInt();
      this.keys = new long[SIZES[this.sizeexp]];

      for(int i = 0; i < this.keys.length; ++i) {
         this.keys[i] = stream.readLong();
      }
   }

   public void remove(SetOfFileEntry value1s) {
      for(int i = 0; i < this.keys.length; ++i) {
         long key = this.keys[i];
         if (key != 0L && key != Long.MIN_VALUE) {
            if (key == Long.MAX_VALUE) {
               key = 0L;
            }

            int v1 = (int)(key >> 32);
            if (value1s.contains(v1)) {
               this.keys[i] = Long.MIN_VALUE;
               --this.count;
            }
         }
      }
   }

   public void store(StoreOutputStream stream) throws IOException {
      stream.writeInt(this.count);
      stream.writeInt(this.slots);
      stream.writeInt(this.sizeexp);

      for (long key : this.keys) {
         stream.writeLong(key);
      }
   }

   public Iterator createIterator() {
      return new Iterator();
   }

   public void clear() {
      if (this.slots > 0) {
         Arrays.fill(this.keys, 0L);

         this.slots = 0;
         this.count = 0;
      }
   }

   public void put(RelationOfIntInt relation) {
      for(int i = 0; i < relation.keys.length; ++i) {
         long key = relation.keys[i];
         if (key == Long.MAX_VALUE) {
            this.put(0L);
         } else if (key != 0L && key != Long.MIN_VALUE) {
            this.put(key);
         }
      }
   }

   public void put(long key) {
      if (key == 0L) {
         key = Long.MAX_VALUE;
      }

      int index = (int)((key & Long.MAX_VALUE) % (long)this.keys.length);
      int step = (int)((key & Long.MAX_VALUE) % ((long)this.keys.length - 2L)) + 1;

      for(long curKey = this.keys[index]; curKey != 0L; curKey = this.keys[index]) {
         if (curKey == key) {
            return;
         }

         index = (index + step) % this.keys.length;
      }

      this.keys[index] = key;
      ++this.count;
      ++this.slots;
      if (this.slots * 2 > this.keys.length) {
         this.rehash();
      }
   }

   public void put(int value1, int value2) {
      long key = (long)value1 << 32 | (long)value2;
      if (key == 0L) {
         key = Long.MAX_VALUE;
      }

      int index = (int)((key & Long.MAX_VALUE) % (long)this.keys.length);
      int step = (int)((key & Long.MAX_VALUE) % ((long)this.keys.length - 2L)) + 1;

      for(long curKey = this.keys[index]; curKey != 0L; curKey = this.keys[index]) {
         if (curKey == key) {
            return;
         }

         index = (index + step) % this.keys.length;
      }

      this.keys[index] = key;
      ++this.count;
      ++this.slots;
      if (this.slots * 2 > this.keys.length) {
         this.rehash();
      }
   }

   public void remove(int value1, int value2) {
      long key = (long)value1 << 32 | (long)value2;
      if (key == 0L) {
         key = Long.MAX_VALUE;
      }

      int index = (int)((key & Long.MAX_VALUE) % (long)this.keys.length);
      int step = (int)((key & Long.MAX_VALUE) % ((long)this.keys.length - 2L)) + 1;

      for(long curKey = this.keys[index]; curKey != key; curKey = this.keys[index]) {
         if (curKey == 0L) {
            return;
         }

         index = (index + step) % this.keys.length;
      }

      this.keys[index] = Long.MIN_VALUE;
      --this.count;
   }

   public void remove(int value1) {
      for(int i = 0; i < this.keys.length; ++i) {
         long key = this.keys[i];
         if (key != 0L && key != Long.MIN_VALUE) {
            if (key == Long.MAX_VALUE) {
               key = 0L;
            }

            int v1 = (int)(key >> 32);
            if (v1 == value1) {
               this.keys[i] = Long.MIN_VALUE;
               --this.count;
            }
         }
      }
   }

   public void remove(SetOfInt value1s) {
      for(int i = 0; i < this.keys.length; ++i) {
         long key = this.keys[i];
         if (key != 0L && key != Long.MIN_VALUE) {
            if (key == Long.MAX_VALUE) {
               key = 0L;
            }

            int v1 = (int)(key >> 32);
            if (value1s.contains(v1)) {
               this.keys[i] = Long.MIN_VALUE;
               --this.count;
            }
         }
      }
   }

   public boolean contains(int value1, int value2) {
      long key = (long)value1 << 32 | (long)value2;
      if (key == 0L) {
         key = Long.MAX_VALUE;
      }

      int index = (int)((key & Long.MAX_VALUE) % (long)this.keys.length);
      int step = (int)((key & Long.MAX_VALUE) % ((long)this.keys.length - 2L)) + 1;

      for(long curKey = this.keys[index]; curKey != key; curKey = this.keys[index]) {
         if (curKey == 0L) {
            return false;
         }

         index = (index + step) % this.keys.length;
      }

      return true;
   }

   public boolean empty() {
      return this.count == 0;
   }

   private void rehash() {
      long[] keys;
      if (this.count * 2 > this.keys.length) {
         ++this.sizeexp;
         this.oldkeys = null;
         keys = new long[SIZES[this.sizeexp]];
      } else if (this.oldkeys != null && this.oldkeys.length == this.keys.length) {
         keys = this.oldkeys;

         Arrays.fill(keys, 0L);

         this.oldkeys = this.keys;
      } else {
         this.oldkeys = this.keys;
         keys = new long[SIZES[this.sizeexp]];
      }

      int slots = 0;

      for (long key : this.keys) {
         if (key != 0L && key != Long.MIN_VALUE) {
            int index = (int) ((key & Long.MAX_VALUE) % (long) keys.length);
            int step = (int) ((key & Long.MAX_VALUE) % ((long) keys.length - 2L)) + 1;

            while (keys[index] != 0L) {
               index = (index + step) % keys.length;
            }

            keys[index] = key;
            ++slots;
         }
      }

      this.keys = keys;
      this.slots = slots;
   }

   public int memSize() {
      return this.slots * 8;
   }

   public int totalSize() {
      return this.keys.length * 8 + (this.oldkeys != null ? this.oldkeys.length * 8 : 0);
   }

   public int size() {
      return this.count;
   }
   public class Iterator {
      private int index = 0;
      private int value1;
      private int value2;

      private Iterator() {
      }

      public void init() {
         this.index = 0;
      }

      public boolean hasMoreElements() {
         while(this.index < RelationOfIntInt.this.keys.length) {
            long key = RelationOfIntInt.this.keys[this.index];
            ++this.index;
            if (key != 0L && key != Long.MIN_VALUE) {
               if (key == Long.MAX_VALUE) {
                  key = 0L;
               }

               this.value1 = (int)(key >> 32);
               this.value2 = (int)(key);
               return true;
            }
         }

         return false;
      }

      public int nextValue1() {
         return this.value1;
      }

      public int nextValue2() {
         return this.value2;
      }
   }
}
