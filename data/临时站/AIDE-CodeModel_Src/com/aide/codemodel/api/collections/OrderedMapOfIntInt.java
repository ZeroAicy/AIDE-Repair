package com.aide.codemodel.api.collections;

import java.io.IOException;
import java.util.Arrays;

public class OrderedMapOfIntInt {
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
   private boolean[] secondelements;
   private boolean[] oldsecondelements;
   private int slots;
   private int count;
   private int sizeexp;

   public OrderedMapOfIntInt(int size) {
      this.sizeexp = 0;

      while(SIZES[this.sizeexp] < size * 2) {
         ++this.sizeexp;
      }

      this.keys = new int[SIZES[this.sizeexp]];
      this.values = new int[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;
   }

   public OrderedMapOfIntInt() {
      this.sizeexp = 0;
      this.keys = new int[SIZES[this.sizeexp]];
      this.values = new int[SIZES[this.sizeexp]];
      this.slots = 0;
      this.count = 0;
   }

   public OrderedMapOfIntInt(StoreInputStream stream) throws IOException {
      this.count = stream.readInt();
      this.slots = stream.readInt();
      this.sizeexp = stream.readInt();
      this.keys = new int[SIZES[this.sizeexp]];

      for(int i = 0; i < this.keys.length; ++i) {
         this.keys[i] = stream.readInt();
      }

      this.values = new int[SIZES[this.sizeexp]];

      for(int i = 0; i < this.values.length; ++i) {
         this.values[i] = stream.readInt();
      }

      if (stream.readBoolean()) {
         this.secondelements = new boolean[SIZES[this.sizeexp]];

         for(int i = 0; i < this.secondelements.length; ++i) {
            this.secondelements[i] = stream.readBoolean();
         }
      }
   }

   public void store(StoreOutputStream stream) throws IOException {
      stream.writeInt(this.count);
      stream.writeInt(this.slots);
      stream.writeInt(this.sizeexp);

      for (int key : this.keys) {
         stream.writeInt(key);
      }

      for (int value : this.values) {
         stream.writeInt(value);
      }

      stream.writeBoolean(this.secondelements != null);
      if (this.secondelements != null) {
         for (boolean secondelement : this.secondelements) {
            stream.writeBoolean(secondelement);
         }
      }
   }

   public Iterator createIterator() {
      return new Iterator();
   }

   public void clear() {
      if (this.slots > 0) {
         Arrays.fill(this.keys, 0);

         if (this.secondelements != null) {
            Arrays.fill(this.secondelements, false);
         }

         this.slots = 0;
         this.count = 0;
      }
   }

   public void insert(OrderedMapOfIntInt map) {
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

   public void put(int key, int value) {
      this.remove(key);
      this.insert(key, value);
   }

   public void insert(int key, int value) {
      if (key == 0) {
         key = Integer.MAX_VALUE;
      }

      int index = (key & 2147483647) % this.keys.length;
      int step = (key & 2147483647) % (this.keys.length - 2) + 1;
      boolean second = false;

      for(int curKey = this.keys[index]; curKey != 0; curKey = this.keys[index]) {
         if (curKey == key) {
            if (this.values[index] == value) {
               return;
            }

            second = true;
         }

         index = (index + step) % this.keys.length;
      }

      this.keys[index] = key;
      this.values[index] = value;
      if (second) {
         if (this.secondelements == null) {
            this.secondelements = new boolean[this.keys.length];
         }

         this.secondelements[index] = true;
      }

      ++this.count;
      ++this.slots;
      if (this.slots * 2 > this.keys.length) {
         this.rehash();
      }
   }

   public boolean contains(int key, int value) {
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

   public int get(int key) {
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
      boolean[] secondelements;
      if (this.count * 2 > this.keys.length) {
         ++this.sizeexp;
         this.oldkeys = null;
         this.oldvalues = null;
         this.oldsecondelements = null;
         keys = new int[SIZES[this.sizeexp]];
         values = new int[SIZES[this.sizeexp]];
         if (this.secondelements != null) {
            secondelements = new boolean[SIZES[this.sizeexp]];
         } else {
            secondelements = null;
         }
      } else if (this.oldkeys != null && this.oldkeys.length == this.keys.length) {
         keys = this.oldkeys;

         Arrays.fill(keys, 0);

         if (this.oldsecondelements != null) {
            secondelements = this.oldsecondelements;

            Arrays.fill(secondelements, false);
         } else {
            secondelements = null;
         }

         values = this.oldvalues;
         this.oldkeys = this.keys;
         this.oldvalues = this.values;
         this.oldsecondelements = this.secondelements;
      } else {
         this.oldkeys = this.keys;
         this.oldvalues = this.values;
         this.oldsecondelements = this.secondelements;
         keys = new int[SIZES[this.sizeexp]];
         values = new int[SIZES[this.sizeexp]];
         if (this.secondelements != null) {
            secondelements = new boolean[SIZES[this.sizeexp]];
         } else {
            secondelements = null;
         }
      }

      int slots = 0;
      if (this.secondelements == null) {
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
      } else {
         for(int i = 0; i < this.keys.length; ++i) {
            int key = this.keys[i];
            if (key != 0 && key != Integer.MIN_VALUE) {
               int step = (key & 2147483647) % (keys.length - 2) + 1;
               int index = (key & 2147483647) % keys.length;
               if (!this.secondelements[i]) {
                  while(keys[index] != 0) {
                     index = (index + step) % keys.length;
                  }

                  keys[index] = key;
                  values[index] = this.values[i];
                  ++slots;
                  int oldstep = (key & 2147483647) % (this.keys.length - 2) + 1;

                  for(int oldindex = (key & 2147483647) % this.keys.length; this.keys[oldindex] != 0; oldindex = (oldindex + oldstep) % this.keys.length) {
                     if (this.keys[oldindex] == key && oldindex != i) {
                        while(keys[index] != 0) {
                           index = (index + step) % keys.length;
                        }

                        keys[index] = key;
                        values[index] = this.values[oldindex];
                        if (secondelements != null) {
                           secondelements[index] = true;
                        }

                        ++slots;
                     }
                  }
               }
            }
         }
      }

      this.secondelements = secondelements;
      this.keys = keys;
      this.values = values;
      this.slots = slots;
   }

   public int size() {
      return this.count;
   }

   public class Iterator {
      private int index;
      private int step;
      private int newindex;
      private int newstep;
      private int key;
      private int value;
      private int thekey;

      private Iterator() {
         if (OrderedMapOfIntInt.this.secondelements == null) {
            this.index = 0;
            this.step = -1;
         } else {
            this.index = 0;
            this.step = 0;
            this.newstep = 0;
         }
      }

      public void init() {
         if (OrderedMapOfIntInt.this.secondelements == null) {
            this.index = 0;
            this.step = -1;
         } else {
            this.index = 0;
            this.step = 0;
            this.newstep = 0;
         }
      }

      public void init(int key) {
         if (key == 0) {
            key = Integer.MAX_VALUE;
         }

         this.thekey = key;
         this.step = (key & 2147483647) % (OrderedMapOfIntInt.this.keys.length - 2) + 1;
         this.index = (key & 2147483647) % OrderedMapOfIntInt.this.keys.length;
      }

      public boolean hasMoreElements() {
         if (this.step == 0) {
            if (this.newstep == 0) {
               while(this.index < OrderedMapOfIntInt.this.keys.length) {
                  this.key = OrderedMapOfIntInt.this.keys[this.index];
                  if (!OrderedMapOfIntInt.this.secondelements[this.index] && this.key != 0 && this.key != Integer.MIN_VALUE) {
                     this.newstep = (this.key & 2147483647) % (OrderedMapOfIntInt.this.keys.length - 2) + 1;
                     this.newindex = (this.key & 2147483647) % OrderedMapOfIntInt.this.keys.length;
                     this.thekey = this.key;
                     ++this.index;
                     return this.hasMoreElements();
                  }

                  ++this.index;
               }

               return false;
            } else {
               while(true) {
                  this.key = OrderedMapOfIntInt.this.keys[this.newindex];
                  if (this.key == 0) {
                     this.newstep = 0;
                     return this.hasMoreElements();
                  }

                  if (this.key == this.thekey) {
                     if (this.key == Integer.MAX_VALUE) {
                        this.key = 0;
                     }

                     this.value = OrderedMapOfIntInt.this.values[this.newindex];
                     this.newindex = (this.newindex + this.newstep) % OrderedMapOfIntInt.this.keys.length;
                     return true;
                  }

                  this.newindex = (this.newindex + this.newstep) % OrderedMapOfIntInt.this.keys.length;
               }
            }
         } else if (this.step == -1) {
            while(this.index < OrderedMapOfIntInt.this.keys.length) {
               this.key = OrderedMapOfIntInt.this.keys[this.index];
               if (this.key != 0 && this.key != Integer.MIN_VALUE) {
                  if (this.key == Integer.MAX_VALUE) {
                     this.key = 0;
                  }

                  this.value = OrderedMapOfIntInt.this.values[this.index];
                  ++this.index;
                  return true;
               }

               ++this.index;
            }

            return false;
         } else {
            while(true) {
               this.key = OrderedMapOfIntInt.this.keys[this.index];
               if (this.key == 0) {
                  return false;
               }

               if (this.key == this.thekey) {
                  if (this.key == Integer.MAX_VALUE) {
                     this.key = 0;
                  }

                  this.value = OrderedMapOfIntInt.this.values[this.index];
                  this.index = (this.index + this.step) % OrderedMapOfIntInt.this.keys.length;
                  return true;
               }

               this.index = (this.index + this.step) % OrderedMapOfIntInt.this.keys.length;
            }
         }
      }

      public int nextKey() {
         return this.key;
      }

      public int nextValue() {
         return this.value;
      }
   }
}
