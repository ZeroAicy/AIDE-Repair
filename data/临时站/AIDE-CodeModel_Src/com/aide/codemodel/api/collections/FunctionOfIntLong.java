package com.aide.codemodel.api.collections;

import java.io.IOException;
import java.util.Arrays;

public class FunctionOfIntLong {
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
   private int[] keys;
   private int[] oldkeys;
   private long[] values;
   private long[] oldvalues;
   private int slots;
   private int count;
   private int sizeexp;

   public FunctionOfIntLong(int size) {
      this.sizeexp = 0;

      while(SIZES[this.sizeexp] < size * 2) {
         ++this.sizeexp;
      }

      this.keys = new int[SIZES[this.sizeexp]];
      this.values = new long[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;
   }

   public FunctionOfIntLong() {
      this.sizeexp = 0;
      this.keys = new int[SIZES[this.sizeexp]];
      this.values = new long[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;
   }

   public FunctionOfIntLong(StoreInputStream stream) throws IOException {
      int count = stream.readInt();
      this.sizeexp = stream.readInt();
      this.keys = new int[SIZES[this.sizeexp]];
      this.values = new long[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;

      for(int i = 0; i < count; ++i) {
         this.put(stream.readInt(), stream.readLong());
      }
   }

   public void put(FunctionOfIntLong set) {
      for(int i = 0; i < set.keys.length; ++i) {
         int key = set.keys[i];
         if (key == Integer.MAX_VALUE) {
            this.put(0, set.values[i]);
         } else if (key != 0 && key != Integer.MIN_VALUE) {
            this.put(key, set.values[i]);
         }
      }
   }

   public void store(StoreOutputStream stream) throws IOException {
      stream.writeInt(this.count);
      stream.writeInt(this.sizeexp);

      for(int i = 0; i < this.keys.length; ++i) {
         int key = this.keys[i];
         if (key != 0 && key != Integer.MIN_VALUE) {
            stream.writeInt(this.keys[i]);
            stream.writeLong(this.values[i]);
         }
      }
   }

   public Iterator createIterator() {
      return new Iterator();
   }

   public void clear(int size) {
      if (this.slots > 0) {
         if (this.keys.length < size) {
            Arrays.fill(this.keys, 0);
         } else {
            this.sizeexp = 0;

            while(SIZES[this.sizeexp] < size * 2) {
               ++this.sizeexp;
            }

            this.keys = new int[SIZES[this.sizeexp]];
            this.values = new long[SIZES[this.sizeexp]];
         }

         this.slots = 0;
         this.count = 0;
      }
   }

   public void clear() {
      if (this.slots > 0) {
         Arrays.fill(this.keys, 0);

         this.slots = 0;
         this.count = 0;
      }
   }

   public void put(int key, long value) {
      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      int index = (key & 2147483647) % this.keys.length;
      int step = (key & 2147483647) % (this.keys.length - 2) + 1;
      int emptyIndex = -1;

      for(int curKey = this.keys[index]; curKey != 0; curKey = this.keys[index]) {
         if (curKey == key) {
            if (this.values[index] == value) {
               return;
            }

            this.keys[index] = Integer.MIN_VALUE;
            --this.count;
         } else if (curKey == Integer.MIN_VALUE) {
            emptyIndex = index;
         }

         index = (index + step) % this.keys.length;
      }

      if (emptyIndex != -1) {
         index = emptyIndex;
      }

      this.keys[index] = key;
      this.values[index] = value;
      ++this.count;
      if (emptyIndex == -1) {
         ++this.slots;
      }

      if (this.slots * 2 > this.keys.length) {
         this.rehash();
      }
   }

   public boolean contains(int key, long value) {
      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      int index = (key & 2147483647) % this.keys.length;
      int step = (key & 2147483647) % (this.keys.length - 2) + 1;

      for(int curKey = this.keys[index]; curKey != key || this.values[index] != value; curKey = this.keys[index]) {
         if (curKey == 0) {
            return false;
         }

         index = (index + step) % this.keys.length;
      }

      return true;
   }

   public void remove(int key) {
      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      int index = (key & 2147483647) % this.keys.length;
      int step = (key & 2147483647) % (this.keys.length - 2) + 1;

      for(int curKey = this.keys[index]; curKey != 0; curKey = this.keys[index]) {
         if (curKey == key) {
            this.keys[index] = Integer.MIN_VALUE;
            --this.count;
            return;
         }

         index = (index + step) % this.keys.length;
      }
   }

   public boolean contains(int key) {
      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      int step = (key & 2147483647) % (this.keys.length - 2) + 1;
      int index = (key & 2147483647) % this.keys.length;

      for(int curKey = this.keys[index]; curKey != key; curKey = this.keys[index]) {
         if (curKey == 0) {
            return false;
         }

         index = (index + step) % this.keys.length;
      }

      return true;
   }

   public long get(int key) {
      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      int step = (key & 2147483647) % (this.keys.length - 2) + 1;
      int index = (key & 2147483647) % this.keys.length;

      for(int curKey = this.keys[index]; curKey != key; curKey = this.keys[index]) {
         if (curKey == 0) {
            return -1L;
         }

         index = (index + step) % this.keys.length;
      }

      return this.values[index];
   }

   private void rehash() {
      int[] keys;
      long[] values;
      if (this.count * 2 > this.keys.length) {
         ++this.sizeexp;
         this.oldkeys = null;
         this.oldvalues = null;
         keys = new int[SIZES[this.sizeexp]];
         values = new long[SIZES[this.sizeexp]];
      } else if (this.oldkeys != null && this.oldkeys.length == this.keys.length) {
         keys = this.oldkeys;

         Arrays.fill(keys, 0);

         values = this.oldvalues;
         this.oldkeys = this.keys;
         this.oldvalues = this.values;
      } else {
         this.oldkeys = this.keys;
         this.oldvalues = this.values;
         keys = new int[SIZES[this.sizeexp]];
         values = new long[SIZES[this.sizeexp]];
      }

      int slots = 0;

      for(int i = 0; i < this.keys.length; ++i) {
         int key = this.keys[i];
         if (key != 0 && key != Integer.MIN_VALUE) {
            int step = (key & 2147483647) % (keys.length - 2) + 1;
            int index = (key & 2147483647) % keys.length;

            while(keys[index] != 0) {
               index = (index + step) % keys.length;
            }

            keys[index] = key;
            values[index] = this.values[i];
            ++slots;
         }
      }

      this.keys = keys;
      this.values = values;
      this.slots = slots;
   }

   public int size() {
      return this.count;
   }

   public class Iterator {
      private int index = 0;
      private final int step = 0;
      private int key;
      private long value;

      private Iterator() {
      }

      public void init() {
         this.index = 0;
      }

      public boolean hasMoreElements() {
         while(this.index < FunctionOfIntLong.this.keys.length) {
            this.key = FunctionOfIntLong.this.keys[this.index];
            if (this.key != 0 && this.key != Integer.MIN_VALUE) {
               if (this.key == Integer.MAX_VALUE) {
                  this.key = 0;
               }

               this.value = FunctionOfIntLong.this.values[this.index];
               ++this.index;
               return true;
            }

            ++this.index;
         }

         return false;
      }

      public int nextKey() {
         return this.key;
      }

      public long nextValue() {
         return this.value;
      }
   }
}
