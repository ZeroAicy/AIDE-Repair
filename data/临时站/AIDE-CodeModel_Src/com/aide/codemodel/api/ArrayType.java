package com.aide.codemodel.api;

import java.io.IOException;

import com.aide.codemodel.abstraction.Language;

import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;

public final class ArrayType extends Type {
   private final EntitySpace mySpace;
   private int myId;
   private Type myElementType;
   private int myDimension;
   
   public ArrayType(FileSpace fileSpace, EntitySpace space) {
      super(fileSpace,space, 16);
      this.mySpace = space;
   }
   
   public ArrayType(FileSpace fileSpace,EntitySpace space, Type elementType, int dimension) {
      super(fileSpace,space, 16);
      this.mySpace = space;
      this.myId = space.declareEntity(this);
      this.myElementType = elementType;
      this.myDimension = dimension;
   }

   @Override
   public void load(StoreInputStream stream) throws IOException {
      super.load(stream);
      this.myId = stream.readInt();
      this.myElementType = (Type)this.mySpace.getEntity(stream.readInt());
      this.myDimension = stream.readInt();
   }

   @Override
   public void store(StoreOutputStream stream) throws IOException {
      super.store(stream);
      stream.writeInt(this.myId);
      stream.writeInt(this.mySpace.getID(this.myElementType));
      stream.writeInt(this.myDimension);
   }

   public Type getComponentType() {
      Type type = this.getElementType();

      while(type.isArrayType()) {
         type = ((ArrayType)type).getElementType();
      }

      return type;
   }

   public int getDimension() {
      return this.myDimension;
   }

   public Type getElementType() {
      return this.myElementType;
   }

   @Override
   public Language getLanguage() {
      return this.getElementType().getLanguage();
   }

   @Override
   public int getID() {
      return this.myId;
   }
}
