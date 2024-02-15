package com.aide.codemodel.api.collections;

import java.io.IOException;
import java.util.Arrays;

public class MapOfIntLong {
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

   public MapOfIntLong(int size) {
      this.sizeexp = 0;

      while(SIZES[this.sizeexp] < size * 2) {
         ++this.sizeexp;
      }

      this.keys = new int[SIZES[this.sizeexp]];
      this.values = new long[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;
   }

   public MapOfIntLong() {
      this.sizeexp = 0;
      this.keys = new int[SIZES[this.sizeexp]];
      this.values = new long[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;
   }

   public MapOfIntLong(StoreInputStream stream) throws IOException {
      this.count = stream.readInt();
      this.slots = stream.readInt();
      this.sizeexp = stream.readInt();
      this.keys = new int[SIZES[this.sizeexp]];

      for(int i = 0; i < this.keys.length; ++i) {
         this.keys[i] = stream.readInt();
      }

      this.values = new long[SIZES[this.sizeexp]];

      for(int i = 0; i < this.values.length; ++i) {
         this.values[i] = stream.readLong();
      }
   }

   public void store(StoreOutputStream stream) throws IOException {
      stream.writeInt(this.count);
      stream.writeInt(this.slots);
      stream.writeInt(this.sizeexp);

      for (int key : this.keys) {
         stream.writeInt(key);
      }

      for (long value : this.values) {
         stream.writeLong(value);
      }
   }

   public Iterator createIterator() {
      return new Iterator();
   }

   public void clear() {
      if (this.slots > 0) {
         Arrays.fill(this.keys, 0);

         Arrays.fill(this.values, 0L);

         this.slots = 0;
         this.count = 0;
      }
   }

   public void put(MapOfIntLong map) {
      for(int i = 0; i < map.keys.length; ++i) {
         int key = map.keys[i];
         long value = map.values[i];
         if (key == Integer.MAX_VALUE) {
            this.put(0, value);
         } else if (key != 0 && key != Integer.MIN_VALUE) {
            this.put(key, value);
         }
      }
   }

   public void put(int key, long value) {
      this.remove(key);
      this.insert(key, value);
   }

   public void insert(int key, long value) {
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

   public void remove(int key, long value) {
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
      --this.count;
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
            --this.count;
         }

         index = (index + step) % this.keys.length;
      }
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
      private int step = 0;
      private int key;
      private long value;
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
         this.step = (key & 2147483647) % (MapOfIntLong.this.keys.length - 2) + 1;
         this.index = (key & 2147483647) % MapOfIntLong.this.keys.length;
      }

      public boolean hasMoreElements() {
         if (this.step == 0) {
            while(this.index < MapOfIntLong.this.keys.length) {
               this.key = MapOfIntLong.this.keys[this.index];
               if (this.key != 0 && this.key != Integer.MIN_VALUE) {
                  if (this.key == Integer.MAX_VALUE) {
                     this.key = 0;
                  }

                  this.value = MapOfIntLong.this.values[this.index];
                  ++this.index;
                  return true;
               }

               ++this.index;
            }

            return false;
         } else {
            while(true) {
               this.key = MapOfIntLong.this.keys[this.index];
               if (this.key == 0) {
                  return false;
               }

               if (this.key == this.thekey) {
                  if (this.key == Integer.MAX_VALUE) {
                     this.key = 0;
                  }

                  this.value = MapOfIntLong.this.values[this.index];
                  this.index = (this.index + this.step) % MapOfIntLong.this.keys.length;
                  return true;
               }

               this.index = (this.index + this.step) % MapOfIntLong.this.keys.length;
            }
         }
      }

      public int nextKey() {
         return this.key;
      }

      public long nextValue() {
         return this.value;
      }
   }
}
