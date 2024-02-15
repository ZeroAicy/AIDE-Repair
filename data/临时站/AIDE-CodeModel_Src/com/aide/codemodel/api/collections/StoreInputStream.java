package com.aide.codemodel.api.collections;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

public class StoreInputStream extends DataInputStream {
   public StoreInputStream(String file, Inflater inflater) throws IOException {
      super(new BufferedInputStream(new InflaterInputStream(new FileInputStream(file), inflater)));
   }

   public void readIntArray(int[] array) throws IOException {
      for(int i = 0; i < array.length; ++i) {
         array[i] = this.readInt();
      }
   }
}
