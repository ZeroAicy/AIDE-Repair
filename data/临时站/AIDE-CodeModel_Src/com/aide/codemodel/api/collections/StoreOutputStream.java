package com.aide.codemodel.api.collections;

import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;

public class StoreOutputStream extends DataOutputStream {
   public StoreOutputStream(String file, Deflater deflater) throws IOException {
      super(new BufferedOutputStream(new DeflaterOutputStream(new FileOutputStream(file), deflater)));
   }

   public void writeIntArray(int[] array) throws IOException {
      for (int j : array) {
         this.writeInt(j);
      }
   }
}
