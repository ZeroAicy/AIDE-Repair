package com.aide.codemodel.api.collections;

import java.util.Arrays;

public class HashtableOfInt<T> {
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
   private T[] values;
   private T[] oldvalues;
   private int slots;
   private int count;
   private int sizeexp = 0;

   public HashtableOfInt(int size) {
      while(SIZES[this.sizeexp] < size * 2) {
         ++this.sizeexp;
      }

      this.keys = new int[SIZES[this.sizeexp]];
      this.values = (T[])(new Object[SIZES[this.sizeexp]]);
      this.slots = 0;
      this.count = 0;
   }

   public HashtableOfInt() {
      this.keys = new int[SIZES[this.sizeexp]];
      this.values = (T[])(new Object[SIZES[this.sizeexp]]);
      this.slots = 0;
      this.count = 0;
   }

   public Iterator createIterator() {
      return new Iterator();
   }

   public void clear() {
      Arrays.fill(this.keys, 0);

      Arrays.fill(this.values, null);

      this.slots = 0;
      this.count = 0;
      this.oldvalues = null;
      this.oldkeys = null;
   }

   public void put(int key, T value) {
      this.remove(key);
      this.insert(key, value);
   }

   public void insert(int key, T value) {
      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      int index = (key & 2147483647) % this.keys.length;
      int step = (key & 2147483647) % (this.keys.length - 2) + 1;
      boolean inserted = false;
      int emptyIndex = -1;

      for(int curKey = this.keys[index]; curKey != 0; curKey = this.keys[index]) {
         if (curKey == key) {
            if (this.values[index] == value) {
               return;
            }
         } else if (curKey == Integer.MIN_VALUE) {
            emptyIndex = index;
         }

         index = (index + step) % this.keys.length;
      }

      if (!inserted) {
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
   }

   public void remove(int key, T value) {
      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      int index = (key & 2147483647) % this.keys.length;
      int step = (key & 2147483647) % (this.keys.length - 2) + 1;

      for(int curKey = this.keys[index]; curKey != key || this.values[index] != value; curKey = this.keys[index]) {
         if (curKey == 0) {
            return;
         }

         index = (index + step) % this.keys.length;
      }

      this.keys[index] = Integer.MIN_VALUE;
      this.values[index] = null;
      --this.count;
   }

   public boolean contains(int key, T value) {
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

   public int count(int key) {
      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      int count = 0;
      int step = (key & 2147483647) % (this.keys.length - 2) + 1;
      int index = (key & 2147483647) % this.keys.length;

      for(int curKey = this.keys[index]; curKey != 0; curKey = this.keys[index]) {
         if (curKey == key) {
            ++count;
         }

         index = (index + step) % this.keys.length;
      }

      return count;
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
            this.values[index] = null;
            --this.count;
         }

         index = (index + step) % this.keys.length;
      }
   }

   public T get(int key) {
      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      int step = (key & 2147483647) % (this.keys.length - 2) + 1;
      int index = (key & 2147483647) % this.keys.length;

      for(int curKey = this.keys[index]; curKey != key; curKey = this.keys[index]) {
         if (curKey == 0) {
            return null;
         }

         index = (index + step) % this.keys.length;
      }

      return this.values[index];
   }

   private void rehash() {
      int[] keys;
      T[] values;
      if (this.count * 2 > this.keys.length) {
         ++this.sizeexp;
         this.oldkeys = null;
         this.oldvalues = null;
         keys = new int[SIZES[this.sizeexp]];
         values = (T[])(new Object[SIZES[this.sizeexp]]);
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
         values = (T[])(new Object[SIZES[this.sizeexp]]);
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
      if (this.oldvalues != null) {
         Arrays.fill(this.oldvalues, null);
      }
   }

   public int size() {
      return this.count;
   }

   public class Iterator {
      private int index = 0;
      private int step = 0;
      private int key;
      private T value;
      private int thekey;

      private Iterator() {
      }

      public void init() {
         this.index = 0;
         this.step = 0;
      }

      public void init(int key) {
         if (key == 0) {
            key = Integer.MAX_VALUE;
         }

         this.thekey = key;
         this.step = (key & 2147483647) % (HashtableOfInt.this.keys.length - 2) + 1;
         this.index = (key & 2147483647) % HashtableOfInt.this.keys.length;
      }

      public boolean hasMoreElements() {
         if (this.step == 0) {
            while(this.index < HashtableOfInt.this.keys.length) {
               this.key = HashtableOfInt.this.keys[this.index];
               if (this.key != 0 && this.key != Integer.MIN_VALUE) {
                  if (this.key == Integer.MAX_VALUE) {
                     this.key = 0;
                  }

                  this.value = HashtableOfInt.this.values[this.index];
                  ++this.index;
                  return true;
               }

               ++this.index;
            }

            return false;
         } else {
            while(true) {
               this.key = HashtableOfInt.this.keys[this.index];
               if (this.key == 0) {
                  return false;
               }

               if (this.key == this.thekey) {
                  if (this.key == Integer.MAX_VALUE) {
                     this.key = 0;
                  }

                  this.value = HashtableOfInt.this.values[this.index];
                  this.index = (this.index + this.step) % HashtableOfInt.this.keys.length;
                  return true;
               }

               this.index = (this.index + this.step) % HashtableOfInt.this.keys.length;
            }
         }
      }

      public int nextKey() {
         return this.key;
      }

      public T nextValue() {
         return this.value;
      }
   }
}
