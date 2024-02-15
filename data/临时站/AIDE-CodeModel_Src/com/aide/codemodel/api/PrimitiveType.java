package com.aide.codemodel.api;

import java.io.IOException;

import com.aide.codemodel.abstraction.Language;

import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;

public final class PrimitiveType extends Type {
   private final FileSpace myFileSpace;
   private final EntitySpace mySpace;
   private int myEntity;
   private int myLanguageID;

   public PrimitiveType(EntitySpace space, FileSpace fileSpace, int semantic, Language language) {
      super(fileSpace,space, semantic);
      this.myFileSpace = fileSpace;
      this.mySpace = space;
      this.myLanguageID = fileSpace.getLanguageID(language);
      this.myEntity = space.declareEntity(this);
   }
   
   public PrimitiveType(EntitySpace space, FileSpace filespace) {
      super(filespace,space);
      this.myFileSpace = filespace;
      this.mySpace = space;
   }

   @Override
   public void load(StoreInputStream stream) throws IOException {
      super.load(stream);
      this.myEntity = stream.readInt();
      this.myLanguageID = stream.readInt();
   }

   @Override
   public void store(StoreOutputStream stream) throws IOException {
      super.store(stream);
      stream.writeInt(this.myEntity);
      stream.writeInt(this.myLanguageID);
   }

   @Override
   public int getID() {
      return this.myEntity;
   }

   @Override
   public Language getLanguage() {
      return this.myFileSpace.getLanguage(this.myLanguageID);
   }
}
