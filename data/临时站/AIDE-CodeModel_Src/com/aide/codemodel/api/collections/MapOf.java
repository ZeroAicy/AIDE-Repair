package com.aide.codemodel.api.collections;

import java.io.IOException;
import java.util.Arrays;

import com.aide.codemodel.api.Entity;
import com.aide.codemodel.api.EntitySpace;

public class MapOf<K extends Entity, V extends Entity> {
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
   private int[] values;
   private int[] oldvalues;
   private int slots;
   private int count;
   private int sizeexp;
   private final EntitySpace space;

   public MapOf(EntitySpace space, int size) {
      this.space = space;
      this.sizeexp = 0;

      while(SIZES[this.sizeexp] < size * 2) {
         ++this.sizeexp;
      }

      this.keys = new int[SIZES[this.sizeexp]];
      this.values = new int[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;
   }

   public MapOf(EntitySpace space) {
      this.space = space;
      this.sizeexp = 0;
      this.keys = new int[SIZES[this.sizeexp]];
      this.values = new int[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;
   }

   public MapOf(EntitySpace space, StoreInputStream stream) throws IOException {
      this.space = space;
      int count = stream.readInt();
      this.sizeexp = stream.readInt();
      this.keys = new int[SIZES[this.sizeexp]];
      this.values = new int[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;

      for(int i = 0; i < count; ++i) {
         this.insert(stream.readInt(), stream.readInt());
      }
   }

   public void store(StoreOutputStream stream) throws IOException {
      stream.writeInt(this.count);
      stream.writeInt(this.sizeexp);

      for(int i = 0; i < this.keys.length; ++i) {
         int key = this.keys[i];
         if (key != 0 && key != Integer.MIN_VALUE) {
            stream.writeInt(this.keys[i]);
            stream.writeInt(this.values[i]);
         }
      }
   }

   public Iterator createIterator() {
      return new Iterator();
   }

   public void clear() {
      if (this.slots > 0) {
         Arrays.fill(this.keys, 0);

         this.slots = 0;
         this.count = 0;
      }
   }

   public void insert(MapOf<? extends K, ? extends V> map) {
      for(int i = 0; i < map.keys.length; ++i) {
         int key = map.keys[i];
         int value = map.values[i];
         if (key == Integer.MAX_VALUE) {
            this.insert(0, value);
         } else if (key != 0 && key != Integer.MIN_VALUE) {
            this.insert(key, value);
         }
      }
   }

   public void put(K k, V v) {
      this.put(this.space.getID(k), this.space.getID(v));
   }

   private void put(int key, int value) {
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
               inserted = true;
            } else {
               this.keys[index] = Integer.MIN_VALUE;
               --this.count;
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

   public void insert(K k, V v) {
      this.insert(this.space.getID(k), this.space.getID(v));
   }

   private void insert(int key, int value) {
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

   public boolean contains(K key, V value) {
      return this.contains(this.space.getID(key), this.space.getID(value));
   }

   private boolean contains(int key, int value) {
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

   public void remove(K key, V value) {
      this.remove(this.space.getID(key), this.space.getID(value));
   }

   private void remove(int key, int value) {
      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      int index = (key & 2147483647) % this.keys.length;
      int step = (key & 2147483647) % (this.keys.length - 2) + 1;

      for(int curKey = this.keys[index]; curKey != 0; curKey = this.keys[index]) {
         if (curKey == key && this.values[index] == value) {
            this.keys[index] = Integer.MIN_VALUE;
            --this.count;
         }

         index = (index + step) % this.keys.length;
      }
   }

   public void remove(K key) {
      this.remove(this.space.getID(key));
   }

   private void remove(int key) {
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

   public boolean contains(K key) {
      return this.contains(this.space.getID(key));
   }

   private boolean contains(int key) {
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

   public int count(K key) {
      return this.count(this.space.getID(key));
   }

   private int count(int key) {
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

   public K get() {
      int index = 0;

      while(index < this.keys.length) {
         int key = this.keys[index];
         ++index;
         if (key != 0 && key != Integer.MIN_VALUE) {
            if (key == Integer.MAX_VALUE) {
               key = 0;
            }

            return (K)this.space.getEntity(key);
         }
      }

      return null;
   }

   public V get(K key) {
      return (V)this.space.getEntity(this.get(this.space.getID(key)));
   }

   private int get(int key) {
      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      int step = (key & 2147483647) % (this.keys.length - 2) + 1;
      int index = (key & 2147483647) % this.keys.length;

      for(int curKey = this.keys[index]; curKey != key; curKey = this.keys[index]) {
         if (curKey == 0) {
            return -1;
         }

         index = (index + step) % this.keys.length;
      }

      return this.values[index];
   }

   private void rehash() {
      int[] keys;
      int[] values;
      if (this.count * 2 > this.keys.length) {
         ++this.sizeexp;
         this.oldkeys = null;
         this.oldvalues = null;
         keys = new int[SIZES[this.sizeexp]];
         values = new int[SIZES[this.sizeexp]];
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
         values = new int[SIZES[this.sizeexp]];
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
      private int value;
      private int thekey;

      private Iterator() {
      }

      public void init() {
         this.index = 0;
         this.step = 0;
      }

      public void init(K k) {
         int key = MapOf.this.space.getID(k);
         if (key == 0) {
            key = Integer.MAX_VALUE;
         }

         this.thekey = key;
         this.step = (key & 2147483647) % (MapOf.this.keys.length - 2) + 1;
         this.index = (key & 2147483647) % MapOf.this.keys.length;
      }

      public boolean hasMoreElements() {
         if (this.step == 0) {
            while(this.index < MapOf.this.keys.length) {
               this.key = MapOf.this.keys[this.index];
               if (this.key != 0 && this.key != Integer.MIN_VALUE) {
                  if (this.key == Integer.MAX_VALUE) {
                     this.key = 0;
                  }

                  this.value = MapOf.this.values[this.index];
                  ++this.index;
                  return true;
               }

               ++this.index;
            }

            return false;
         } else {
            while(true) {
               this.key = MapOf.this.keys[this.index];
               if (this.key == 0) {
                  return false;
               }

               if (this.key == this.thekey) {
                  if (this.key == Integer.MAX_VALUE) {
                     this.key = 0;
                  }

                  this.value = MapOf.this.values[this.index];
                  this.index = (this.index + this.step) % MapOf.this.keys.length;
                  return true;
               }

               this.index = (this.index + this.step) % MapOf.this.keys.length;
            }
         }
      }

      public K nextKey() {
         return (K)MapOf.this.space.getEntity(this.key);
      }

      public V nextValue() {
         return (V)MapOf.this.space.getEntity(this.value);
      }
   }
}
