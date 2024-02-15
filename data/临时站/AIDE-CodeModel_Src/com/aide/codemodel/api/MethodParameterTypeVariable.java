package com.aide.codemodel.api;

import static com.aide.codemodel.api.TypeSemantic.UNKNOWN_SEMANTIC;

import java.io.IOException;

import com.aide.codemodel.abstraction.Language;

import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;

public final class MethodParameterTypeVariable extends Type {
   private final EntitySpace mySpace;
   private int myEntity;
   private MethodParameterType myMethodParameterType;

   public MethodParameterTypeVariable(FileSpace fileSpace, EntitySpace space) {
      super(fileSpace,space, UNKNOWN_SEMANTIC);
      this.mySpace = space;
   }

   public MethodParameterTypeVariable(FileSpace fileSpace,EntitySpace space, MethodParameterType methodParameterType) {
      super(fileSpace,space, UNKNOWN_SEMANTIC);
      this.mySpace = space;
      this.myEntity = space.declareEntity(this);
      this.myMethodParameterType = methodParameterType;
   }

   @Override
   public void load(StoreInputStream stream) throws IOException {
      super.load(stream);
      this.myEntity = stream.readInt();
      this.myMethodParameterType = (MethodParameterType)this.mySpace.getEntity(stream.readInt());
   }

   @Override
   public int getID() {
      return this.myEntity;
   }

   @Override
   public void store(StoreOutputStream stream) throws IOException {
      super.store(stream);
      stream.writeInt(this.myEntity);
      stream.writeInt(this.mySpace.getID(this.myMethodParameterType));
   }

   @Override
   public Language getLanguage() {
      return this.getMethodParameterType().getLanguage();
   }

   public MethodParameterType getMethodParameterType() {
      return this.myMethodParameterType;
   }
}
