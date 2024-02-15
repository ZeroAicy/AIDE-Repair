package com.aide.codemodel.api;

import static com.aide.codemodel.api.TypeSemantic.UNKNOWN_SEMANTIC;

import java.io.IOException;

import com.aide.codemodel.abstraction.Language;

import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;

public final class PointerType extends Type {
   private final EntitySpace mySpace;
   private int myID;
   private Type myType;
   
   public PointerType(FileSpace fileSpace, EntitySpace space) {
      super(fileSpace,space, UNKNOWN_SEMANTIC);
      this.mySpace = space;
   }
   
   public PointerType(FileSpace fileSpace,EntitySpace space, Type type) {
      super(fileSpace,space, UNKNOWN_SEMANTIC);
      this.mySpace = space;
      this.myID = space.declareEntity(this);
      this.myType = type;
   }

   @Override
   public void load(StoreInputStream stream) throws IOException {
      super.load(stream);
      this.myID = stream.readInt();
      this.myType = (Type)this.mySpace.getEntity(stream.readInt());
   }

   @Override
   public void store(StoreOutputStream stream) throws IOException {
      super.store(stream);
      stream.writeInt(this.myID);
      stream.writeInt(this.mySpace.getID(this.myType));
   }

   public Type getType() {
      return this.myType;
   }

   @Override
   public int getID() {
      return this.myID;
   }

   @Override
   public Language getLanguage() {
      return this.getType().getLanguage();
   }
}
