package com.aide.codemodel.api;

import static com.aide.codemodel.api.TypeSemantic.UNKNOWN_SEMANTIC;

import java.io.IOException;

import com.aide.codemodel.abstraction.Language;

import com.aide.codemodel.api.collections.ListOf;
import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;
import com.aide.codemodel.api.excpetions.UnknownEntityException;

public final class ParameterType extends Type {
   private int myID;
   private final EntitySpace mySpace;
   private final IdentifierSpace myIdentifiers;
   private final FileSpace myFileSpace;
   private FileEntry myFile;
   private int myDeclarationNumber;
   private int myLine;
   private int myStartColumn;
   private int myEndColumn;
   private boolean myBoundsLoaded;
   private ListOf<Type> myBoundTypes;
   private int myIdentifier;
   private int myNumber;
   private ClassType myClassType;
   
   public ParameterType(EntitySpace space, IdentifierSpace identifiers, FileSpace fileSpace) {
      super(fileSpace,space, UNKNOWN_SEMANTIC);
      this.mySpace = space;
      this.myIdentifiers = identifiers;
      this.myFileSpace = fileSpace;
   }
   
   public ParameterType(EntitySpace space, IdentifierSpace identifiers, FileSpace fileSpace, FileEntry file, Language language, int declarationNumber) {
      super(fileSpace,space, UNKNOWN_SEMANTIC);
      this.mySpace = space;
      this.myIdentifiers = identifiers;
      this.myFileSpace = fileSpace;
      this.myID = space.declareEntity(this);
      this.myFile = file;
      this.myDeclarationNumber = declarationNumber;
      this.myBoundsLoaded = false;
      configureLanguage(language);
   }

   @Override
   public void load(StoreInputStream stream) throws IOException {
      super.load(stream);
      this.myLine = stream.readInt();
      this.myStartColumn = stream.readInt();
      this.myEndColumn = stream.readInt();
      this.myID = stream.readInt();
      this.myFile = this.myFileSpace.getFileEntry(stream.readInt());
      this.myDeclarationNumber = stream.readInt();
      this.myNumber = stream.readInt();
      this.myIdentifier = stream.readInt();
      this.myClassType = (ClassType)this.mySpace.getEntity(stream.readInt());
      this.myBoundsLoaded = stream.readBoolean();
      if (stream.readBoolean()) {
         this.myBoundTypes = new ListOf<>(this.mySpace, stream);
      }
   }

   @Override
   public void store(StoreOutputStream stream) throws IOException {
      super.store(stream);
      stream.writeInt(this.myLine);
      stream.writeInt(this.myStartColumn);
      stream.writeInt(this.myEndColumn);
      stream.writeInt(this.myID);
      stream.writeInt(this.myFile.getID());
      stream.writeInt(this.myDeclarationNumber);
      stream.writeInt(this.myNumber);
      stream.writeInt(this.myIdentifier);
      stream.writeInt(this.mySpace.getID(this.myClassType));
      stream.writeBoolean(this.myBoundsLoaded);
      stream.writeBoolean(this.myBoundTypes != null);
      if (this.myBoundTypes != null) {
         this.myBoundTypes.store(stream);
      }
   }
   
   public void invalidate() {
      if (this.myBoundTypes != null) {
         this.myBoundTypes.clear();
      }

      this.myBoundsLoaded = false;
   }
   
   public void declarePositions(int line, int startColumn, int endColumn) {
      this.myLine = line;
      this.myStartColumn = startColumn;
      this.myEndColumn = endColumn;
   }
   
   public void declareSyntax(int identifier, ClassType classType, int number) {
      this.myNumber = number;
      this.myIdentifier = identifier;
      this.myClassType = classType;
      if (this.myBoundTypes == null) {
         this.myBoundTypes = new ListOf<>(this.mySpace);
      } else {
         this.myBoundTypes.clear();
      }
   }
   
   public void declareBoundType(Type boundType) {
      this.myBoundTypes.add(boundType);
      this.myBoundsLoaded = true;
   }

   @Override
   public FileEntry getFile() {
      return this.myFile;
   }

   @Override
   public int getDeclarationNumber() {
      return this.myDeclarationNumber;
   }

   @Override
   public ClassType getEnclosingClassType() {
      return this.myClassType;
   }

   @Override
   public ClassType getEnclosingTopLevelClassType() {
      return this.myClassType.getEnclosingTopLevelClassType();
   }

   @Override
   public int getIdentifierLine() {
      this.mySpace.loadPositions(this.myFile,getLanguage());
      return this.myLine;
   }

   @Override
   public int getIdentifierEndColumn() {
      this.mySpace.loadPositions(this.myFile,getLanguage());
      return this.myEndColumn;
   }

   @Override
   public int getIdentifierStartColumn() {
      this.mySpace.loadPositions(this.myFile,getLanguage());
      return this.myStartColumn;
   }

   public int getBoundTypeCount() {
      this.loadBounds();
      return this.myBoundTypes != null && this.myBoundTypes.size() != 0 ? this.myBoundTypes.size() : 1;
   }

   public int getNumber() {
      return this.myNumber;
   }

   public int getAbsoluteNumber() {
      return this.myClassType.getAbsoluteParametertypeCount() - this.myClassType.getParametertypeCount() + this.getNumber();
   }

   public Type getBoundType(int number) throws UnknownEntityException {
      this.loadBounds();
      return this.myBoundTypes != null && this.myBoundTypes.size() > 0 ?
              this.myBoundTypes.get(number) :
              this.mySpace.getRootClasstype(this.myFile,getLanguage());
   }

   @Override
   public Type getErasedType() throws UnknownEntityException {
      this.loadBounds();
      return this.myBoundTypes != null && this.myBoundTypes.size() > 0 ?
              this.myBoundTypes.get(0) :
              this.mySpace.getRootClasstype(this.myFile,getLanguage());
   }

   public ClassType getClassType() {
      return this.myClassType;
   }

   @Override
   public int getIdentifier() {
      return this.myIdentifier;
   }

   @Override
   public int getID() {
      return this.myID;
   }

   private void loadBoundTypes() {
      if (!this.myBoundsLoaded) {
         this.myBoundsLoaded = true;
         if (this.myBoundTypes != null) {
            this.mySpace.loadBoundTypes(this.myFile,getLanguage(), this.myClassType);
         }
      }
   }

   private void loadBounds() {
      if (!this.myBoundsLoaded) {
         this.myClassType.getAllSuperTypes();
         if (this.myClassType.areSuperClasstypesLoaded()) {
            this.loadBoundTypes();
         }
      }
   }
}
