package com.aide.codemodel.api.collections;

import java.io.IOException;
import java.util.Comparator;

import com.aide.codemodel.api.Entity;
import com.aide.codemodel.api.EntitySpace;

public class ListOf<E extends Entity> {
   private int[] values;
   private int size;
   private final EntitySpace space;

   public ListOf(EntitySpace space) {
      this.space = space;
      this.values = null;
      this.size = 0;
   }

   public ListOf(EntitySpace space, int size) {
      this.space = space;
      this.values = new int[size];
      this.size = size;
   }

   public ListOf(EntitySpace space, StoreInputStream stream) throws IOException {
      this.space = space;
      this.size = stream.readInt();
      if (this.size > 0) {
         this.values = new int[this.size];

         for(int i = 0; i < this.values.length; ++i) {
            this.values[i] = stream.readInt();
         }
      }
   }

   public boolean contains(Entity entity) {
      for(int i = 0; i < this.size(); ++i) {
         if (this.get(i) == entity) {
            return true;
         }
      }

      return false;
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

   public void push(E entity) {
      this.add(entity);
   }

   public E pop() {
      if (this.size == 0) {
         return null;
      } else {
         int value = this.values[--this.size];
         return (E)this.space.getEntity(value);
      }
   }

   public E peek() {
      return this.size == 0 ? null : this.get(this.size - 1);
   }

   public void add(E entity) {
      if (this.values == null) {
         this.values = new int[10];
      } else if (this.size >= this.values.length) {
         int[] values = new int[this.values.length * 2 + 1];
         System.arraycopy(this.values, 0, values, 0, this.values.length);
         this.values = values;
      }

      this.values[this.size++] = this.space.getID(entity);
   }

   public E get(int index) {
      if (this.values == null) {
         return null;
      } else if (index >= this.values.length) {
         return null;
      } else if (index >= this.size) {
         return null;
      } else {
         int value = this.values[index];
         return (E)this.space.getEntity(value);
      }
   }

   public void setSize(int size) {
      this.size = size;
   }

   public void set(int index, E entity) {
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

      this.values[index] = this.space.getID(entity);
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

   public void sort(Comparator<? super E> comparator) {
      this.sort(0, this.size - 1, comparator);
   }

   private void sort(int i, int j, Comparator<? super E> comp) {
      if (i < j) {
         int oldi = i;
         int oldj = j;
         int z = i + (j - i) / 2;
         E pivot = (E) this.space.getEntity(this.values[z]);

         while(i <= j) {
            while(comp.compare((E)this.space.getEntity(this.values[i]), pivot) < 0) {
               ++i;
            }

            while(comp.compare(pivot, (E)this.space.getEntity(this.values[j])) < 0) {
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
