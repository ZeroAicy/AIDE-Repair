package com.aide.codemodel.api;

import java.io.IOException;

import com.aide.codemodel.abstraction.Language;

import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;

public abstract class Entity {
   private final EntitySpace mySpace;
   private final FileSpace myFileSpace;
   private int myLanguageID;
   public Entity(FileSpace fileSpace,EntitySpace space) {
      myFileSpace =fileSpace;
      mySpace = space;
   }

   public void configureLanguage(Language language){
      myLanguageID = myFileSpace.getLanguageID(language);
   }

   public void load(StoreInputStream stream) throws IOException {
      myLanguageID = stream.readInt();
   }

   public void store(StoreOutputStream stream) throws IOException {
      stream.writeInt(myLanguageID);
   }

   public boolean isPrivateVisibleFrom(Entity entity) {
      if (getFile() != entity.getFile()) {
         return false;
      } else {
         return getEnclosingClassType().isEnclosedBy(entity.getEnclosingClassType());
      }
   }

   public String getHTMLString() {
      return getLanguage().getRenderer() != null ? getLanguage().getRenderer().getHTMLString(this) : "";
   }

   public int getIdentifier() {
      return 0;
   }

   public boolean isType() {
      return this instanceof Type;
   }

   public boolean isNamespace() {
      return this instanceof Namespace;
   }

   public boolean isMethodParameterTypeVariable() {
      return this instanceof MethodParameterTypeVariable;
   }

   public boolean isMember() {
      return this instanceof Member;
   }

   public boolean isArrayType() {
      return this instanceof ArrayType;
   }

   public boolean isPointerType() {
      return this instanceof PointerType;
   }

   public boolean isPrimitiveType() {
      return this instanceof PrimitiveType;
   }

   public boolean isClassType() {
      return this instanceof ClassType;
   }

   public boolean isParameterType() {
      return this instanceof ParameterType;
   }

   public boolean isMethodParameterType() {
      return this instanceof MethodParameterType;
   }

   public boolean isParameterizedType() {
      return this instanceof ParameterizedType;
   }

   public int getID() {
      return 0;
   }

   public int getModifiers() {
      return 0;
   }

   public boolean isPrivate() {
      return Modifiers.isJavaPrivate(getModifiers()) || Modifiers.isCSPrivate(getModifiers());
   }

   public boolean isFilePrivate() {
      return isPrivate();
   }

   public ClassType getEnclosingClassType() {
      return null;
   }

   public Language getLanguage() {
      return myFileSpace.getLanguage(myLanguageID);
   }

   public ClassType getEnclosingTopLevelClassType() {
      return null;
   }

   public String getDocumentationString() {
      return mySpace.getDocumentationString(this);
   }

   public String getHTMLDocumentationString() {
      return mySpace.getHTMLDocumentationString(this);
   }

   public FileEntry getFile() {
      return null;
   }

   public int getDeclarationNumber() {
      return -1;
   }

   public String getFullyQualifiedNameString() {
      return getLanguage().getRenderer() != null ? getLanguage().getRenderer().getFullyQualifiedNameString(this) : "";
   }

   public String getNameString() {
      return getLanguage().getRenderer() != null ? getLanguage().getRenderer().getNameString(this) : "";
   }

   public int getIdentifierLine() {
      return 0;
   }

   public int getIdentifierEndColumn() {
      return 0;
   }

   public int getIdentifierStartColumn() {
      return 0;
   }

   public int getModifiersStartLine() {
      return 0;
   }

   public int getModifiersEndLine() {
      return 0;
   }

   public int getModifiersEndColumn() {
      return 0;
   }

   public int getModifiersStartColumn() {
      return 0;
   }

   public int getEndColumn() {
      return 0;
   }

   public int getEndLine() {
      return 0;
   }

   public int getStartColumn() {
      return 0;
   }

   public int getStartLine() {
      return 0;
   }
}
