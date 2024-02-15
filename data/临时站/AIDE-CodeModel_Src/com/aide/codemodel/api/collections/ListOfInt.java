package com.aide.codemodel.api.collections;

import java.io.IOException;
import java.util.Comparator;

public class ListOfInt {
   private int[] values;
   private int size;

   public ListOfInt() {
      this.values = null;
      this.size = 0;
   }

   public ListOfInt(int size) {
      this.values = new int[size];
      this.size = size;
   }

   public ListOfInt(StoreInputStream stream) throws IOException {
      this.size = stream.readInt();
      if (this.size > 0) {
         this.values = new int[this.size];

         for(int i = 0; i < this.values.length; ++i) {
            this.values[i] = stream.readInt();
         }
      }
   }

   public void store(StoreOutputStream stream) throws IOException {
      if (this.values == null) {
         stream.writeInt(0);
      } else {
         stream.writeInt(this.size);

         for(int i = 0; i < this.size; ++i) {
            stream.writeInt(this.values[i]);
         }
      }
   }

   public void clear() {
      this.size = 0;
   }

   public void push(int value) {
      this.add(value);
   }

   public int[] toIntArray() {
      int[] a = new int[this.size()];
      if (this.size() > 0) {
         System.arraycopy(this.values, 0, a, 0, this.size());
      }

      return a;
   }

   public void add(int value) {
      if (this.values == null) {
         this.values = new int[10];
      } else if (this.size >= this.values.length) {
         int[] values = new int[this.values.length * 2 + 1];
         System.arraycopy(this.values, 0, values, 0, this.values.length);
         this.values = values;
      }

      this.values[this.size++] = value;
   }

   public int pop() {
      return this.size == 0 ? -1 : this.values[--this.size];
   }

   public int peek() {
      return this.size == 0 ? -1 : this.get(this.size - 1);
   }

   public int get(int index) {
      if (this.values == null) {
         return -1;
      } else if (index >= this.values.length) {
         return -1;
      } else {
         return index >= this.size ? -1 : this.values[index];
      }
   }

   public void setSize(int size) {
      this.size = size;
   }

   public void set(int index, int value) {
      if (this.values == null) {
         this.values = new int[Math.max(10, index + 1)];
      } else if (index >= this.values.length) {
         int[] values = new int[Math.max(index + 1, this.values.length * 2 + 1)];
         System.arraycopy(this.values, 0, values, 0, this.values.length);
         this.values = values;
      }

      if (index >= this.size) {
         this.size = index + 1;
      }

      this.values[index] = value;
   }

   public void remove(int index) {
      if (this.values != null) {
         if (index < this.size) {
            System.arraycopy(this.values, index + 1, this.values, index, this.size - index - 1);
            --this.size;
         }
      }
   }

   public int size() {
      return this.size;
   }

   public int firstindexof(int value) {
      return this.firstindexof(value, 0);
   }

   public int firstindexof(int value, int fromIndex) {
      if (this.values != null) {
         for (int i = fromIndex; i < this.size; ++i) {
            if (this.values[i] == value) {
               return i;
            }
         }

      }
      return -1;
   }

   public void sort() {
      this.sort(0, this.size - 1);
   }

   private void sort(int i, int j) {
      if (i < j) {
         int oldi = i;
         int oldj = j;
         int z = i + (j - i) / 2;
         int pivot = this.values[z];

         while(i <= j) {
            while(this.values[i] < pivot) {
               ++i;
            }

            while(pivot < this.values[j]) {
               --j;
            }

            if (i <= j) {
               int temp = this.values[j];
               this.values[j] = this.values[i];
               this.values[i] = temp;
               ++i;
               --j;
            }
         }

         this.sort(oldi, j);
         this.sort(i, oldj);
      }
   }

   public void sort(Comparator<Integer> comp) {
      this.sort(0, this.size - 1, comp);
   }

   private void sort(int i, int j, Comparator<Integer> comp) {
      if (i < j) {
         int oldi = i;
         int oldj = j;
         int z = i + (j - i) / 2;
         int pivot = this.values[z];

         while(i <= j) {
            while(comp.compare(this.values[i], pivot) < 0) {
               ++i;
            }

            while(comp.compare(pivot, this.values[j]) < 0) {
               --j;
            }

            if (i <= j) {
               int temp = this.values[j];
               this.values[j] = this.values[i];
               this.values[i] = temp;
               ++i;
               --j;
            }
         }

         this.sort(oldi, j, comp);
         this.sort(i, oldj, comp);
      }
   }
}
