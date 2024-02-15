package com.aide.codemodel.api;

import static com.aide.codemodel.api.TypeSemantic.UNKNOWN_SEMANTIC;

import java.io.IOException;

import com.aide.codemodel.abstraction.Language;

import com.aide.codemodel.api.collections.ListOf;
import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;
import com.aide.codemodel.api.excpetions.UnknownEntityException;

public final class MethodParameterType extends Type {
   private int myID;
   private final EntitySpace mySpace;
   private final IdentifierSpace myIdentifiers;
   private final FileSpace myFileSpace;
   private FileEntry myFile;
   private int myDeclarationNumber;
   private int myLine;
   private int myStartColumn;
   private int myEndColumn;
   private int myIdentifier;
   private Member myMethod;
   private int myNumber;
   private ListOf<Type> myBoundTypes;
   private boolean myTypesLoaded;
   
   public MethodParameterType(EntitySpace space, IdentifierSpace identifiers, FileSpace fileSpace) {
      super(fileSpace,space, UNKNOWN_SEMANTIC);
      this.mySpace = space;
      this.myIdentifiers = identifiers;
      this.myFileSpace = fileSpace;
   }
   
   public MethodParameterType(EntitySpace space, IdentifierSpace identifiers, FileSpace filespace, FileEntry file, Language language, int declarationNumber) {
      super(filespace,space, UNKNOWN_SEMANTIC);
      this.mySpace = space;
      this.myIdentifiers = identifiers;
      this.myFileSpace = filespace;
      this.myID = space.declareEntity(this);
      this.myFile = file;
      this.myDeclarationNumber = declarationNumber;
      this.myBoundTypes = null;
      this.myTypesLoaded = false;
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
      this.myIdentifier = stream.readInt();
      this.myMethod = (Member)this.mySpace.getEntity(stream.readInt());
      this.myNumber = stream.readInt();
      this.myTypesLoaded = stream.readBoolean();
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
      stream.writeInt(this.myIdentifier);
      stream.writeInt(this.mySpace.getID(this.myMethod));
      stream.writeInt(this.myNumber);
      stream.writeBoolean(this.myTypesLoaded);
      stream.writeBoolean(this.myBoundTypes != null);
      if (this.myBoundTypes != null) {
         this.myBoundTypes.store(stream);
      }
   }

   public void invalidate() {
      if (this.myBoundTypes != null) {
         this.myBoundTypes.clear();
      }

      this.myTypesLoaded = false;
   }

   public void declareBoundType(Type boundType) {
      this.myBoundTypes.add(boundType);
      this.myTypesLoaded = true;
   }

   public void declarePositions(int line, int startColumn, int endColumn) {
      this.myLine = line;
      this.myStartColumn = startColumn;
      this.myEndColumn = endColumn;
   }
   
   public void declareSyntax(int identifier, Member method, int number) {
      this.myIdentifier = identifier;
      this.myMethod = method;
      this.myNumber = number;
      if (this.myBoundTypes == null) {
         this.myBoundTypes = new ListOf<>(this.mySpace);
      } else {
         this.myBoundTypes.clear();
      }
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

   public Member getMethod() {
      return this.myMethod;
   }

   public int getNumber() {
      return this.myNumber;
   }

   @Override
   public FileEntry getFile() {
      return this.myFile;
   }

   @Override
   public int getDeclarationNumber() {
      return this.myDeclarationNumber;
   }

   public int getBoundTypeCount() {
      this.loadBounds();
      return this.myBoundTypes != null && this.myBoundTypes.size() != 0 ? this.myBoundTypes.size() : 1;
   }

   public Type getBoundType(Type type, int number) throws UnknownEntityException {
      Type membertype = this.getBoundType(number);
      if (type.isClassType()) {
         Type containingtype = ((ClassType)type).getContainingTypeOfMember(this.myMethod);
         return containingtype.isParameterizedType() ? ((ParameterizedType)containingtype).replaceType(membertype) : membertype;
      } else {
         Type containingtype = ((ParameterizedType)type).getClassType().getContainingTypeOfMember(this.myMethod);
         return !containingtype.isParameterizedType()
            ? ((ParameterizedType)type).replaceType(membertype)
            : ((ParameterizedType)type).replaceType(((ParameterizedType)containingtype).replaceType(membertype));
      }
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

   @Override
   public ClassType getEnclosingClassType() {
      return this.myMethod.getEnclosingClassType();
   }

   @Override
   public ClassType getEnclosingTopLevelClassType() {
      return this.myMethod.getEnclosingClassType().getEnclosingTopLevelClassType();
   }

   @Override
   public int getIdentifier() {
      return this.myIdentifier;
   }

   @Override
   public int getID() {
      return this.myID;
   }

   private void loadBounds() {
      if (!this.myTypesLoaded) {
         this.myTypesLoaded = true;
         if (getLanguage().getTypeSystem()!=null&&getLanguage().getTypeSystem().inheritsBoundTypes() && this.myMethod.getOverriddenMembers().size() > 0) {
            try {
               Member oMethod = this.myMethod.getOverriddenMembers().get();
               int count = oMethod.getMethodParametertypeCount();

               for(int number = 0; number < count; ++number) {
                  MethodParameterType methodParameterType = oMethod.getMethodParameterType(number);
                  int identifier = methodParameterType.getIdentifier();
                  MethodParameterType methodparametertype = this.myMethod.accessParameterType(identifier);
                  int boundCount = methodParameterType.getBoundTypeCount();

                  for(int j = 0; j < boundCount; ++j) {
                     Type boundtype = methodParameterType.getBoundType(this.myMethod.getEnclosingClassType().parameterizeCanonical(), j);
                     this.mySpace.declareBoundtype(methodparametertype, boundtype);
                  }
               }
            } catch (UnknownEntityException ignored) {
            }
         } else {
            this.mySpace.loadTypes(this.myFile,getLanguage());
         }
      }
   }
}
