package com.aide.codemodel.api.collections;

import java.io.IOException;
import java.util.Arrays;

import com.aide.codemodel.api.Entity;
import com.aide.codemodel.api.EntitySpace;

public class MapOfInt<E extends Entity> {
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

   public MapOfInt(EntitySpace space, int size) {
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

   public MapOfInt(EntitySpace space) {
      this.space = space;
      this.sizeexp = 0;
      this.keys = new int[SIZES[this.sizeexp]];
      this.values = new int[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;
   }

   public MapOfInt(EntitySpace space, StoreInputStream stream) throws IOException {
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

   public E get() {
      int index = 0;

      while(index < this.keys.length) {
         int key = this.keys[index];
         ++index;
         if (key != 0 && key != Integer.MIN_VALUE) {
            return (E)this.space.getEntity(this.values[index]);
         }
      }

      return null;
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

   public void insert(MapOfInt<? extends E> map) {
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

   public void put(int identifier, E entity) {
      this.put(identifier, this.space.getID(entity));
   }

   private void put(int identifier, int value) {
      if (identifier == 0) {
         identifier = Integer.MAX_VALUE;
      }

      int index = (identifier & 2147483647) % this.keys.length;
      int step = (identifier & 2147483647) % (this.keys.length - 2) + 1;
      boolean inserted = false;
      int emptyIndex = -1;

      for(int curKey = this.keys[index]; curKey != 0; curKey = this.keys[index]) {
         if (curKey == identifier) {
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

         this.keys[index] = identifier;
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

   public void insert(int identifier, E entity) {
      this.insert(identifier, this.space.getID(entity));
   }

   private void insert(int identifier, int value) {
      if (identifier == 0) {
         identifier = Integer.MAX_VALUE;
      }

      int index = (identifier & 2147483647) % this.keys.length;
      int step = (identifier & 2147483647) % (this.keys.length - 2) + 1;
      boolean inserted = false;
      int emptyIndex = -1;

      for(int curKey = this.keys[index]; curKey != 0; curKey = this.keys[index]) {
         if (curKey == identifier) {
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

         this.keys[index] = identifier;
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

   public boolean contains(int identifier, Entity entity) {
      int value = this.space.getID(entity);
      if (identifier == 0) {
         identifier = Integer.MAX_VALUE;
      }

      int index = (identifier & 2147483647) % this.keys.length;
      int step = (identifier & 2147483647) % (this.keys.length - 2) + 1;

      for(int curKey = this.keys[index]; curKey != identifier || this.values[index] != value; curKey = this.keys[index]) {
         if (curKey == 0) {
            return false;
         }

         index = (index + step) % this.keys.length;
      }

      return true;
   }

   public void remove(int identifier, Entity entity) {
      int value = this.space.getID(entity);
      if (identifier == 0) {
         identifier = Integer.MAX_VALUE;
      }

      int index = (identifier & 2147483647) % this.keys.length;
      int step = (identifier & 2147483647) % (this.keys.length - 2) + 1;

      for(int curKey = this.keys[index]; curKey != 0; curKey = this.keys[index]) {
         if (curKey == identifier && this.values[index] == value) {
            this.keys[index] = Integer.MIN_VALUE;
            --this.count;
         }

         index = (index + step) % this.keys.length;
      }
   }

   public void remove(int identifier) {
      if (identifier == 0) {
         identifier = Integer.MAX_VALUE;
      }

      int index = (identifier & 2147483647) % this.keys.length;
      int step = (identifier & 2147483647) % (this.keys.length - 2) + 1;

      for(int curKey = this.keys[index]; curKey != 0; curKey = this.keys[index]) {
         if (curKey == identifier) {
            this.keys[index] = Integer.MIN_VALUE;
            --this.count;
         }

         index = (index + step) % this.keys.length;
      }
   }

   public boolean contains(int identifier) {
      if (identifier == 0) {
         identifier = Integer.MAX_VALUE;
      }

      int step = (identifier & 2147483647) % (this.keys.length - 2) + 1;
      int index = (identifier & 2147483647) % this.keys.length;

      for(int curKey = this.keys[index]; curKey != identifier; curKey = this.keys[index]) {
         if (curKey == 0) {
            return false;
         }

         index = (index + step) % this.keys.length;
      }

      return true;
   }

   public int count(int identifier) {
      if (identifier == 0) {
         identifier = Integer.MAX_VALUE;
      }

      int count = 0;
      int step = (identifier & 2147483647) % (this.keys.length - 2) + 1;
      int index = (identifier & 2147483647) % this.keys.length;

      for(int curKey = this.keys[index]; curKey != 0; curKey = this.keys[index]) {
         if (curKey == identifier) {
            ++count;
         }

         index = (index + step) % this.keys.length;
      }

      return count;
   }

   public E get(int identifier) {
      if (identifier == 0) {
         identifier = Integer.MAX_VALUE;
      }

      int step = (identifier & 2147483647) % (this.keys.length - 2) + 1;
      int index = (identifier & 2147483647) % this.keys.length;

      for(int curKey = this.keys[index]; curKey != identifier; curKey = this.keys[index]) {
         if (curKey == 0) {
            return null;
         }

         index = (index + step) % this.keys.length;
      }

      return (E)this.space.getEntity(this.values[index]);
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

      public void init(int identifier) {
         if (identifier == 0) {
            identifier = Integer.MAX_VALUE;
         }

         this.thekey = identifier;
         this.step = (identifier & 2147483647) % (MapOfInt.this.keys.length - 2) + 1;
         this.index = (identifier & 2147483647) % MapOfInt.this.keys.length;
      }

      public boolean hasMoreElements() {
         if (this.step == 0) {
            while(this.index < MapOfInt.this.keys.length) {
               this.key = MapOfInt.this.keys[this.index];
               if (this.key != 0 && this.key != Integer.MIN_VALUE) {
                  if (this.key == Integer.MAX_VALUE) {
                     this.key = 0;
                  }

                  this.value = MapOfInt.this.values[this.index];
                  ++this.index;
                  return true;
               }

               ++this.index;
            }

            return false;
         } else {
            while(true) {
               this.key = MapOfInt.this.keys[this.index];
               if (this.key == 0) {
                  return false;
               }

               if (this.key == this.thekey) {
                  if (this.key == Integer.MAX_VALUE) {
                     this.key = 0;
                  }

                  this.value = MapOfInt.this.values[this.index];
                  this.index = (this.index + this.step) % MapOfInt.this.keys.length;
                  return true;
               }

               this.index = (this.index + this.step) % MapOfInt.this.keys.length;
            }
         }
      }

      public int nextKey() {
         return this.key;
      }

      public E nextValue() {
         return (E)MapOfInt.this.space.getEntity(this.value);
      }
   }
}
