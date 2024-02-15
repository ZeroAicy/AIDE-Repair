package com.aide.codemodel.api;

import java.io.IOException;

import com.aide.codemodel.abstraction.Language;

import com.aide.codemodel.api.collections.ListOf;
import com.aide.codemodel.api.collections.MapOf;
import com.aide.codemodel.api.collections.MapOfInt;
import com.aide.codemodel.api.collections.SetOf;
import com.aide.codemodel.api.collections.SetOfInt;
import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;
import com.aide.codemodel.api.excpetions.AmbiguousEntityException;
import com.aide.codemodel.api.excpetions.UnknownEntityException;
import com.aide.codemodel.api.util.TimeUtils;

public final class ClassType extends Type {
   private final FileSpace myFileSpace;
   private final EntitySpace mySpace;
   private final IdentifierSpace myIdentifiers;
   private int myID;
   private FileEntry myFile;
   private int myDeclarationNumber;
   private Namespace myNamespace;
   private ClassType myTopLevelClassType;
   private ClassType myEnclosingClassType;
   private int myIdentifier;
   private boolean myIsModule;
   private int myTypeParameterCount;
   private Data myData;
   private long myAccessTime;
   
   public long lastAccessTime() {
      return myAccessTime;
   }

   private Data data() {
      myAccessTime = TimeUtils.currentTimeMillis();
      if (myData == null) {
         myData = new Data();
         myData.inheritedMethodPairs = new ListOf<>(mySpace);
         myData.superClasstypes = new ListOf<>(mySpace);
         myData.superTypes = new ListOf<>(mySpace);
         myData.absoluteTypeParameters = new ListOf<>(mySpace);
         myData.typeParameters = new ListOf<>(mySpace);
         myData.memberParametertypes = new MapOfInt<>(mySpace);
         myData.memberFields = new MapOfInt<>(mySpace);
         myData.memberOperators = new MapOfInt<>(mySpace);
         myData.memberClasstypes = new MapOfInt<>(mySpace);
         myData.memberConstructors = new SetOf<>(mySpace);
         myData.memberMethods = new MapOfInt<>(mySpace);
         myData.containingTypesOfMembers = new MapOf<>(mySpace);
         myData.allMemberOperators = new MapOfInt<>(mySpace);
         myData.allMemberFields = new MapOfInt<>(mySpace);
         myData.allMemberMethods = new MapOfInt<>(mySpace);
         myData.allExplicitMemberFields = new MapOfInt<>(mySpace);
         myData.allExplicitMemberMethods = new MapOfInt<>(mySpace);
      }
      return myData;
   }
   
   public ClassType(EntitySpace space, FileSpace fileSpace, IdentifierSpace identifiers) {
      super(fileSpace,space);
      myFileSpace = fileSpace;
      mySpace = space;
      myIdentifiers = identifiers;
   }
   
   public ClassType(EntitySpace space, FileSpace fileSpace, IdentifierSpace identifiers, FileEntry file, Language language, int declarationNumber, int semantic) {
      super(fileSpace,space, semantic);
      myFileSpace = fileSpace;
      mySpace = space;
      myIdentifiers = identifiers;
      myID = space.declareEntity(this);
      myFile = file;
      myDeclarationNumber = declarationNumber;
      configureLanguage(language);
   }

   @Override
   public void load(StoreInputStream stream) throws IOException {
      super.load(stream);
      myNamespace = (Namespace)mySpace.getEntity(stream.readInt());
      myID = stream.readInt();
      myFile = myFileSpace.getFileEntry(stream.readInt());
      myDeclarationNumber = stream.readInt();
      myTopLevelClassType = (ClassType)mySpace.getEntity(stream.readInt());
      myEnclosingClassType = (ClassType)mySpace.getEntity(stream.readInt());
      myIdentifier = stream.readInt();
      myIsModule = stream.readBoolean();
      myTypeParameterCount = stream.readInt();
      if (stream.readBoolean()) {
         myData = new Data();
         myData.syntaxLoaded = stream.readBoolean();
         myData.typesLoaded = stream.readBoolean();
         myData.modifiersstartline = stream.readInt();
         myData.modifiersstartcolumn = stream.readInt();
         myData.modifiersendline = stream.readInt();
         myData.modifiersendcolumn = stream.readInt();
         myData.startline = stream.readInt();
         myData.startcolumn = stream.readInt();
         myData.endline = stream.readInt();
         myData.endcolumn = stream.readInt();
         myData.idline = stream.readInt();
         myData.idstartcolumn = stream.readInt();
         myData.idendcolumn = stream.readInt();
         myData.modifiers = stream.readInt();
         myData.hasDocumentation = stream.readBoolean();
         myData.hasSuperClasstypes = stream.readBoolean();
         myData.isanonymous = stream.readBoolean();
         myData.islocal = stream.readBoolean();
         myData.inStaticMethod = stream.readBoolean();
         myData.superClasstypesLoaded = stream.readBoolean();
         myData.superClasstypesLoading = stream.readBoolean();
         myData.superTypesLoaded = stream.readBoolean();
         myData.superTypesLoading = stream.readBoolean();
         myData.cycliclyDefined = stream.readBoolean();
         myData.corruptedSupertypes = stream.readBoolean();
         myData.absoluteTypeParameterCount = stream.readInt();
         myData.delegateOrEnumtype = (Type)mySpace.getEntity(stream.readInt());
         if (stream.readBoolean())
            myData.superClasstypes = new ListOf<>(mySpace, stream);

         if (stream.readBoolean())
            myData.superTypes = new ListOf<>(mySpace, stream);

         if (stream.readBoolean())
            myData.allSuperClasstypes = new SetOf<>(mySpace, stream);

         if (stream.readBoolean())
            myData.allSuperTypes = new SetOf<>(mySpace, stream);

         if (stream.readBoolean())
            myData.allMemberClasstypes = new MapOfInt<>(mySpace, stream);

         if (stream.readBoolean())
            myData.allMemberTypes = new MapOfInt<>(mySpace, stream);

         if (stream.readBoolean())
            myData.memberClasstypes = new MapOfInt<>(mySpace, stream);

         if (stream.readBoolean())
            myData.memberParametertypes = new MapOfInt<>(mySpace, stream);

         if (stream.readBoolean())
            myData.typeParameters = new ListOf<>(mySpace, stream);

         if (stream.readBoolean())
            myData.absoluteTypeParameters = new ListOf<>(mySpace, stream);

         if (stream.readBoolean())
            myData.memberOperators = new MapOfInt<>(mySpace, stream);

         if (stream.readBoolean())
            myData.memberFields = new MapOfInt<>(mySpace, stream);

         if (stream.readBoolean())
            myData.memberMethods = new MapOfInt<>(mySpace, stream);

         if (stream.readBoolean())
            myData.memberConstructors = new SetOf<>(mySpace, stream);

         if (stream.readBoolean())
            myData.containingTypesOfMembers = new MapOf<>(mySpace, stream);

         if (stream.readBoolean())
            myData.allMemberFields = new MapOfInt<>(mySpace, stream);

         if (stream.readBoolean())
            myData.allMemberMethods = new MapOfInt<>(mySpace, stream);

         if (stream.readBoolean())
            myData.allExplicitMemberFields = new MapOfInt<>(mySpace, stream);

         if (stream.readBoolean())
            myData.allExplicitMemberMethods = new MapOfInt<>(mySpace, stream);

         if (stream.readBoolean())
            myData.allMemberOperators = new MapOfInt<>(mySpace, stream);

         if (stream.readBoolean())
            myData.inheritedMethodPairs = new ListOf<>(mySpace, stream);
      }
   }

   @Override
   public void store(StoreOutputStream stream) throws IOException {
      super.store(stream);
      stream.writeInt(mySpace.getID(myNamespace));
      stream.writeInt(myID);
      stream.writeInt(myFile.getID());
      stream.writeInt(myDeclarationNumber);
      stream.writeInt(mySpace.getID(myTopLevelClassType));
      stream.writeInt(mySpace.getID(myEnclosingClassType));
      stream.writeInt(myIdentifier);
      stream.writeBoolean(myIsModule);
      stream.writeInt(myTypeParameterCount);
      stream.writeBoolean(myData != null);
      if (myData != null) {
         stream.writeBoolean(myData.syntaxLoaded);
         stream.writeBoolean(myData.typesLoaded);
         stream.writeInt(myData.modifiersstartline);
         stream.writeInt(myData.modifiersstartcolumn);
         stream.writeInt(myData.modifiersendline);
         stream.writeInt(myData.modifiersendcolumn);
         stream.writeInt(myData.startline);
         stream.writeInt(myData.startcolumn);
         stream.writeInt(myData.endline);
         stream.writeInt(myData.endcolumn);
         stream.writeInt(myData.idline);
         stream.writeInt(myData.idstartcolumn);
         stream.writeInt(myData.idendcolumn);
         stream.writeInt(myData.modifiers);
         stream.writeBoolean(myData.hasDocumentation);
         stream.writeBoolean(myData.hasSuperClasstypes);
         stream.writeBoolean(myData.isanonymous);
         stream.writeBoolean(myData.islocal);
         stream.writeBoolean(myData.inStaticMethod);
         stream.writeBoolean(myData.superClasstypesLoaded);
         stream.writeBoolean(myData.superClasstypesLoading);
         stream.writeBoolean(myData.superTypesLoaded);
         stream.writeBoolean(myData.superTypesLoading);
         stream.writeBoolean(myData.cycliclyDefined);
         stream.writeBoolean(myData.corruptedSupertypes);
         stream.writeInt(myData.absoluteTypeParameterCount);
         stream.writeInt(mySpace.getID(myData.delegateOrEnumtype));
         stream.writeBoolean(myData.superClasstypes != null);
         if (myData.superClasstypes != null)
            myData.superClasstypes.store(stream);

         stream.writeBoolean(myData.superTypes != null);
         if (myData.superTypes != null)
            myData.superTypes.store(stream);

         stream.writeBoolean(myData.allSuperClasstypes != null);
         if (myData.allSuperClasstypes != null)
            myData.allSuperClasstypes.store(stream);

         stream.writeBoolean(myData.allSuperTypes != null);
         if (myData.allSuperTypes != null)
            myData.allSuperTypes.store(stream);

         stream.writeBoolean(myData.allMemberClasstypes != null);
         if (myData.allMemberClasstypes != null)
            myData.allMemberClasstypes.store(stream);

         stream.writeBoolean(myData.allMemberTypes != null);
         if (myData.allMemberTypes != null)
            myData.allMemberTypes.store(stream);

         stream.writeBoolean(myData.memberClasstypes != null);
         if (myData.memberClasstypes != null)
            myData.memberClasstypes.store(stream);

         stream.writeBoolean(myData.memberParametertypes != null);
         if (myData.memberParametertypes != null)
            myData.memberParametertypes.store(stream);

         stream.writeBoolean(myData.typeParameters != null);
         if (myData.typeParameters != null)
            myData.typeParameters.store(stream);

         stream.writeBoolean(myData.absoluteTypeParameters != null);
         if (myData.absoluteTypeParameters != null)
            myData.absoluteTypeParameters.store(stream);

         stream.writeBoolean(myData.memberOperators != null);
         if (myData.memberOperators != null)
            myData.memberOperators.store(stream);

         stream.writeBoolean(myData.memberFields != null);
         if (myData.memberFields != null)
            myData.memberFields.store(stream);

         stream.writeBoolean(myData.memberMethods != null);
         if (myData.memberMethods != null)
            myData.memberMethods.store(stream);

         stream.writeBoolean(myData.memberConstructors != null);
         if (myData.memberConstructors != null)
            myData.memberConstructors.store(stream);

         stream.writeBoolean(myData.containingTypesOfMembers != null);
         if (myData.containingTypesOfMembers != null)
            myData.containingTypesOfMembers.store(stream);

         stream.writeBoolean(myData.allMemberFields != null);
         if (myData.allMemberFields != null)
            myData.allMemberFields.store(stream);

         stream.writeBoolean(myData.allMemberMethods != null);
         if (myData.allMemberMethods != null)
            myData.allMemberMethods.store(stream);

         stream.writeBoolean(myData.allExplicitMemberFields != null);
         if (myData.allExplicitMemberFields != null)
            myData.allExplicitMemberFields.store(stream);

         stream.writeBoolean(myData.allExplicitMemberMethods != null);
         if (myData.allExplicitMemberMethods != null)
            myData.allExplicitMemberMethods.store(stream);

         stream.writeBoolean(myData.allMemberOperators != null);
         if (myData.allMemberOperators != null)
            myData.allMemberOperators.store(stream);

         stream.writeBoolean(myData.inheritedMethodPairs != null);
         if (myData.inheritedMethodPairs != null)
            myData.inheritedMethodPairs.store(stream);
      }
   }

   public void invalidate() {
      myData = null;
   }

   public void declareSyntax(
           int identifier,
           int modifiers,
           Namespace pakage,
           int typeParameterCount,
           ClassType toplevelclasstype,
           ClassType enclosingclasstype,
           boolean hasSupertypes,
           boolean isanonymous,
           boolean islocal,
           boolean inStaticMethod,
           boolean isModule,
           boolean hasDocumentation
   ) {
      myNamespace = pakage;
      myIdentifier = identifier;
      myTopLevelClassType = toplevelclasstype;
      myEnclosingClassType = enclosingclasstype;
      myIsModule = isModule;
      myTypeParameterCount = typeParameterCount;
      data().isanonymous = isanonymous;
      data().islocal = islocal;
      data().inStaticMethod = inStaticMethod;
      data().hasSuperClasstypes = hasSupertypes;
      data().modifiers = modifiers;
      data().hasDocumentation = hasDocumentation;
      if (enclosingclasstype == this) {
         data().absoluteTypeParameterCount = typeParameterCount;
      } else {
         data().absoluteTypeParameterCount = typeParameterCount + enclosingclasstype.getAbsoluteParametertypeCount();
         int enclcount = enclosingclasstype.getAbsoluteParametertypeCount();
         data().absoluteTypeParameters.setSize(data().absoluteTypeParameterCount);

         for(int i = 0; i < enclcount; ++i) {
            try {
               data().absoluteTypeParameters.set(i, enclosingclasstype.getAbsoluteParametertype(i));
            } catch (UnknownEntityException ignored) {
            }
         }
      }

      data().memberOperators.clear();
      data().memberConstructors.clear();
      data().memberFields.clear();
      data().memberMethods.clear();
      data().memberClasstypes.clear();
      data().memberParametertypes.clear();
   }

   public void declarePositions(
           int idline,
           int idstartcolumn,
           int idendcolumn,
           int modifiersstartline,
           int modifiersstartcolumn,
           int modifiersendline,
           int modifiersendcolumn,
           int startline,
           int startcolumn,
           int endline,
           int endcolumn
   ) {
      data().idline = idline;
      data().idstartcolumn = idstartcolumn;
      data().idendcolumn = idendcolumn;
      data().modifiersstartline = modifiersstartline;
      data().modifiersstartcolumn = modifiersstartcolumn;
      data().modifiersendline = modifiersendline;
      data().modifiersendcolumn = modifiersendcolumn;
      data().startline = startline;
      data().startcolumn = startcolumn;
      data().endline = endline;
      data().endcolumn = endcolumn;
   }

   public void declareCorruptedSupertypes() {
      data().corruptedSupertypes = true;
   }

   public void declareSuperClasstypesLoaded() {
      data().superClasstypesLoaded = true;
      data().superClasstypesLoading = false;
      packSuperClasstypes();
   }

   public void declareSuperClasstypesLoading() {
      data().superClasstypesLoaded = false;
      data().superClasstypesLoading = true;
   }

   public void declareCycliclyDefined() {
      data().cycliclyDefined = true;
   }

   public void declareDelegateType(Type delegatetype) {
      data().delegateOrEnumtype = delegatetype;
   }

   public void declareEnumType(Type enumtype) {
      data().delegateOrEnumtype = enumtype;
   }

   public void declareSyntax(Namespace pakage, int identifier, boolean module, int typeParameterCount) {
      myIdentifier = identifier;
      myNamespace = pakage;
      myTopLevelClassType = this;
      myEnclosingClassType = this;
      myIsModule = module;
      myTypeParameterCount = typeParameterCount;
   }

   public void declareMethod(int identifier, Member method) {
      data().memberMethods.insert(identifier, method);
   }

   public void declareField(int identifier, Member field) {
      data().memberFields.insert(identifier, field);
   }

   public void declareOperator(int operator, Member method) {
      data().memberOperators.insert(operator, method);
   }

   public void declareSuperClasstype(ClassType superClassType) {
      data().superClasstypes.add(superClassType);
   }

   public void declareIndexer(Member method) {
      data().memberMethods.insert(myIdentifiers.get("[]"), method);
   }

   public void declareConstructor(Member constructor) {
      data().memberConstructors.put(constructor);
   }

   public void declareParametertype(int number, int identifier, ParameterType parametertype) {
      data().memberParametertypes.put(identifier, parametertype);
      data().typeParameters.set(number, parametertype);
      data().absoluteTypeParameters.set(data().absoluteTypeParameterCount - getParametertypeCount() + number, parametertype);
   }

   public void declareSuperType(Type supertype) {
      ClassType classtype;
      if (supertype.isParameterizedType()) {
         classtype = ((ParameterizedType)supertype).getClassType();
      } else {
         classtype = (ClassType)supertype;
      }

      if (data().allSuperClasstypes.contains(classtype)) {
         data().superTypes.add(supertype);
      }
   }

   public void declareMemberClasstype(int identifier, ClassType classtype) {
      data().memberClasstypes.insert(identifier, classtype);
   }

   @Override
   public FileEntry getFile() {
      return myFile;
   }

   @Override
   public int getDeclarationNumber() {
      return myDeclarationNumber;
   }

   @Override
   public int getID() {
      return myID;
   }

   public boolean hasTypeparametersOfEnclosingClasstype() {
      return getLanguage().getTypeSystem().hasTypeParametersOfEnclosingClassType() || hasInstanceOfEnclosingClasstype();
   }

   public boolean hasInstanceOfEnclosingClasstype() {
      return !isToplevel() && !isStatic() && !data().inStaticMethod;
   }

   public Type parameterizeBivariant() {
      int absolutelen = getAbsoluteParametertypeCount();
      if (absolutelen == 0) {
         return this;
      } else {
         try {
            int[] absolutevariances = new int[absolutelen];
            Type[] absoluteargumenttypes = new Type[absolutelen];

            for(int i = 0; i < absolutelen; ++i) {
               absolutevariances[i] = 1;
               absoluteargumenttypes[i] = getAbsoluteParametertype(i).getErasedType();
            }

            return mySpace.getParameterizedtype(this, absoluteargumenttypes, absolutevariances);
         } catch (UnknownEntityException var5) {
            return this;
         }
      }
   }

   public boolean isModule() {
      if (myDeclarationNumber == 0) {
         mySpace.loadNamespaces();
      } else {
         loadSyntax();
      }

      return myIsModule;
   }

   public boolean isAnonymous() {
      return data().isanonymous;
   }

   public boolean isLocal() {
      return data().islocal;
   }

   public boolean isStatic() {
      return (data().modifiers & 64) != 0;
   }

   public boolean isAbstract() {
      return Modifiers.isAbstract(getModifiers());
   }

   public boolean isSealed() {
      return (data().modifiers & 128) != 0;
   }

   public boolean isApplicable(FileEntry file, int argumentTypeCount) {
      if (!getLanguage().getTypeSystem().supportsGenericTypeNameResolving()) {
         return true;
      } else {
         return argumentTypeCount == getParametertypeCount();
      }
   }

   public SetOf<ClassType> getAllPartialClasstypes() {
      return getNamespace().getAllPartialClasstypes(getFile(), getIdentifier());
   }

   public Type parameterizeCanonical() {
      int absolutelen = getAbsoluteParametertypeCount();
      if (absolutelen == 0) {
         return this;
      } else {
         try {
            Type[] absoluteargumenttypes = new Type[absolutelen];
            int[] absolutevariances = new int[absolutelen];

            for(int i = 0; i < absolutelen; ++i) {
               absoluteargumenttypes[i] = getAbsoluteParametertype(i);
               absolutevariances[i] = 0;
            }

            return mySpace.getParameterizedtype(this, absoluteargumenttypes, absolutevariances);
         } catch (UnknownEntityException var5) {
            return this;
         }
      }
   }

   public boolean isDuplicate() {
      if (!isToplevel()) {
         MapOfInt<ClassType> classtypes = getEnclosingClassType().getDeclaredMemberClasstypes();
         classtypes.DEFAULT_ITERATOR.init(getIdentifier());

         while(classtypes.DEFAULT_ITERATOR.hasMoreElements()) {
            if (classtypes.DEFAULT_ITERATOR.nextValue() != this) {
               return true;
            }
         }
      }

      return false;
   }

   public Type getEnumBaseType(FileEntry file) throws UnknownEntityException {
      mySpace.loadTypes(file,getLanguage());
      if (data().delegateOrEnumtype == null) {
         throw new UnknownEntityException();
      } else {
         return data().delegateOrEnumtype;
      }
   }

   public Type getDelegateOrEnumtype() throws UnknownEntityException {
      mySpace.loadTypes(myFile,getLanguage());
      if (data().delegateOrEnumtype == null) {
         throw new UnknownEntityException();
      } else {
         return data().delegateOrEnumtype;
      }
   }

   public boolean existsMemberParametertype(int identifier) {
      loadSyntax();
      return data().memberParametertypes.contains(identifier);
   }

   public ParameterType accessParametertype(int identifier) throws UnknownEntityException {
      loadSyntax();
      ParameterType type = data().memberParametertypes.get(identifier);
      if (type == null) {
         throw new UnknownEntityException();
      } else {
         return type;
      }
   }

   public int getAssembly() {
      return getFile().getAssembly();
   }

   public Entity getContainer() {
      return isToplevel() ? getNamespace() : getEnclosingClassType();
   }

   public Namespace getNamespace() {
      if (myDeclarationNumber == 0) {
         mySpace.loadNamespaces();
      } else {
         loadSyntax();
      }

      return myNamespace;
   }

   @Override
   public int getIdentifierLine() {
      mySpace.loadPositions(myFile,getLanguage());
      return data().idline;
   }

   @Override
   public int getIdentifierEndColumn() {
      mySpace.loadPositions(myFile,getLanguage());
      return data().idendcolumn;
   }

   @Override
   public int getIdentifierStartColumn() {
      mySpace.loadPositions(myFile,getLanguage());
      return data().idstartcolumn;
   }

   @Override
   public int getModifiersStartLine() {
      mySpace.loadPositions(myFile,getLanguage());
      return data().modifiersstartline;
   }

   @Override
   public int getModifiersEndLine() {
      mySpace.loadPositions(myFile,getLanguage());
      return data().modifiersendline;
   }

   @Override
   public int getModifiersEndColumn() {
      mySpace.loadPositions(myFile,getLanguage());
      return data().modifiersendcolumn;
   }

   @Override
   public int getModifiersStartColumn() {
      mySpace.loadPositions(myFile,getLanguage());
      return data().modifiersstartcolumn;
   }

   @Override
   public int getEndColumn() {
      mySpace.loadPositions(myFile,getLanguage());
      return data().endcolumn;
   }

   @Override
   public int getEndLine() {
      mySpace.loadPositions(myFile,getLanguage());
      return data().endline;
   }

   @Override
   public int getStartColumn() {
      mySpace.loadPositions(myFile,getLanguage());
      return data().startcolumn;
   }

   @Override
   public int getStartLine() {
      mySpace.loadPositions(myFile,getLanguage());
      return data().startline;
   }

   @Override
   public MapOfInt<Member> getAllOperators() {
      loadTypes();
      return data().allMemberOperators;
   }

   public MapOfInt<Member> getDeclaredMemberMethods() {
      loadSyntax();
      return data().memberMethods;
   }

   public MapOfInt<Member> getDeclaredMemberFields() {
      loadSyntax();
      return data().memberFields;
   }

   public SetOf<Member> getDeclaredConstructors() {
      loadSyntax();
      return data().memberConstructors;
   }

   public SetOf<Member> getConstructors() {
      loadTypes();
      return data().memberConstructors;
   }

   @Override
   public Type accessFields(FileEntry file,Language language, int identifier, boolean caseSensitive, ClassType referingClassType, SetOf<Member> fields) {
      loadTypes();
      fields.clear();
      MapOfInt<Member> lookupFields = data().allMemberFields;
      int lookupIdentifier = identifier;
      if (!caseSensitive) {
         if (data().allMemberFieldsCaseInsensitive == null) {
            data().allMemberFieldsCaseInsensitive = new MapOfInt<>(mySpace);
            data().allMemberFields.DEFAULT_ITERATOR.init();

            while(data().allMemberFields.DEFAULT_ITERATOR.hasMoreElements()) {
               int ident = myIdentifiers.toUpperCase(data().allMemberFields.DEFAULT_ITERATOR.nextKey());
               Member field = data().allMemberFields.DEFAULT_ITERATOR.nextValue();
               data().allMemberFieldsCaseInsensitive.insert(ident, field);
            }
         }

         lookupIdentifier = myIdentifiers.toUpperCase(identifier);
         lookupFields = data().allMemberFieldsCaseInsensitive;
      }

      lookupFields.DEFAULT_ITERATOR.init(lookupIdentifier);

      while(lookupFields.DEFAULT_ITERATOR.hasMoreElements()) {
         Member field = lookupFields.DEFAULT_ITERATOR.nextValue();
         if (field.isVisible(this, referingClassType)) {
            fields.put(field);
         }
      }

      return fields.empty() ? null : this;
   }

   @Override
   public Type accessMethods(FileEntry file,Language language, int identifier, boolean caseSensitive, ClassType referingClassType, SetOf<Member> methods) {
      loadTypes();
      methods.clear();
      MapOfInt<Member> lookupMethods = data().allMemberMethods;
      int lookupIdentifier = identifier;
      if (!caseSensitive) {
         if (data().allMemberMethodsCaseInsensitive == null) {
            data().allMemberMethodsCaseInsensitive = new MapOfInt<>(mySpace);
            data().allMemberMethods.DEFAULT_ITERATOR.init();

            while(data().allMemberMethods.DEFAULT_ITERATOR.hasMoreElements()) {
               int ident = myIdentifiers.toUpperCase(data().allMemberMethods.DEFAULT_ITERATOR.nextKey());
               Member method = data().allMemberMethods.DEFAULT_ITERATOR.nextValue();
               data().allMemberMethodsCaseInsensitive.insert(ident, method);
            }
         }

         lookupIdentifier = myIdentifiers.toUpperCase(identifier);
         lookupMethods = data().allMemberMethodsCaseInsensitive;
      }

      lookupMethods.DEFAULT_ITERATOR.init(lookupIdentifier);

      while(lookupMethods.DEFAULT_ITERATOR.hasMoreElements()) {
         Member method = lookupMethods.DEFAULT_ITERATOR.nextValue();
         if (method.isVisible(this, referingClassType)) {
            methods.put(method);
         }
      }

      return methods.empty() ? null : this;
   }

   @Override
   public Type accessConstructors(ClassType referingClassType, SetOf<Member> constructors) {
      loadTypes();
      constructors.clear();
      data().memberConstructors.DEFAULT_ITERATOR.init();

      while(data().memberConstructors.DEFAULT_ITERATOR.hasMoreElements()) {
         Member constructor = data().memberConstructors.DEFAULT_ITERATOR.nextKey();
         if (constructor.isVisible(referingClassType, referingClassType)) {
            constructors.put(constructor);
         }
      }

      return constructors.empty() ? null : this;
   }

   public Type parameterize(Type[] argumenttypes) {
      int[] variances = new int[argumenttypes.length];

      return parameterize(argumenttypes, variances);
   }

   public Type parameterize(Type[] argumenttypes, int[] variances) {
      int len = getParametertypeCount();
      int absolutelen = getAbsoluteParametertypeCount();
      if (absolutelen == 0) {
         return this;
      } else {
         if (len < absolutelen) {
            try {
               Type[] absoluteargumenttypes = new Type[absolutelen];
               int[] absolutevariances = new int[absolutelen];

               for(int i = 0; i < absolutelen - len; ++i) {
                  absoluteargumenttypes[i] = getAbsoluteParametertype(i).getErasedType().getErasedType();
                  absolutevariances[i] = 0;
               }

               for(int i = absolutelen - len; i < absolutelen; ++i) {
                  absoluteargumenttypes[i] = argumenttypes[i - absolutelen + len];
                  absolutevariances[i] = variances[i - absolutelen + len];
               }

               argumenttypes = absoluteargumenttypes;
               variances = absolutevariances;
            } catch (UnknownEntityException var8) {
               return this;
            }
         }

         return mySpace.getParameterizedtype(this, argumenttypes, variances);
      }
   }

   @Override
   public Type getSuperType() throws UnknownEntityException {
      if (data().superTypesLoading) {
         throw new UnknownEntityException();
      } else {
         loadSupertypes();
         if (isInterfaceType()) {
            throw new UnknownEntityException();
         } else if (data().superTypes.size() == 0) {
            throw new UnknownEntityException();
         } else {
            return data().superTypes.get(0);
         }
      }
   }

   public boolean isPartial() {
      loadSyntax();
      return (data().modifiers & 2097152) != 0;
   }

   @Override
   public boolean isSealedType() {
      loadSyntax();
      return (data().modifiers & 128) != 0;
   }

   @Override
   public boolean isInterfaceType() {
      loadSyntax();
      return (data().modifiers & 134217728) != 0;
   }

   @Override
   public boolean isEnumType() {
      loadSyntax();
      return (data().modifiers & 268435456) != 0;
   }

   @Override
   public boolean isDelegateType() {
      loadSyntax();
      return (data().modifiers & 33554432) != 0;
   }

   @Override
   public boolean isStructType() {
      loadSyntax();
      return (data().modifiers & 67108864) != 0;
   }

   @Override
   public String getHTMLDocumentationString() {
      loadSyntax();
      return data().hasDocumentation ? super.getHTMLDocumentationString() : "";
   }

   public ClassType getSuperClasstype() throws UnknownEntityException {
      loadSuperClasstypes();
      if (isInterfaceType()) {
         throw new UnknownEntityException();
      } else if (data().superClasstypes.size() == 0) {
         throw new UnknownEntityException();
      } else {
         return data().superClasstypes.get(0);
      }
   }

   public ClassType getAnonymousSuperClasstype() throws UnknownEntityException {
      loadSuperClasstypes();
      if (isInterfaceType()) {
         throw new UnknownEntityException();
      } else if (data().superClasstypes.size() == 0) {
         throw new UnknownEntityException();
      } else {
         return data().superClasstypes.size() == 1 ? data().superClasstypes.get(0) : data().superClasstypes.get(1);
      }
   }

   public MapOfInt<Member> getAllMemberFields() {
      loadTypes();
      return data().allMemberFields;
   }

   public MapOfInt<Member> getAllExplicitMemberFields() {
      loadTypes();
      return data().allExplicitMemberFields;
   }

   public MapOfInt<Member> getAllMemberMethods() {
      loadTypes();
      return data().allMemberMethods;
   }

   public MapOfInt<Member> getAllExplicitMemberMethods() {
      loadTypes();
      return data().allExplicitMemberMethods;
   }

   @Override
   public int getIdentifier() {
      if (myDeclarationNumber == 0) {
         mySpace.loadNamespaces();
      } else {
         loadSyntax();
      }

      return myIdentifier;
   }

   public String getIdentifierString() {
      if (myDeclarationNumber == 0) {
         mySpace.loadNamespaces();
      } else {
         loadSyntax();
      }

      return isAnonymous() ? "(anonymous)" : myIdentifiers.getString(myIdentifier);
   }

   public int getParametertypeCount() {
      if (myDeclarationNumber == 0) {
         mySpace.loadNamespaces();
      } else {
         loadSyntax();
      }

      if (myTypeParameterCount == -1) {
         loadSyntax();
      }

      return myTypeParameterCount;
   }

   public ParameterType getParametertype(int number) throws UnknownEntityException {
      loadSyntax();
      if (myTypeParameterCount <= number) {
         throw new UnknownEntityException();
      } else {
         return data().typeParameters.get(number);
      }
   }

   public int getAbsoluteParametertypeCount() {
      loadSyntax();
      return data().absoluteTypeParameterCount;
   }

   public ParameterType getAbsoluteParametertype(int number) throws UnknownEntityException {
      loadSyntax();
      if (data().absoluteTypeParameterCount <= number) {
         throw new UnknownEntityException();
      } else {
         return data().absoluteTypeParameters.get(number);
      }
   }

   public boolean areSuperClasstypesLoaded() {
      return data().superClasstypesLoaded;
   }

   public boolean isCycliclyDefined() {
      loadSuperClasstypes();
      return data().cycliclyDefined;
   }

   public boolean hasCorruptedSupertypes() {
      loadSuperClasstypes();
      return data().corruptedSupertypes;
   }

   public int getInheritedMethodPairCount() {
      loadTypes();
      return data().inheritedMethodPairs.size() / 2;
   }

   public Member getInheritedMethod1(int n) {
      return data().inheritedMethodPairs.get(n * 2);
   }

   public Member getInheritedMethod2(int n) {
      return data().inheritedMethodPairs.get(n * 2 + 1);
   }

   public MapOfInt<ClassType> getDeclaredMemberClasstypes() {
      loadSyntax();
      return data().memberClasstypes;
   }

   public MapOfInt<Member> getDeclaredMemberOperators() {
      loadSyntax();
      return data().memberOperators;
   }

   public Type getContainingTypeOfMember(Member method) {
      return data().containingTypesOfMembers.contains(method) ? data().containingTypesOfMembers.get(method) : method.getEnclosingClassType();
   }

   public boolean isEnclosedBy(ClassType enclosingClassType) {
      if (this == enclosingClassType) {
         return true;
      } else {
         return !isToplevel() && myEnclosingClassType.isEnclosedBy(enclosingClassType);
      }
   }

   @Override
   public ClassType getEnclosingTopLevelClassType() {
      if (myDeclarationNumber == 0) {
         mySpace.loadNamespaces();
      } else {
         loadSyntax();
      }

      return myTopLevelClassType;
   }

   @Override
   public ClassType getEnclosingClassType() {
      if (myDeclarationNumber == 0) {
         mySpace.loadNamespaces();
      } else {
         loadSyntax();
      }

      return myEnclosingClassType;
   }

   public boolean isToplevel() {
      if (myDeclarationNumber == 0) {
         mySpace.loadNamespaces();
      } else {
         loadSyntax();
      }

      return myEnclosingClassType == this;
   }

   public SetOf<Type> getAllSuperTypes() {
      if (data().superTypesLoading) {
         return new SetOf<>(mySpace);
      } else {
         loadSupertypes();
         return data().allSuperTypes;
      }
   }

   public SetOf<ClassType> getAllSuperClasstypes() {
      loadSuperClasstypes();
      return data().allSuperClasstypes;
   }

   public MapOfInt<Type> getAllMemberTypes() {
      loadSupertypes();
      return data().allMemberTypes;
   }

   public MapOfInt<ClassType> getAllMemberClasstypes() {
      loadSuperClasstypes();
      return data().allMemberClasstypes;
   }

   @Override
   public Type accessMemberType(int identifier, boolean caseSensitive, int parameterTypeCount, Entity referingClasstypeOrPackage, FileEntry file,Language language) throws UnknownEntityException, AmbiguousEntityException {
      if (data().superTypesLoading) {
         return accessMemberClasstype(identifier, caseSensitive, parameterTypeCount, referingClasstypeOrPackage, file);
      } else {
         loadSupertypes();
         MapOfInt<Type> lookupTypes = data().allMemberTypes;
         int lookupIdentifier = identifier;
         if (!caseSensitive) {
            if (data().allMemberTypesCaseInsensitive == null) {
               data().allMemberTypesCaseInsensitive = new MapOfInt<>(mySpace);
               data().allMemberTypes.DEFAULT_ITERATOR.init();

               while(data().allMemberTypes.DEFAULT_ITERATOR.hasMoreElements()) {
                  int ident = myIdentifiers.toUpperCase(data().allMemberTypes.DEFAULT_ITERATOR.nextKey());
                  Type type = data().allMemberTypes.DEFAULT_ITERATOR.nextValue();
                  data().allMemberTypesCaseInsensitive.insert(ident, type);
               }
            }

            lookupIdentifier = myIdentifiers.toUpperCase(identifier);
            lookupTypes = data().allMemberTypesCaseInsensitive;
         }

         Type foundtype = null;
         lookupTypes.DEFAULT_ITERATOR.init(lookupIdentifier);

         while(lookupTypes.DEFAULT_ITERATOR.hasMoreElements()) {
            Type type = lookupTypes.DEFAULT_ITERATOR.nextValue();
            ClassType classtype;
            if (type.isParameterizedType()) {
               classtype = ((ParameterizedType)type).getClassType();
            } else {
               classtype = (ClassType)type;
            }

            if (classtype.isApplicable(file, parameterTypeCount) && classtype.isVisible(referingClasstypeOrPackage)) {
               if (foundtype != null) {
                  throw new AmbiguousEntityException();
               }

               foundtype = type;
            }
         }

         if (foundtype != null) {
            return foundtype;
         } else {
            throw new UnknownEntityException();
         }
      }
   }

   public boolean existsMemberClasstype(int identifier, boolean caseSensitive) {
      if (data().superClasstypesLoading) {
         MapOfInt<ClassType> lookupTypes = data().memberClasstypes;
         int lookupIdentifier = identifier;
         if (!caseSensitive) {
            if (data().memberClasstypesCaseInsensitive == null) {
               data().memberClasstypesCaseInsensitive = new MapOfInt<>(mySpace);
               data().memberClasstypes.DEFAULT_ITERATOR.init();

               while(data().memberClasstypes.DEFAULT_ITERATOR.hasMoreElements()) {
                  int ident = myIdentifiers.toUpperCase(data().memberClasstypes.DEFAULT_ITERATOR.nextKey());
                  ClassType type = data().memberClasstypes.DEFAULT_ITERATOR.nextValue();
                  data().memberClasstypesCaseInsensitive.insert(ident, type);
               }
            }

            lookupIdentifier = myIdentifiers.toUpperCase(identifier);
            lookupTypes = data().memberClasstypesCaseInsensitive;
         }

         return lookupTypes.contains(lookupIdentifier);
      } else {
         loadSuperClasstypes();
         MapOfInt<ClassType> lookupTypes = data().allMemberClasstypes;
         int lookupIdentifier = identifier;
         if (!caseSensitive) {
            if (data().allMemberClasstypesCaseInsensitive == null) {
               data().allMemberClasstypesCaseInsensitive = new MapOfInt<>(mySpace);
               data().allMemberClasstypes.DEFAULT_ITERATOR.init();

               while(data().allMemberClasstypes.DEFAULT_ITERATOR.hasMoreElements()) {
                  int ident = myIdentifiers.toUpperCase(data().allMemberClasstypes.DEFAULT_ITERATOR.nextKey());
                  ClassType type = data().allMemberClasstypes.DEFAULT_ITERATOR.nextValue();
                  data().allMemberClasstypesCaseInsensitive.insert(ident, type);
               }
            }

            lookupIdentifier = myIdentifiers.toUpperCase(identifier);
            lookupTypes = data().allMemberClasstypesCaseInsensitive;
         }

         return lookupTypes.contains(lookupIdentifier);
      }
   }

   public ClassType accessMemberClasstype(int identifier, boolean caseSensitive, int parameterTypeCount, Entity referingClasstypeOrPackage, FileEntry file) throws UnknownEntityException, AmbiguousEntityException {
      if (data().superClasstypesLoading) {
         MapOfInt<ClassType> lookupTypes = data().memberClasstypes;
         int lookupIdentifier = identifier;
         if (!caseSensitive) {
            if (data().memberClasstypesCaseInsensitive == null) {
               data().memberClasstypesCaseInsensitive = new MapOfInt<>(mySpace);
               data().memberClasstypes.DEFAULT_ITERATOR.init();

               while(data().memberClasstypes.DEFAULT_ITERATOR.hasMoreElements()) {
                  int ident = myIdentifiers.toUpperCase(data().memberClasstypes.DEFAULT_ITERATOR.nextKey());
                  ClassType type = data().memberClasstypes.DEFAULT_ITERATOR.nextValue();
                  data().memberClasstypesCaseInsensitive.insert(ident, type);
               }
            }

            lookupIdentifier = myIdentifiers.toUpperCase(identifier);
            lookupTypes = data().memberClasstypesCaseInsensitive;
         }

         ClassType foundtype = null;
         lookupTypes.DEFAULT_ITERATOR.init(lookupIdentifier);

         while(lookupTypes.DEFAULT_ITERATOR.hasMoreElements()) {
            ClassType classtype = lookupTypes.DEFAULT_ITERATOR.nextValue();
            if (classtype.isApplicable(file, parameterTypeCount) && classtype.isVisible(referingClasstypeOrPackage)) {
               if (foundtype != null) {
                  throw new AmbiguousEntityException();
               }

               foundtype = classtype;
            }
         }

         if (foundtype != null) {
            return foundtype;
         } else {
            throw new UnknownEntityException();
         }
      } else {
         loadSuperClasstypes();
         MapOfInt<ClassType> lookupTypes = data().allMemberClasstypes;
         int lookupIdentifier = identifier;
         if (!caseSensitive) {
            if (data().allMemberClasstypesCaseInsensitive == null) {
               data().allMemberClasstypesCaseInsensitive = new MapOfInt<>(mySpace);
               data().allMemberClasstypes.DEFAULT_ITERATOR.init();

               while(data().allMemberClasstypes.DEFAULT_ITERATOR.hasMoreElements()) {
                  int ident = myIdentifiers.toUpperCase(data().allMemberClasstypes.DEFAULT_ITERATOR.nextKey());
                  ClassType type = data().allMemberClasstypes.DEFAULT_ITERATOR.nextValue();
                  data().allMemberClasstypesCaseInsensitive.insert(ident, type);
               }
            }

            lookupIdentifier = myIdentifiers.toUpperCase(identifier);
            lookupTypes = data().allMemberClasstypesCaseInsensitive;
         }

         ClassType foundtype = null;
         lookupTypes.DEFAULT_ITERATOR.init(lookupIdentifier);

         while(lookupTypes.DEFAULT_ITERATOR.hasMoreElements()) {
            ClassType classtype = lookupTypes.DEFAULT_ITERATOR.nextValue();
            if (classtype.isApplicable(file, parameterTypeCount) && classtype.isVisible(referingClasstypeOrPackage)) {
               if (foundtype != null) {
                  throw new AmbiguousEntityException();
               }

               foundtype = classtype;
            }
         }

         if (foundtype != null) {
            return foundtype;
         } else {
            throw new UnknownEntityException();
         }
      }
   }

   @Override
   public int getModifiers() {
      loadSyntax();
      return data().modifiers;
   }

   public boolean isVisible(Entity referingClasstypeOrPackage) {
      if (myDeclarationNumber == 0) {
         return true;
      } else {
         loadSyntax();
         int modifiers = getModifiers();
         ClassType enclosingclasstype = getEnclosingClassType();
         if (Modifiers.isPublic(modifiers)) {
            return true;
         } else {
            if (Modifiers.isCSPrivate(modifiers) && referingClasstypeOrPackage.isClassType()) {
               if (((ClassType)referingClasstypeOrPackage).isEnclosedBy(enclosingclasstype)) {
                  return true;
               }

               if (enclosingclasstype.getNamespace() == ((ClassType)referingClasstypeOrPackage).getNamespace()
                  && enclosingclasstype.getIdentifier() == referingClasstypeOrPackage.getIdentifier()
                  && enclosingclasstype.isPartial()
                  && ((ClassType)referingClasstypeOrPackage).isPartial()) {
                  return true;
               }
            }

            if (Modifiers.isJavaPrivate(modifiers)
               && referingClasstypeOrPackage.isClassType()
               && getEnclosingTopLevelClassType() == referingClasstypeOrPackage.getEnclosingTopLevelClassType()) {
               return true;
            } else {
               if (Modifiers.isInternal(modifiers)) {
                  if (referingClasstypeOrPackage.isClassType()) {
                     if (((ClassType)referingClasstypeOrPackage).getAssembly() == getAssembly()) {
                        return true;
                     }
                  } else {
                     if (referingClasstypeOrPackage == mySpace.getRootNamespace()) {
                        return true;
                     }

                     SetOfInt assemblies = ((Namespace)referingClasstypeOrPackage).getAllAssemblies();
                     assemblies.DEFAULT_ITERATOR.init();

                     while(assemblies.DEFAULT_ITERATOR.hasMoreElements()) {
                        int assembly = assemblies.DEFAULT_ITERATOR.nextKey();
                        if (assembly == getAssembly()) {
                           return true;
                        }
                     }
                  }
               }

               if (Modifiers.isPackagePrivate(modifiers)) {
                  if (referingClasstypeOrPackage.isClassType()) {
                     if (((ClassType)referingClasstypeOrPackage).getNamespace() == getNamespace()) {
                        return true;
                     }
                  } else if (referingClasstypeOrPackage == getNamespace()) {
                     return true;
                  }
               }

               if (Modifiers.isProtected(modifiers)) {
                  if (referingClasstypeOrPackage.isNamespace()) {
                     return getNamespace() == referingClasstypeOrPackage;
                  } else {
                     if (this == referingClasstypeOrPackage) {
                        return true;
                     }

                     ClassType referingClassType = (ClassType)referingClasstypeOrPackage;
                     ClassType enclclasstype = getEnclosingClassType();
                     if (referingClassType.isSubClassTypeOf(enclclasstype)) {
                        return true;
                     }

                     while(!referingClassType.isToplevel()) {
                        referingClassType = referingClassType.getEnclosingClassType();
                        if (referingClassType.isSubClassTypeOf(enclclasstype)) {
                           return true;
                        }
                     }
                  }
               }

               return false;
            }
         }
      }
   }

   public boolean isPackagePrivate() {
      loadSyntax();
      return Modifiers.isPackagePrivate(data().modifiers);
   }

   public boolean isSubClassTypeOf(Type superClasstype) {
      if (data().superClasstypesLoading) {
         return false;
      } else {
         loadSuperClasstypes();
         return data().allSuperClasstypes.contains(superClasstype);
      }
   }

   public int getSupertypeCount() {
      if (data().superTypesLoading) {
         return 0;
      } else {
         loadSupertypes();
         return data().superTypes.size();
      }
   }

   public Type getSupertype(int i) {
      loadSupertypes();
      return data().superTypes.get(i);
   }

   private void loadTypes() {
      loadSyntax();
      if (!data().typesLoaded) {
         data().typesLoaded = true;
         loadSupertypes();
         packMembers();
      }
   }

   private void packMembers() {
      Type canonicEntity = parameterizeCanonical();
      data().allMemberOperators.clear();
      data().memberOperators.DEFAULT_ITERATOR.init();

      while(data().memberOperators.DEFAULT_ITERATOR.hasMoreElements()) {
         data()
            .allMemberOperators
            .insert(data().memberOperators.DEFAULT_ITERATOR.nextKey(), data().memberOperators.DEFAULT_ITERATOR.nextValue());
      }

      for(int i = 0; i < data().superTypes.size(); ++i) {
         Type supertype = data().superTypes.get(i);
         ClassType superclasstype;
         if (supertype.isParameterizedType()) {
            superclasstype = ((ParameterizedType)supertype).getClassType();
         } else {
            superclasstype = (ClassType)supertype;
         }

         MapOfInt<Member> operators = superclasstype.getAllOperators();
         operators.DEFAULT_ITERATOR.init();

         while(operators.DEFAULT_ITERATOR.hasMoreElements()) {
            data().allMemberOperators.insert(operators.DEFAULT_ITERATOR.nextKey(), operators.DEFAULT_ITERATOR.nextValue());
         }
      }

      data().allMemberFields.clear();
      data().memberFields.DEFAULT_ITERATOR.init();

      while(data().memberFields.DEFAULT_ITERATOR.hasMoreElements()) {
         int identifier = data().memberFields.DEFAULT_ITERATOR.nextKey();
         Member field = data().memberFields.DEFAULT_ITERATOR.nextValue();
         if (field.isExplicitOverriding()) {
            data().allExplicitMemberFields.insert(identifier, field);
         } else {
            data().allMemberFields.insert(identifier, field);
         }

         if (canonicEntity != this) {
            data().containingTypesOfMembers.put(field, canonicEntity);
         }
      }

      if (isPartial()) {
         SetOf<ClassType> types = getAllPartialClasstypes();
         if (types != null) {
            types.DEFAULT_ITERATOR.init();

            while(types.DEFAULT_ITERATOR.hasMoreElements()) {
               ClassType classtype = types.DEFAULT_ITERATOR.nextKey();
               if (classtype != this) {
                  mySpace.declareInheritanceDependence(myFile, classtype);
                  MapOfInt<Member> memberFields = classtype.getDeclaredMemberFields();
                  memberFields.DEFAULT_ITERATOR.init();

                  while(memberFields.DEFAULT_ITERATOR.hasMoreElements()) {
                     int identifier = memberFields.DEFAULT_ITERATOR.nextKey();
                     Member field = memberFields.DEFAULT_ITERATOR.nextValue();
                     if (!field.isExplicitOverriding()) {
                        data().allMemberFields.insert(identifier, field);
                     }

                     if (field.getEnclosingClassType() != canonicEntity) {
                        data().containingTypesOfMembers.put(field, canonicEntity);
                     }
                  }
               }
            }
         }
      }

      label527:
      for(int i = 0; i < data().superTypes.size(); ++i) {
         Type supertype = data().superTypes.get(i);
         ClassType superclasstype;
         if (supertype.isParameterizedType()) {
            superclasstype = ((ParameterizedType)supertype).getClassType();
         } else {
            superclasstype = (ClassType)supertype;
         }

         if (superclasstype.isInterfaceType()) {
            for(int j = 0; j < data().superTypes.size(); ++j) {
               if (i != j) {
                  Type supertype2 = data().superTypes.get(j);
                  ClassType superclasstype2;
                  if (supertype2.isParameterizedType()) {
                     superclasstype2 = ((ParameterizedType)supertype2).getClassType();
                  } else {
                     superclasstype2 = (ClassType)supertype2;
                  }

                  if (superclasstype2.getAllSuperClasstypes().contains(superclasstype)) {
                     continue label527;
                  }
               }
            }
         }

         MapOfInt<Member> expFields = superclasstype.getAllExplicitMemberFields();
         expFields.DEFAULT_ITERATOR.init();

         while(expFields.DEFAULT_ITERATOR.hasMoreElements()) {
            int identifier = expFields.DEFAULT_ITERATOR.nextKey();
            Member field = expFields.DEFAULT_ITERATOR.nextValue();
            if (!Modifiers.isJavaPrivate(field.getModifiers())) {
               Type containingType = superclasstype.getContainingTypeOfMember(field);
               if (containingType.isClassType()) {
                  if (field.getEnclosingClassType() != containingType) {
                     data().containingTypesOfMembers.put(field, containingType);
                  }
               } else if (supertype.isClassType()) {
                  Type e;
                  if (supertype.isRawType()) {
                     e = ((ParameterizedType)containingType).getClassType();
                  } else {
                     e = containingType;
                  }

                  if (field.getEnclosingClassType() != e) {
                     data().containingTypesOfMembers.put(field, e);
                  }
               } else {
                  try {
                     Type type = ((ParameterizedType)supertype).replaceType(containingType);
                     if (field.getEnclosingClassType() != type) {
                        data().containingTypesOfMembers.put(field, type);
                     }
                  } catch (UnknownEntityException ignored) {
                  }
               }

               data().allExplicitMemberFields.insert(identifier, field);
            }
         }

         MapOfInt<Member> fields = superclasstype.getAllMemberFields();
         fields.DEFAULT_ITERATOR.init();

         label505:
         while(fields.DEFAULT_ITERATOR.hasMoreElements()) {
            int identifier = fields.DEFAULT_ITERATOR.nextKey();
            Member field = fields.DEFAULT_ITERATOR.nextValue();
            if (!Modifiers.isJavaPrivate(field.getModifiers())) {
               Type containingType = superclasstype.getContainingTypeOfMember(field);
               if (containingType.isClassType()) {
                  if (field.getEnclosingClassType() != containingType) {
                     data().containingTypesOfMembers.put(field, containingType);
                  }
               } else if (supertype.isClassType()) {
                  Type method2;
                  if (supertype.isRawType()) {
                     method2 = ((ParameterizedType)containingType).getClassType();
                  } else {
                     method2 = containingType;
                  }

                  if (field.getEnclosingClassType() != method2) {
                     data().containingTypesOfMembers.put(field, method2);
                  }
               } else {
                  try {
                     Type type = ((ParameterizedType)supertype).replaceType(containingType);
                     if (field.getEnclosingClassType() != type) {
                        data().containingTypesOfMembers.put(field, type);
                     }
                  } catch (UnknownEntityException ignored) {
                  }
               }

               if (data().memberFields.contains(identifier)) {
                  data().memberFields.DEFAULT_ITERATOR.init(identifier);

                  while(data().memberFields.DEFAULT_ITERATOR.hasMoreElements()) {
                     Member memberfield = data().memberFields.DEFAULT_ITERATOR.nextValue();
                     if (memberfield.isExplicitOverriding() && memberfield.getExplicitOverridingType() == getContainingTypeOfMember(field)) {
                        memberfield.declareOverriddenMember(field);
                        continue label505;
                     }
                  }

                  data().memberFields.DEFAULT_ITERATOR.init(identifier);

                  while(data().memberFields.DEFAULT_ITERATOR.hasMoreElements()) {
                     Member memberfield = data().memberFields.DEFAULT_ITERATOR.nextValue();
                     if (!memberfield.isExplicitOverriding()) {
                        if (haveOverridingFieldModifiers(memberfield, field)) {
                           memberfield.declareOverriddenMember(field);
                           continue label505;
                        }

                        if (haveHidingFieldModifiers(memberfield, field)) {
                           continue label505;
                        }
                     }
                  }
               }

               if (data().allMemberFields.contains(identifier)) {
                  data().allMemberFields.DEFAULT_ITERATOR.init(identifier);

                  while(data().allMemberFields.DEFAULT_ITERATOR.hasMoreElements()) {
                     Member field2 = data().allMemberFields.DEFAULT_ITERATOR.nextValue();
                     if (field != field2) {
                        continue label505;
                     }
                  }
               }

               if (field.getEnclosingClassType().isInterfaceType() && data().allExplicitMemberFields.contains(identifier)) {
                  data().allExplicitMemberFields.DEFAULT_ITERATOR.init(identifier);

                  while(data().allExplicitMemberFields.DEFAULT_ITERATOR.hasMoreElements()) {
                     Member field2 = data().allExplicitMemberFields.DEFAULT_ITERATOR.nextValue();
                     if (field != field2) {
                        continue label505;
                     }
                  }
               }

               data().allMemberFields.insert(identifier, field);
            }
         }
      }

      data().memberConstructors.DEFAULT_ITERATOR.init();

      while(data().memberConstructors.DEFAULT_ITERATOR.hasMoreElements()) {
         Member constructor = data().memberConstructors.DEFAULT_ITERATOR.nextKey();
         if (canonicEntity != this) {
            data().containingTypesOfMembers.put(constructor, canonicEntity);
         }
      }

      if (isPartial()) {
         SetOf<ClassType> types = getAllPartialClasstypes();
         if (types != null) {
            types.DEFAULT_ITERATOR.init();

            while(types.DEFAULT_ITERATOR.hasMoreElements()) {
               ClassType classtype = types.DEFAULT_ITERATOR.nextKey();
               if (classtype != this) {
                  mySpace.declareInheritanceDependence(myFile, classtype);
                  SetOf<Member> memberConstructors = classtype.getDeclaredConstructors();
                  memberConstructors.DEFAULT_ITERATOR.init();

                  while(memberConstructors.DEFAULT_ITERATOR.hasMoreElements()) {
                     Member constructor = memberConstructors.DEFAULT_ITERATOR.nextKey();
                     if (constructor.getEnclosingClassType() != canonicEntity) {
                        data().containingTypesOfMembers.put(constructor, canonicEntity);
                     }
                  }
               }
            }
         }
      }

      data().allMemberMethods.clear();
      data().memberMethods.DEFAULT_ITERATOR.init();

      while(data().memberMethods.DEFAULT_ITERATOR.hasMoreElements()) {
         int identifier = data().memberMethods.DEFAULT_ITERATOR.nextKey();
         Member method = data().memberMethods.DEFAULT_ITERATOR.nextValue();
         if (method.isExplicitOverriding()) {
            data().allExplicitMemberMethods.insert(identifier, method);
         } else {
            data().allMemberMethods.insert(identifier, method);
         }

         if (canonicEntity != this) {
            data().containingTypesOfMembers.put(method, canonicEntity);
         }
      }

      if (isPartial()) {
         SetOf<ClassType> types = getAllPartialClasstypes();
         if (types != null) {
            types.DEFAULT_ITERATOR.init();

            while(types.DEFAULT_ITERATOR.hasMoreElements()) {
               ClassType classtype = types.DEFAULT_ITERATOR.nextKey();
               if (classtype != this) {
                  mySpace.declareInheritanceDependence(myFile, classtype);
                  MapOfInt<Member> memberMethods = classtype.getDeclaredMemberMethods();
                  memberMethods.DEFAULT_ITERATOR.init();

                  while(memberMethods.DEFAULT_ITERATOR.hasMoreElements()) {
                     int identifier = memberMethods.DEFAULT_ITERATOR.nextKey();
                     Member method = memberMethods.DEFAULT_ITERATOR.nextValue();
                     if (!method.isExplicitOverriding()) {
                        data().allMemberMethods.insert(identifier, method);
                     }

                     if (method.getEnclosingClassType() != canonicEntity) {
                        data().containingTypesOfMembers.put(method, canonicEntity);
                     }
                  }
               }
            }
         }
      }

      label407:
      for(int i = 0; i < data().superTypes.size(); ++i) {
         Type supertype = data().superTypes.get(i);
         ClassType superclasstype;
         if (supertype.isParameterizedType()) {
            superclasstype = ((ParameterizedType)supertype).getClassType();
         } else {
            superclasstype = (ClassType)supertype;
         }

         if (superclasstype.isInterfaceType()) {
            for(int j = 0; j < data().superTypes.size(); ++j) {
               if (i != j) {
                  Type supertype2 = data().superTypes.get(j);
                  ClassType superclasstype2;
                  if (supertype2.isParameterizedType()) {
                     superclasstype2 = ((ParameterizedType)supertype2).getClassType();
                  } else {
                     superclasstype2 = (ClassType)supertype2;
                  }

                  if (superclasstype2.getAllSuperClasstypes().contains(superclasstype)) {
                     continue label407;
                  }
               }
            }
         }

         MapOfInt<Member> explMethods = superclasstype.getAllExplicitMemberMethods();
         explMethods.DEFAULT_ITERATOR.init();

         while(explMethods.DEFAULT_ITERATOR.hasMoreElements()) {
            int identifier = explMethods.DEFAULT_ITERATOR.nextKey();
            Member method = explMethods.DEFAULT_ITERATOR.nextValue();

            try {
               if ((
                     !isInterfaceType()
                        || i == data().superTypes.size() - 1
                        || method.getEnclosingClassType() != mySpace.getRootClasstype(myFile,getLanguage())
                  )
                  && !Modifiers.isJavaPrivate(method.getModifiers())) {
                  Type containingType = superclasstype.getContainingTypeOfMember(method);
                  if (containingType.isClassType()) {
                     if (method.getEnclosingClassType() != containingType) {
                        data().containingTypesOfMembers.put(method, containingType);
                     }
                  } else if (supertype.isClassType()) {
                     Type var61;
                     if (supertype.isRawType()) {
                        var61 = ((ParameterizedType)containingType).getClassType();
                     } else {
                        var61 = containingType;
                     }

                     if (method.getEnclosingClassType() != var61) {
                        data().containingTypesOfMembers.put(method, var61);
                     }
                  } else {
                     try {
                        Type type = ((ParameterizedType)supertype).replaceType(containingType);
                        if (method.getEnclosingClassType() != type) {
                           data().containingTypesOfMembers.put(method, type);
                        }
                     } catch (UnknownEntityException ignored) {
                     }
                  }

                  data().allExplicitMemberMethods.insert(identifier, method);
               }
            } catch (UnknownEntityException ignored) {
            }
         }

         MapOfInt<Member> methods = superclasstype.getAllMemberMethods();
         methods.DEFAULT_ITERATOR.init();

         label384:
         while(methods.DEFAULT_ITERATOR.hasMoreElements()) {
            int identifier = methods.DEFAULT_ITERATOR.nextKey();
            Member method = methods.DEFAULT_ITERATOR.nextValue();

            try {
               if ((
                     !isInterfaceType()
                        || i == data().superTypes.size() - 1
                        || method.getEnclosingClassType() != mySpace.getRootClasstype(myFile,getLanguage())
                  )
                  && !Modifiers.isJavaPrivate(method.getModifiers())) {
                  Type containingType = superclasstype.getContainingTypeOfMember(method);
                  if (containingType.isClassType()) {
                     if (method.getEnclosingClassType() != containingType) {
                        data().containingTypesOfMembers.put(method, containingType);
                     }
                  } else if (supertype.isClassType()) {
                     Type var69;
                     if (supertype.isRawType()) {
                        var69 = ((ParameterizedType)containingType).getClassType();
                     } else {
                        var69 = containingType;
                     }

                     if (method.getEnclosingClassType() != var69) {
                        data().containingTypesOfMembers.put(method, var69);
                     }
                  } else {
                     try {
                        Type type = ((ParameterizedType)supertype).replaceType(containingType);
                        if (method.getEnclosingClassType() != type) {
                           data().containingTypesOfMembers.put(method, type);
                        }
                     } catch (UnknownEntityException ignored) {
                     }
                  }

                  if (data().memberMethods.contains(identifier)) {
                     data().memberMethods.DEFAULT_ITERATOR.init(identifier);

                     while(data().memberMethods.DEFAULT_ITERATOR.hasMoreElements()) {
                        Member membermethod = data().memberMethods.DEFAULT_ITERATOR.nextValue();
                        if (haveMatchingOverrideMethodSignatures(canonicEntity, membermethod, method)
                           && membermethod.isExplicitOverriding()
                           && membermethod.getExplicitOverridingType() == getContainingTypeOfMember(method)) {
                           membermethod.declareOverriddenMember(method);
                           continue label384;
                        }
                     }

                     data().memberMethods.DEFAULT_ITERATOR.init(identifier);

                     while(data().memberMethods.DEFAULT_ITERATOR.hasMoreElements()) {
                        Member membermethod = data().memberMethods.DEFAULT_ITERATOR.nextValue();
                        if (haveMatchingOverrideMethodSignatures(canonicEntity, membermethod, method) && !membermethod.isExplicitOverriding()) {
                           if (haveOverridingMethodModifiers(membermethod, method)) {
                              membermethod.declareOverriddenMember(method);
                              continue label384;
                           }

                           if (haveHidingMethodModifiers(membermethod, method)) {
                              continue label384;
                           }
                        }
                     }
                  }

                  if (data().allMemberMethods.contains(identifier)) {
                     data().allMemberMethods.DEFAULT_ITERATOR.init(identifier);

                     while(data().allMemberMethods.DEFAULT_ITERATOR.hasMoreElements()) {
                        Member method2 = data().allMemberMethods.DEFAULT_ITERATOR.nextValue();
                        if (method != method2 && haveMatchingOverrideMethodSignatures(canonicEntity, method2, method)) {
                           continue label384;
                        }
                     }
                  }

                  if (method.getEnclosingClassType().isInterfaceType() && data().allExplicitMemberMethods.contains(identifier)) {
                     data().allExplicitMemberMethods.DEFAULT_ITERATOR.init(identifier);

                     while(data().allExplicitMemberMethods.DEFAULT_ITERATOR.hasMoreElements()) {
                        Member method2 = data().allExplicitMemberMethods.DEFAULT_ITERATOR.nextValue();
                        if (method != method2 && haveMatchingOverrideMethodSignatures(canonicEntity, method2, method)) {
                           continue label384;
                        }
                     }
                  }

                  data().allMemberMethods.insert(identifier, method);
               }
            } catch (UnknownEntityException ignored) {
            }
         }
      }
   }

   private boolean haveMatchingOverrideMethodSignatures(Type type, Member method, Member overriddenmethod) {
      try {
         if (method.getParameterCount() != overriddenmethod.getParameterCount()) {
            return false;
         } else if (method.getMethodParametertypeCount(type) != overriddenmethod.getMethodParametertypeCount(type)) {
            return false;
         } else {
            if (method.getMethodParametertypeCount(type) > 0) {
               if (!getLanguage().getTypeSystem().inheritsBoundTypes()) {
                  int count = method.getMethodParametertypeCount(type);

                  for(int i = 0; i < count; ++i) {
                     MethodParameterType methodparametertype1 = method.getMethodParameterType(i);
                     MethodParameterType methodparametertype2 = overriddenmethod.getMethodParameterType(i);
                     int c = methodparametertype1.getBoundTypeCount();
                     if (c != methodparametertype2.getBoundTypeCount()) {
                        return false;
                     }

                     for(int j = 0; j < c; ++j) {
                        Type boundtype1 = methodparametertype1.getBoundType(type, j);
                        Type boundtype2 = methodparametertype2.getBoundType(type, j);
                        if (!boundtype1.isEqualTo(boundtype2, method, overriddenmethod)) {
                           return false;
                        }
                     }
                  }
               }

               int c = method.getParameterCount();

               for(int i = 0; i < c; ++i) {
                  if (method.getModifiersOfParameter(i) != overriddenmethod.getModifiersOfParameter(i)) {
                     return false;
                  }

                  if (!method.getTypeOfParameter(type, i).isEqualTo(overriddenmethod.getTypeOfParameter(type, i), method, overriddenmethod)) {
                     return false;
                  }
               }
            } else {
               int c = method.getParameterCount();

               for(int i = 0; i < c; ++i) {
                  if (method.getModifiersOfParameter(i) != overriddenmethod.getModifiersOfParameter(i)) {
                     return false;
                  }

                  Type typeOfParameter = method.getTypeOfParameter(type, i);
                  Type typeOfOveriddenParameter = overriddenmethod.getTypeOfParameter(type, i);
                  if (!typeOfParameter.isEqualTo(typeOfOveriddenParameter, method, overriddenmethod)
                     && (
                        typeOfParameter.isParameterizedType() && typeOfOveriddenParameter.isParameterizedType()
                           || !typeOfParameter.getErasedType().isEqualTo(typeOfOveriddenParameter.getErasedType())
                              && !typeOfOveriddenParameter.getErasedType().isEqualTo(typeOfParameter.getErasedType())
                     )) {
                     return false;
                  }
               }
            }

            return true;
         }
      } catch (UnknownEntityException var12) {
         return false;
      }
   }

   private boolean haveHidingMethodModifiers(Member method, Member overriddenmethod) {
      return !haveOverridingMethodModifiers(method, overriddenmethod);
   }

   private boolean haveOverridingMethodModifiers(Member method, Member overriddenmethod) {
      return !Modifiers.isNew(method.getModifiers())
         && (
            Modifiers.isAbstract(overriddenmethod.getModifiers())
               || Modifiers.isOverride(overriddenmethod.getModifiers())
               || Modifiers.isVirtual(overriddenmethod.getModifiers())
         )
         && (
            Modifiers.isAbstract(method.getModifiers())
               || overriddenmethod.getEnclosingClassType().isInterfaceType()
               || Modifiers.isOverride(method.getModifiers())
         );
   }

   private boolean haveHidingFieldModifiers(Member field, Member overriddenfield) {
      return !haveOverridingFieldModifiers(field, overriddenfield);
   }

   private boolean haveOverridingFieldModifiers(Member field, Member overriddenfield) {
      return !Modifiers.isNew(field.getModifiers())
         && (
            Modifiers.isAbstract(overriddenfield.getModifiers())
               || Modifiers.isOverride(overriddenfield.getModifiers())
               || Modifiers.isVirtual(overriddenfield.getModifiers())
         )
         && (
            Modifiers.isAbstract(field.getModifiers())
               || overriddenfield.getEnclosingClassType().isInterfaceType()
               || Modifiers.isOverride(field.getModifiers())
         );
   }

   private void loadSuperClasstypes() {
      loadSyntax();
      if (!data().superClasstypesLoaded) {
         if (data().hasSuperClasstypes) {
            data().superClasstypesLoading = true;
            mySpace.loadSuperClasstypes(myFile,getLanguage(), this);
            data().superClasstypesLoading = false;
         } else {
            mySpace.loadDefaultSuperClasstypes(myFile, getLanguage(),this);
         }
      }
   }

   private void loadSupertypes() {
      loadSuperClasstypes();
      if (!data().superTypesLoaded) {
         boolean mustAnalyze = false;
         data().allSuperClasstypes.DEFAULT_ITERATOR.init();

         while(data().allSuperClasstypes.DEFAULT_ITERATOR.hasMoreElements()) {
            if (data().allSuperClasstypes.DEFAULT_ITERATOR.nextKey().getAbsoluteParametertypeCount() > 0) {
               mustAnalyze = true;
               break;
            }
         }

         if (mustAnalyze) {
            data().superTypesLoading = true;
            mySpace.loadSuperTypes(myFile, getLanguage(),this);
            data().superTypesLoading = false;
            data().superTypesLoaded = true;
         } else {
            data().superTypesLoaded = true;

            for(int i = 0; i < data().superClasstypes.size(); ++i) {
               data().superTypes.set(i, data().superClasstypes.get(i));
            }
         }

         packSuperTypes();
      }
   }

   private void packSuperClasstypes() {
      if (isPartial()) {
         SetOf<ClassType> types = getAllPartialClasstypes();
         if (types != null) {
            types.DEFAULT_ITERATOR.init();

            while(types.DEFAULT_ITERATOR.hasMoreElements()) {
               ClassType classtype = types.DEFAULT_ITERATOR.nextKey();
               if (classtype != this) {
                  classtype.loadSuperClasstypes();
                  ListOf<ClassType> superClasstypes = classtype.data().superClasstypes;
                  if (superClasstypes != null && superClasstypes.size() > 0) {
                     try {
                        if (!superClasstypes.get(0).isInterfaceType() && data().superClasstypes.get(0) == mySpace.getRootClasstype(myFile,getLanguage())) {
                           data().superClasstypes.set(0, superClasstypes.get(0));
                        }
                     } catch (UnknownEntityException ignored) {
                     }

                     for(int i = 0; i < superClasstypes.size(); ++i) {
                        if (!data().superClasstypes.contains(superClasstypes.get(i))) {
                           data().superClasstypes.add(superClasstypes.get(i));
                        }
                     }
                  }
               }
            }
         }
      }

      if (data().allSuperClasstypes == null) {
         data().allSuperClasstypes = new SetOf<>(mySpace);
      }

      for(int i = 0; i < data().superClasstypes.size(); ++i) {
         data().allSuperClasstypes.put(data().superClasstypes.get(i).getAllSuperClasstypes());
      }

      data().allSuperClasstypes.put(this);
      if (data().allMemberClasstypes == null) {
         data().allMemberClasstypes = new MapOfInt<>(mySpace);
      } else {
         data().allMemberClasstypes.clear();
      }

      for(int i = 0; i < data().superClasstypes.size(); ++i) {
         MapOfInt<ClassType> members = data().superClasstypes.get(i).getAllMemberClasstypes();
         members.DEFAULT_ITERATOR.init();

         while(members.DEFAULT_ITERATOR.hasMoreElements()) {
            int identifier = members.DEFAULT_ITERATOR.nextKey();
            ClassType classtype = members.DEFAULT_ITERATOR.nextValue();
            if (!Modifiers.isJavaPrivate(classtype.getModifiers())) {
               data().allMemberClasstypes.insert(identifier, classtype);
            }
         }
      }

      data().memberClasstypes.DEFAULT_ITERATOR.init();

      while(data().memberClasstypes.DEFAULT_ITERATOR.hasMoreElements()) {
         int identifier = data().memberClasstypes.DEFAULT_ITERATOR.nextKey();
         ClassType classtype = data().memberClasstypes.DEFAULT_ITERATOR.nextValue();
         data().allMemberClasstypes.put(identifier, classtype);
      }

      data().allSuperClasstypes.DEFAULT_ITERATOR.init();

      while(data().allSuperClasstypes.DEFAULT_ITERATOR.hasMoreElements()) {
         mySpace.declareInheritanceDependence(myFile, data().allSuperClasstypes.DEFAULT_ITERATOR.nextKey());
      }
   }

   private void loadSyntax() {
      if (!data().syntaxLoaded) {
         data().syntaxLoaded = true;
         mySpace.loadSyntax(myFile,getLanguage());
      }
   }

   private void packSuperTypes() {
      if (isPartial()) {
         SetOf<ClassType> types = getAllPartialClasstypes();
         if (types != null) {
            types.DEFAULT_ITERATOR.init();

            while(types.DEFAULT_ITERATOR.hasMoreElements()) {
               ClassType classtype = types.DEFAULT_ITERATOR.nextKey();
               if (classtype != this) {
                  classtype.loadSupertypes();
                  ListOf<Type> superTypes = classtype.data().superTypes;
                  if (superTypes != null) {
                     try {
                        if (!superTypes.get(0).isInterfaceType()
                           && !data().superTypes.get(0).isInterfaceType()
                           && data().superTypes.get(0) == mySpace.getRootClasstype(myFile,getLanguage())) {
                           data().superTypes.set(0, superTypes.get(0));
                        }
                     } catch (UnknownEntityException ignored) {
                     }

                     for(int i = 0; i < superTypes.size(); ++i) {
                        if (!data().superClasstypes.contains(superTypes.get(i))) {
                           data().superTypes.add(superTypes.get(i));
                        }
                     }
                  }
               }
            }
         }
      }

      if (data().allSuperTypes == null) {
         data().allSuperTypes = new SetOf<>(mySpace);
      }

      for(int i = 0; i < data().superTypes.size(); ++i) {
         Type supertype = data().superTypes.get(i);
         if (supertype.isParameterizedType()) {
            ClassType classtype = ((ParameterizedType)supertype).getClassType();
            SetOf<Type> types = classtype.getAllSuperTypes();
            types.DEFAULT_ITERATOR.init();

            while(types.DEFAULT_ITERATOR.hasMoreElements()) {
               Type type = types.DEFAULT_ITERATOR.nextKey();

               try {
                  data().allSuperTypes.put(((ParameterizedType)supertype).replaceType(type));
               } catch (UnknownEntityException ignored) {
               }
            }
         } else if (supertype.isRawType()) {
            data().allSuperTypes.put(((ClassType)supertype).getAllSuperClasstypes());
         } else {
            data().allSuperTypes.put(((ClassType)supertype).getAllSuperTypes());
         }
      }

      data().allSuperTypes.put(parameterizeCanonical());
      if (data().allMemberTypes == null) {
         data().allMemberTypes = new MapOfInt<>(mySpace);
      } else {
         data().allMemberTypes.clear();
      }

      for(int i = 0; i < data().superTypes.size(); ++i) {
         Type supertype = data().superTypes.get(i);
         ClassType superclasstype;
         if (supertype.isParameterizedType()) {
            superclasstype = ((ParameterizedType)supertype).getClassType();
         } else {
            superclasstype = (ClassType)supertype;
         }

         MapOfInt<Type> members = superclasstype.getAllMemberTypes();
         members.DEFAULT_ITERATOR.init();

         while(members.DEFAULT_ITERATOR.hasMoreElements()) {
            int identifier = members.DEFAULT_ITERATOR.nextKey();
            Type membertype = members.DEFAULT_ITERATOR.nextValue();
            ClassType memberclasstype;
            if (membertype.isParameterizedType()) {
               memberclasstype = ((ParameterizedType)membertype).getClassType();
            } else {
               memberclasstype = (ClassType)membertype;
            }

            if (!Modifiers.isJavaPrivate(superclasstype.getModifiers())) {
               if (supertype.isParameterizedType()) {
                  try {
                     data().allMemberTypes.insert(identifier, ((ParameterizedType)supertype).replaceType(membertype));
                  } catch (UnknownEntityException ignored) {
                  }
               } else if (membertype.isRawType()) {
                  data().allMemberTypes.insert(identifier, membertype);
               } else {
                  data().allMemberTypes.insert(identifier, memberclasstype);
               }
            }
         }
      }

      data().memberClasstypes.DEFAULT_ITERATOR.init();

      while(data().memberClasstypes.DEFAULT_ITERATOR.hasMoreElements()) {
         int identifier = data().memberClasstypes.DEFAULT_ITERATOR.nextKey();
         ClassType classtype = data().memberClasstypes.DEFAULT_ITERATOR.nextValue();
         data().allMemberTypes.put(identifier, classtype.parameterizeCanonical());
      }
   }

   private static class Data {
      public boolean syntaxLoaded;
      public boolean typesLoaded;
      public int idline;
      public int idstartcolumn;
      public int idendcolumn;
      public int modifiersstartline;
      public int modifiersendline;
      public int modifiersstartcolumn;
      public int modifiersendcolumn;
      public int startline;
      public int startcolumn;
      public int endline;
      public int endcolumn;
      public int modifiers;
      public boolean hasSuperClasstypes;
      public boolean isanonymous;
      public boolean islocal;
      public boolean inStaticMethod;
      public boolean hasDocumentation;
      public boolean superClasstypesLoaded;
      public boolean superClasstypesLoading;
      public ListOf<ClassType> superClasstypes;
      public boolean superTypesLoaded;
      public boolean superTypesLoading;
      public ListOf<Type> superTypes;
      public SetOf<ClassType> allSuperClasstypes;
      public SetOf<Type> allSuperTypes;
      public boolean cycliclyDefined;
      public boolean corruptedSupertypes;
      public MapOfInt<ClassType> allMemberClasstypes;
      public MapOfInt<Type> allMemberTypes;
      public MapOfInt<ClassType> memberClasstypes;
      public MapOfInt<ParameterType> memberParametertypes;
      public int absoluteTypeParameterCount;
      public ListOf<ParameterType> typeParameters;
      public ListOf<ParameterType> absoluteTypeParameters;
      public ListOf<Member> inheritedMethodPairs;
      public MapOfInt<Member> memberFields;
      public MapOfInt<Member> memberMethods;
      public SetOf<Member> memberConstructors;
      public MapOfInt<Member> allMemberFields;
      public MapOfInt<Member> allMemberMethods;
      public MapOfInt<Member> allExplicitMemberFields;
      public MapOfInt<Member> allExplicitMemberMethods;
      public MapOf<Member, Type> containingTypesOfMembers;
      public MapOfInt<Member> memberOperators;
      public MapOfInt<Member> allMemberOperators;
      public Type delegateOrEnumtype;
      public MapOfInt<Member> allMemberFieldsCaseInsensitive;
      public MapOfInt<Member> allMemberMethodsCaseInsensitive;
      public MapOfInt<Type> allMemberTypesCaseInsensitive;
      public MapOfInt<ClassType> memberClasstypesCaseInsensitive;
      public MapOfInt<ClassType> allMemberClasstypesCaseInsensitive;

      private Data() {
      }
   }
}
