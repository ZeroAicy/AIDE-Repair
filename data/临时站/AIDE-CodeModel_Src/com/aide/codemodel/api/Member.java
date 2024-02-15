package com.aide.codemodel.api;

import java.io.IOException;

import com.aide.codemodel.abstraction.Language;

import com.aide.codemodel.api.collections.FunctionOfIntInt;
import com.aide.codemodel.api.collections.ListOf;
import com.aide.codemodel.api.collections.ListOfInt;
import com.aide.codemodel.api.collections.MapOf;
import com.aide.codemodel.api.collections.MapOfInt;
import com.aide.codemodel.api.collections.SetOf;
import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;
import com.aide.codemodel.api.excpetions.UnknownEntityException;

public final class Member extends Entity {
   private static final int PROPERTY_FLAG = 1;
   private static final int SET_FLAG = 2;
   private static final int GET_FLAG = 4;
   private static final int CONSTRUCTOR_FLAG = 8;
   private static final int INDEXER_FLAG = 16;
   private static final int FIELD_FLAG = 32;
   private static final int METHOD_FLAG = 64;
   private static final int PROPERTY_METHOD_FLAG = 128;
   private final FileSpace filespace;
   private final EntitySpace space;
   private final IdentifierSpace identifiers;
   private int id;
   private FileEntry file;
   private int declarationNumber;
   private Data data;

   private Data data() {
      if (this.data == null) {
         this.data = new Data();
      }
      return this.data;
   }
   
   public Member(EntitySpace space, IdentifierSpace identifiers, FileSpace filespace) {
      super(filespace,space);
      this.space = space;
      this.identifiers = identifiers;
      this.filespace = filespace;
   }
   
   public Member(EntitySpace space, IdentifierSpace identifiers, FileSpace filespace, FileEntry file, Language language, int declarationNumber) {
      super(filespace,space);
      this.space = space;
      this.identifiers = identifiers;
      this.filespace = filespace;
      this.id = space.declareEntity(this);
      this.file = file;
      this.declarationNumber = declarationNumber;
      configureLanguage(language);
   }

   @Override
   public void load(StoreInputStream stream) throws IOException {
      super.load(stream);
      this.id = stream.readInt();
      this.file = this.filespace.getFileEntry(stream.readInt());
      this.declarationNumber = stream.readInt();
      if (stream.readBoolean()) {
         this.data = new Data();
         this.data.modifiersstartline = stream.readInt();
         this.data.modifiersstartcolumn = stream.readInt();
         this.data.modifiersendline = stream.readInt();
         this.data.modifiersendcolumn = stream.readInt();
         this.data.startline = stream.readInt();
         this.data.startcolumn = stream.readInt();
         this.data.endline = stream.readInt();
         this.data.endcolumn = stream.readInt();
         this.data.idline = stream.readInt();
         this.data.idstartcolumn = stream.readInt();
         this.data.idendcolumn = stream.readInt();
         this.data.classtype = (ClassType)this.space.getEntity(stream.readInt());
         this.data.type = (Type)this.space.getEntity(stream.readInt());
         this.data.modifiers = stream.readInt();
         this.data.hasDocumentation = stream.readBoolean();
         this.data.hasinitializer = stream.readBoolean();
         this.data.typesLoaded = stream.readBoolean();
         this.data.syntaxLoaded = stream.readBoolean();
         this.data.identifier = stream.readInt();
         if (stream.readBoolean()) {
            this.data.stringvalue = stream.readUTF();
         }

         this.data.hasstringvalue = stream.readBoolean();
         this.data.value = stream.readLong();
         this.data.hasvalue = stream.readBoolean();
         this.data.valueLoaded = stream.readBoolean();
         this.data.overriddentype = (Type)this.space.getEntity(stream.readInt());
         this.data.flags = stream.readInt();
         this.data.operator = stream.readInt();
         this.data.hasVarargs = stream.readBoolean();
         if (stream.readBoolean()) {
            this.data.parameterTypes = new ListOf<>(this.space, stream);
         }

         if (stream.readBoolean()) {
            this.data.parameterModifiers = new ListOfInt(stream);
         }

         if (stream.readBoolean()) {
            this.data.parameterIdentifiers = new ListOfInt(stream);
         }

         if (stream.readBoolean()) {
            this.data.exceptions = new ListOf<>(this.space, stream);
         }

         if (stream.readBoolean()) {
            this.data.overriddenmembers = new SetOf<>(this.space, stream);
         }

         if (stream.readBoolean()) {
            this.data.memberParametertypes = new MapOfInt<>(this.space, stream);
         }

         if (stream.readBoolean()) {
            this.data.methodparametertypes = new SetOf<>(this.space, stream);
         }

         if (stream.readBoolean()) {
            this.data.methodparametertypev = new ListOf<>(this.space, stream);
         }
      }
   }

   @Override
   public void store(StoreOutputStream stream) throws IOException {
      stream.writeInt(this.id);
      stream.writeInt(this.file.getID());
      stream.writeInt(this.declarationNumber);
      stream.writeBoolean(this.data != null);
      if (this.data != null) {
         stream.writeInt(this.data.modifiersstartline);
         stream.writeInt(this.data.modifiersstartcolumn);
         stream.writeInt(this.data.modifiersendline);
         stream.writeInt(this.data.modifiersendcolumn);
         stream.writeInt(this.data.startline);
         stream.writeInt(this.data.startcolumn);
         stream.writeInt(this.data.endline);
         stream.writeInt(this.data.endcolumn);
         stream.writeInt(this.data.idline);
         stream.writeInt(this.data.idstartcolumn);
         stream.writeInt(this.data.idendcolumn);
         stream.writeInt(this.space.getID(this.data.classtype));
         stream.writeInt(this.space.getID(this.data.type));
         stream.writeInt(this.data.modifiers);
         stream.writeBoolean(this.data.hasDocumentation);
         stream.writeBoolean(this.data.hasinitializer);
         stream.writeBoolean(this.data.typesLoaded);
         stream.writeBoolean(this.data.syntaxLoaded);
         stream.writeInt(this.data.identifier);
         stream.writeBoolean(this.data.stringvalue != null);
         if (this.data.stringvalue != null) {
            stream.writeUTF(this.data.stringvalue);
         }

         stream.writeBoolean(this.data.hasstringvalue);
         stream.writeLong(this.data.value);
         stream.writeBoolean(this.data.hasvalue);
         stream.writeBoolean(this.data.valueLoaded);
         stream.writeInt(this.space.getID(this.data.overriddentype));
         stream.writeInt(this.data.flags);
         stream.writeInt(this.data.operator);
         stream.writeBoolean(this.data.hasVarargs);
         stream.writeBoolean(this.data.parameterTypes != null);
         if (this.data.parameterTypes != null) {
            this.data.parameterTypes.store(stream);
         }

         stream.writeBoolean(this.data.parameterModifiers != null);
         if (this.data.parameterModifiers != null) {
            this.data.parameterModifiers.store(stream);
         }

         stream.writeBoolean(this.data.parameterIdentifiers != null);
         if (this.data.parameterIdentifiers != null) {
            this.data.parameterIdentifiers.store(stream);
         }

         stream.writeBoolean(this.data.exceptions != null);
         if (this.data.exceptions != null) {
            this.data.exceptions.store(stream);
         }

         stream.writeBoolean(this.data.overriddenmembers != null);
         if (this.data.overriddenmembers != null) {
            this.data.overriddenmembers.store(stream);
         }

         stream.writeBoolean(this.data.memberParametertypes != null);
         if (this.data.memberParametertypes != null) {
            this.data.memberParametertypes.store(stream);
         }

         stream.writeBoolean(this.data.methodparametertypes != null);
         if (this.data.methodparametertypes != null) {
            this.data.methodparametertypes.store(stream);
         }

         stream.writeBoolean(this.data.methodparametertypev != null);
         if (this.data.methodparametertypev != null) {
            this.data.methodparametertypev.store(stream);
         }
      }
   }

   public void declareSyntax(
           ClassType classtype,
           int modifiers,
           int identifier,
           boolean hasinitializer,
           boolean isProperty,
           boolean isGetProperty,
           boolean isSetProperty,
           boolean hasDocumentation
   ) {
      this.data().classtype = classtype;
      this.data().hasinitializer = hasinitializer;
      this.data().modifiers = modifiers;
      this.data().hasDocumentation = hasDocumentation;
      this.data().identifier = identifier;
      this.data().flags = 0;
      Data var10000 = this.data();
      var10000.flags |= 32;
      if (isProperty) {
         var10000 = this.data();
         var10000.flags |= 1;
      }

      if (isGetProperty) {
         var10000 = this.data();
         var10000.flags |= 4;
      }

      if (isSetProperty) {
         var10000 = this.data();
         var10000.flags |= 2;
      }
   }

   public void declareSyntax(
           ClassType classtype,
           int modifiers,
           int typeParameterCount,
           int parameterCount,
           boolean hasVarargs,
           int operator,
           int identifier,
           boolean isconstructor,
           boolean isindexer,
           boolean isproperty,
           int exceptionCount,
           boolean hasDocumentation
   ) {
      this.data().classtype = classtype;
      this.data().typesLoaded = false;
      this.data().hasVarargs = hasVarargs;
      this.data().modifiers = modifiers;
      this.data().hasDocumentation = hasDocumentation;
      this.data().identifier = identifier;
      this.data().operator = operator;
      this.data().flags = 0;
      Data var10000 = this.data();
      var10000.flags |= 64;
      if (isproperty) {
         var10000 = this.data();
         var10000.flags |= 128;
      }

      if (isconstructor) {
         var10000 = this.data();
         var10000.flags |= 8;
      }

      if (isindexer) {
         var10000 = this.data();
         var10000.flags |= 16;
      }

      if (this.data().exceptions == null) {
         if (exceptionCount > 0) {
            this.data().exceptions = new ListOf<>(this.space, exceptionCount);

            for(int i = 0; i < exceptionCount; ++i) {
               this.data().exceptions.set(i, null);
            }
         }
      } else {
         this.data().exceptions.setSize(exceptionCount);

         for(int i = 0; i < exceptionCount; ++i) {
            this.data().exceptions.set(i, null);
         }
      }

      if (this.data().parameterModifiers == null) {
         if (parameterCount > 0) {
            this.data().parameterModifiers = new ListOfInt(parameterCount);

            for(int i = 0; i < parameterCount; ++i) {
               this.data().parameterModifiers.set(i, 0);
            }
         }
      } else {
         this.data().parameterModifiers.setSize(parameterCount);

         for(int i = 0; i < parameterCount; ++i) {
            this.data().parameterModifiers.set(i, 0);
         }
      }

      if (this.data().parameterIdentifiers == null) {
         if (parameterCount > 0) {
            this.data().parameterIdentifiers = new ListOfInt(parameterCount);

            for(int i = 0; i < parameterCount; ++i) {
               this.data().parameterIdentifiers.set(i, 0);
            }
         }
      } else {
         this.data().parameterIdentifiers.setSize(parameterCount);

         for(int i = 0; i < parameterCount; ++i) {
            this.data().parameterIdentifiers.set(i, 0);
         }
      }

      if (this.data().parameterTypes == null) {
         if (parameterCount > 0) {
            this.data().parameterTypes = new ListOf<>(this.space, parameterCount);

            for(int i = 0; i < parameterCount; ++i) {
               this.data().parameterTypes.set(i, null);
            }
         }
      } else {
         this.data().parameterTypes.setSize(parameterCount);

         for(int i = 0; i < parameterCount; ++i) {
            this.data().parameterTypes.set(i, null);
         }
      }

      if (this.data().memberParametertypes == null) {
         this.data().memberParametertypes = new MapOfInt<>(this.space);
      } else {
         this.data().memberParametertypes.clear();
      }

      if (typeParameterCount == 0) {
         this.data().methodparametertypes = null;
      } else {
         this.data().methodparametertypes = new SetOf<>(this.space);
      }

      if (typeParameterCount == 0) {
         this.data().methodparametertypev = null;
      } else {
         this.data().methodparametertypev = new ListOf<>(this.space, typeParameterCount);
      }
   }

   public void declareStringValue(String value) {
      this.data().stringvalue = value;
      this.data().hasstringvalue = true;
      this.data().valueLoaded = true;
   }

   public void declareValue(long value) {
      this.data().value = value;
      this.data().hasvalue = true;
      this.data().valueLoaded = true;
   }

   public void invalidate() {
      this.data = null;
   }

   public void declareVersion(int version) {
      this.data().version = version;
   }

   public void declareException(Type exceptiontype, int number) {
      this.data().exceptions.set(number, exceptiontype);
   }

   public void declareExplicitOverridingType(Type type) {
      this.data().overriddentype = type;
   }

   public void declareSyntaxOfParameter(int modifiers, int identifier, int number) {
      this.data().parameterModifiers.set(number, modifiers);
      this.data().parameterIdentifiers.set(number, identifier);
   }

   public void declareTypeOfParameter(Type type, int number) {
      this.data().parameterTypes.set(number, type);
   }

   void declareOverriddenMember(Member method) {
      if (method != this) {
         if (this.data().overriddenmembers == null) {
            this.data().overriddenmembers = new SetOf<>(this.space);
         }

         this.data().overriddenmembers.put(method);
      }
   }

   public void declarePositions(
           int identifierline,
           int identifierstartcolumn,
           int identifierendcolumn,
           int modifiersstartline,
           int modifiersstartcolumn,
           int modifiersendline,
           int modifiersendcolumn,
           int startline,
           int startcolumn,
           int endline,
           int endcolumn
   ) {
      this.data().idline = identifierline;
      this.data().idstartcolumn = identifierstartcolumn;
      this.data().idendcolumn = identifierendcolumn;
      this.data().modifiersstartline = modifiersstartline;
      this.data().modifiersstartcolumn = modifiersstartcolumn;
      this.data().modifiersendline = modifiersendline;
      this.data().modifiersendcolumn = modifiersendcolumn;
      this.data().startline = startline;
      this.data().startcolumn = startcolumn;
      this.data().endline = endline;
      this.data().endcolumn = endcolumn;
   }

   public void declareMethodParametertype(int number, int identifier, MethodParameterType methodparametertype) {
      this.data().memberParametertypes.put(identifier, methodparametertype);
      this.data().methodparametertypes.put(methodparametertype);
      this.data().methodparametertypev.set(number, methodparametertype);
   }

   public void declareType(Type type) {
      this.data().type = type;
   }

   public boolean hasStringConstantValue() {
      if (!this.isConst()) {
         return false;
      } else {
         if (!this.data().valueLoaded) {
            this.data().valueLoaded = true;
            this.space.loadConstantValueOfField(this.file, getLanguage(),this);
         }

         return this.data().hasstringvalue;
      }
   }

   public String getStringValue() {
      return !this.hasStringConstantValue() ? null : this.data().stringvalue;
   }

   public boolean isDuplicateField() {
      if (this.isExplicitOverriding()) {
         return false;
      } else {
         MapOfInt<Member> fields = this.getEnclosingClassType().getDeclaredMemberFields();
         fields.DEFAULT_ITERATOR.init(this.getIdentifier());

         while(fields.DEFAULT_ITERATOR.hasMoreElements()) {
            Member field2 = fields.DEFAULT_ITERATOR.nextValue();
            if (field2 != this && !field2.isExplicitOverriding()) {
               return true;
            }
         }

         return false;
      }
   }

   public boolean isMethod() {
      this.loadSyntax();
      return (this.data().flags & 64) != 0;
   }

   public boolean isField() {
      this.loadSyntax();
      return (this.data().flags & 32) != 0;
   }

   public boolean isEvent() {
      return Modifiers.isEvent(this.getModifiers());
   }

   public boolean isProperty() {
      this.loadSyntax();
      return (this.data().flags & 1) != 0;
   }

   public boolean isPropertyMethod() {
      this.loadSyntax();
      return (this.data().flags & 128) != 0;
   }

   public boolean isSetProperty() {
      this.loadSyntax();
      if ((this.data().flags & 2) != 0) {
         return true;
      } else {
         SetOf<Member> fields = this.getOverriddenMembers();
         fields.DEFAULT_ITERATOR.init();

         while(fields.DEFAULT_ITERATOR.hasMoreElements()) {
            if (fields.DEFAULT_ITERATOR.nextKey().isSetProperty()) {
               return true;
            }
         }

         return false;
      }
   }

   public boolean isGetProperty() {
      this.loadSyntax();
      if ((this.data().flags & 4) != 0) {
         return true;
      } else {
         SetOf<Member> fields = this.getOverriddenMembers();
         fields.DEFAULT_ITERATOR.init();

         while(fields.DEFAULT_ITERATOR.hasMoreElements()) {
            if (fields.DEFAULT_ITERATOR.nextKey().isGetProperty()) {
               return true;
            }
         }

         return false;
      }
   }

   public boolean hasConstantValue() {
      if (!this.isConst()) {
         return false;
      } else {
         if (!this.data().valueLoaded) {
            this.data().valueLoaded = true;
            this.space.loadConstantValueOfField(this.file, getLanguage(),this);
         }

         return this.data().hasvalue;
      }
   }

   public long getConstantValue() {
      return !this.hasConstantValue() ? 0L : this.data().value;
   }

   public boolean isConst() {
      this.loadSyntax();
      return (this.data().modifiers & 512) != 0 && this.data().hasinitializer;
   }

   public boolean isBlankReadonly() {
      this.loadSyntax();
      return (this.data().modifiers & 256) != 0 && !this.data().hasinitializer;
   }

   public boolean isReadonly() {
      return (this.data().modifiers & 256) != 0;
   }

   @Override
   public boolean isFilePrivate() {
      if (this.getEnclosingClassType().isPartial()) {
         return false;
      } else if (this.isPrivate()) {
         return true;
      } else if (!this.getOverriddenMembers().empty()) {
         return false;
      } else {
         for(ClassType c = this.getEnclosingClassType(); !c.isToplevel(); c = c.getEnclosingClassType()) {
            if (c.isPrivate()) {
               return true;
            }
         }

         return false;
      }
   }

   public Type getType(Type type, boolean readaccess) throws UnknownEntityException {
      Type membertype = this.getType();
      Type containingtype;
      if (type.isClassType()) {
         containingtype = ((ClassType)type).getContainingTypeOfMember(this);
      } else {
         containingtype = ((ParameterizedType)type).getClassType().getContainingTypeOfMember(this);
      }

      if (readaccess) {
         if (membertype.isParameterType() && containingtype.isParameterizedType() && type.isParameterizedType()) {
            Type t = ((ParameterizedType)containingtype).replaceType(membertype, true);
            if (t.isParameterType()
               && ((ParameterType)t).getClassType() == ((ParameterizedType)type).getClassType()
               && ((ParameterizedType)type).getAbsoluteArgumentVariances()[((ParameterType)t).getAbsoluteNumber()] == 3) {
               return membertype.getErasedType();
            }
         }
      } else if (membertype.isParameterType() && containingtype.isParameterizedType() && type.isParameterizedType()) {
         Type t = ((ParameterizedType)containingtype).replaceType(membertype, true);
         if (t.isParameterType()
               && ((ParameterType)t).getClassType() == ((ParameterizedType)type).getClassType()
               && ((ParameterizedType)type).getAbsoluteArgumentVariances()[((ParameterType)t).getAbsoluteNumber()] == 2
            || ((ParameterizedType)type).getAbsoluteArgumentVariances()[((ParameterType)t).getAbsoluteNumber()] == 1) {
            throw new UnknownEntityException();
         }
      }

      if (type.isClassType()) {
         if ((type.isRawType() || containingtype.isRawType()) && !this.isStatic()) {
            return membertype.getErasedType();
         } else {
            return containingtype.isParameterizedType() ? ((ParameterizedType)containingtype).replaceType(membertype, readaccess) : membertype;
         }
      } else if ((type.isRawType() || containingtype.isRawType()) && !this.isStatic()) {
         return ((ParameterizedType)type).replaceType(membertype.getErasedType(), readaccess);
      } else {
         return !containingtype.isParameterizedType()
            ? ((ParameterizedType)type).replaceType(membertype, readaccess)
            : ((ParameterizedType)type).replaceType(((ParameterizedType)containingtype).replaceType(membertype, readaccess), readaccess);
      }
   }

   public boolean isAbstract() {
      return (this.getModifiers() & 16384) != 0;
   }

   public int getVersion() {
      this.loadSyntax();
      return this.data().version;
   }

   public Type getException(int number) throws UnknownEntityException {
      this.loadTypes();
      if (this.data().exceptions.get(number) == null) {
         throw new UnknownEntityException();
      } else {
         return this.data().exceptions.get(number);
      }
   }

   public Type getException(int number, Type type) throws UnknownEntityException {
      Type membertype = this.getException(number);
      if (type.isClassType()) {
         Type containingtype = ((ClassType)type).getContainingTypeOfMember(this);
         if ((type.isRawType() || containingtype.isRawType()) && !this.isStatic()) {
            return membertype.getErasedType();
         } else {
            return containingtype.isParameterizedType() ? ((ParameterizedType)containingtype).replaceType(membertype) : membertype;
         }
      } else {
         Type containingtype = ((ParameterizedType)type).getClassType().getContainingTypeOfMember(this);
         if ((type.isRawType() || containingtype.isRawType()) && !this.isStatic()) {
            return ((ParameterizedType)type).replaceType(membertype.getErasedType());
         } else {
            return !containingtype.isParameterizedType()
               ? ((ParameterizedType)type).replaceType(membertype)
               : ((ParameterizedType)type).replaceType(((ParameterizedType)containingtype).replaceType(membertype));
         }
      }
   }

   public int getExceptionCount() {
      return this.data().exceptions == null ? 0 : this.data().exceptions.size();
   }

   public MethodParameterType accessParameterType(int identifier) throws UnknownEntityException {
      MethodParameterType type = this.data().memberParametertypes.get(identifier);
      if (type == null) {
         throw new UnknownEntityException();
      } else {
         return type;
      }
   }

   @Override
   public ClassType getEnclosingTopLevelClassType() {
      return this.getEnclosingClassType().getEnclosingTopLevelClassType();
   }

   public boolean existsMemberParametertype(int identifier) {
      return this.data().memberParametertypes.contains(identifier);
   }

   public boolean hasVarargs() {
      return this.data().hasVarargs;
   }

   @Override
   public int getIdentifierLine() {
      this.space.loadPositions(this.file,getLanguage());
      return this.data().idline;
   }

   @Override
   public int getIdentifierEndColumn() {
      this.space.loadPositions(this.file,getLanguage());
      return this.data().idendcolumn;
   }

   @Override
   public int getIdentifierStartColumn() {
      this.space.loadPositions(this.file,getLanguage());
      return this.data().idstartcolumn;
   }

   @Override
   public int getModifiersStartLine() {
      this.space.loadPositions(this.file,getLanguage());
      return this.data().modifiersstartline;
   }

   @Override
   public int getModifiersEndLine() {
      this.space.loadPositions(this.file,getLanguage());
      return this.data().modifiersendline;
   }

   @Override
   public int getModifiersEndColumn() {
      this.space.loadPositions(this.file,getLanguage());
      return this.data().modifiersendcolumn;
   }

   @Override
   public int getModifiersStartColumn() {
      this.space.loadPositions(this.file,getLanguage());
      return this.data().modifiersstartcolumn;
   }

   @Override
   public int getEndColumn() {
      this.space.loadPositions(this.file,getLanguage());
      return this.data().endcolumn;
   }

   @Override
   public int getEndLine() {
      this.space.loadPositions(this.file,getLanguage());
      return this.data().endline;
   }

   @Override
   public int getStartColumn() {
      this.space.loadPositions(this.file,getLanguage());
      return this.data().startcolumn;
   }

   @Override
   public int getStartLine() {
      this.space.loadPositions(this.file,getLanguage());
      return this.data().startline;
   }

   public boolean isVisible(ClassType accessedClassType, ClassType referingClassType) {
      int modifiers = this.getModifiers();
      ClassType classtype = this.getEnclosingClassType();
      if (Modifiers.isPublic(modifiers)) {
         return true;
      } else {
         if (Modifiers.isCSPrivate(modifiers)) {
            if (referingClassType.isEnclosedBy(classtype)) {
               return true;
            }

            if (classtype.getNamespace() == referingClassType.getNamespace()
               && classtype.getIdentifier() == referingClassType.getIdentifier()
               && classtype.isPartial()
               && referingClassType.isPartial()) {
               return true;
            }
         }

         if (Modifiers.isJavaPrivate(modifiers) && classtype.getEnclosingTopLevelClassType() == referingClassType.getEnclosingTopLevelClassType()) {
            return true;
         } else if (Modifiers.isInternal(modifiers) && referingClassType.getAssembly() == classtype.getAssembly()) {
            return true;
         } else if (Modifiers.isPackagePrivate(modifiers) && referingClassType.getNamespace() == classtype.getNamespace()) {
            return true;
         } else {
            if (Modifiers.isProtected(modifiers)) {
               if (classtype == referingClassType) {
                  return true;
               }

               if (referingClassType.isSubClassTypeOf(classtype)) {
                  return Modifiers.isStatic(modifiers) || accessedClassType.isSubClassTypeOf(referingClassType);
               }

               while(!referingClassType.isToplevel()) {
                  referingClassType = referingClassType.getEnclosingClassType();
                  if (referingClassType.isSubClassTypeOf(classtype)) {
                     return true;
                  }
               }
            }

            return false;
         }
      }
   }

   public SetOf<Member> getOverriddenMembers() {
      this.getEnclosingClassType().getAllMemberMethods();
      return this.data().overriddenmembers == null ? new SetOf<>(this.space) : this.data().overriddenmembers;
   }

   public Member getAnyOverriddenMember() throws UnknownEntityException {
      this.getEnclosingClassType().getAllMemberMethods();
      if (this.data().overriddenmembers != null && this.data().overriddenmembers.size() != 0) {
         this.data().overriddenmembers.DEFAULT_ITERATOR.init();
         this.data().overriddenmembers.DEFAULT_ITERATOR.hasMoreElements();
         return this.data().overriddenmembers.DEFAULT_ITERATOR.nextKey();
      } else {
         throw new UnknownEntityException();
      }
   }

   public boolean hasOverriddenMember() {
      this.getEnclosingClassType().getAllMemberMethods();
      if (this.data().overriddenmembers == null) {
         return false;
      } else {
         this.data().overriddenmembers.DEFAULT_ITERATOR.init();

         while(this.data().overriddenmembers.DEFAULT_ITERATOR.hasMoreElements()) {
            Member method = this.data().overriddenmembers.DEFAULT_ITERATOR.nextKey();
            if (!method.getEnclosingClassType().isInterfaceType()) {
               return true;
            }
         }

         return false;
      }
   }

   public boolean hasOverriddenMembers() {
      this.getEnclosingClassType().getAllMemberMethods();
      return this.data().overriddenmembers != null && this.data().overriddenmembers.size() != 0;
   }

   public SetOf<Member> getAllOverriddenMembers() {
      SetOf<Member> alloverriddenmethods = new SetOf<>(this.space);
      SetOf<Member> methods = new SetOf<>(this.space);
      methods.put(this);

      while(true) {
         methods.DEFAULT_ITERATOR.init();

         while(methods.DEFAULT_ITERATOR.hasMoreElements()) {
            Member m = methods.DEFAULT_ITERATOR.nextKey();
            alloverriddenmethods.put(m);
            alloverriddenmethods.put(m.getOverriddenMembers());
         }

         if (methods.size() == alloverriddenmethods.size()) {
            return alloverriddenmethods;
         }

         methods.clear();
         methods.put(alloverriddenmethods);
      }
   }

   public boolean isExplicitOverriding() {
      this.loadTypes();
      return this.data().overriddentype != null;
   }

   public Type getExplicitOverridingType() {
      this.loadTypes();
      return this.data().overriddentype;
   }

   public Type getType(Type type) throws UnknownEntityException {
      Type membertype = this.getType();
      Type containingtype;
      if (type.isClassType()) {
         containingtype = ((ClassType)type).getContainingTypeOfMember(this);
      } else {
         containingtype = ((ParameterizedType)type).getClassType().getContainingTypeOfMember(this);
      }

      if (membertype.isParameterType() && containingtype.isParameterizedType() && type.isParameterizedType()) {
         Type t = ((ParameterizedType)containingtype).replaceType(membertype, true);
         if (t.isParameterType()
            && ((ParameterType)t).getClassType() == ((ParameterizedType)type).getClassType()
            && ((ParameterizedType)type).getAbsoluteArgumentVariances()[((ParameterType)t).getAbsoluteNumber()] == 3) {
            return membertype.getErasedType();
         }
      }

      if (type.isClassType()) {
         if ((type.isRawType() || containingtype.isRawType()) && !this.isStatic()) {
            return membertype.getErasedType();
         } else {
            return containingtype.isParameterizedType() ? ((ParameterizedType)containingtype).replaceType(membertype) : membertype;
         }
      } else if ((type.isRawType() || containingtype.isRawType()) && !this.isStatic()) {
         return ((ParameterizedType)type).replaceType(membertype.getErasedType());
      } else {
         return !containingtype.isParameterizedType()
            ? ((ParameterizedType)type).replaceType(membertype)
            : ((ParameterizedType)type).replaceType(((ParameterizedType)containingtype).replaceType(membertype));
      }
   }

   public Type getType() throws UnknownEntityException {
      this.loadTypes();
      if (this.data().type == null) {
         throw new UnknownEntityException();
      } else {
         return this.data().type;
      }
   }

   public int getModifiersOfParameter(int number) {
      this.loadSyntax();
      return this.data().parameterModifiers.get(number);
   }

   public Type getTypeOfParameter(Type type, int number) throws UnknownEntityException {
      Type membertype = this.getTypeOfParameter(number);
      if (type.isClassType()) {
         Type containingtype = ((ClassType)type).getContainingTypeOfMember(this);
         if ((type.isRawType() || containingtype.isRawType()) && !this.isStatic()) {
            return membertype.getErasedType();
         } else {
            return containingtype.isParameterizedType() ? ((ParameterizedType)containingtype).replaceType(membertype) : membertype;
         }
      } else {
         Type containingtype = ((ParameterizedType)type).getClassType().getContainingTypeOfMember(this);
         if ((type.isRawType() || containingtype.isRawType()) && !this.isStatic()) {
            return ((ParameterizedType)type).replaceType(membertype.getErasedType());
         } else {
            return !containingtype.isParameterizedType()
               ? ((ParameterizedType)type).replaceType(membertype)
               : ((ParameterizedType)type).replaceType(((ParameterizedType)containingtype).replaceType(membertype));
         }
      }
   }

   public Type getTypeOfParameter(int number) throws UnknownEntityException {
      this.loadTypes();
      if (this.data().parameterTypes.get(number) == null) {
         throw new UnknownEntityException();
      } else {
         return this.data().parameterTypes.get(number);
      }
   }

   private void loadTypes() {
      this.loadSyntax();
      if (!this.data().typesLoaded) {
         this.data().typesLoaded = true;
         this.space.loadTypes(this.file,getLanguage());
      }
   }

   public int getIdentifierOfParameter(int number) {
      this.loadSyntax();
      return this.data().parameterIdentifiers.get(number) == 0 ? this.identifiers.get("p" + number) : this.data().parameterIdentifiers.get(number);
   }

   public boolean isStatic() {
      this.loadSyntax();
      return (this.data().modifiers & 64) != 0;
   }

   @Override
   public String getHTMLDocumentationString() {
      this.loadSyntax();
      return this.data().hasDocumentation ? super.getHTMLDocumentationString() : "";
   }

   public boolean isMainMethod() {
      return false;
   }

   public boolean isClasstypePrivate() {
      if (this.isPrivate()) {
         return true;
      } else {
         for(ClassType classtype = this.getEnclosingClassType(); !classtype.isToplevel(); classtype = classtype.getEnclosingClassType()) {
            if (classtype.isPrivate()) {
               return true;
            }
         }

         return false;
      }
   }

   public boolean isDuplicateMethod() {
      if (this.isConstructor()) {
         ClassType classtype = this.getEnclosingClassType();
         SetOf<Member> constructors = classtype.getDeclaredConstructors();
         constructors.DEFAULT_ITERATOR.init();

         while(constructors.DEFAULT_ITERATOR.hasMoreElements()) {
            Member constructor2 = constructors.DEFAULT_ITERATOR.nextKey();
            if (constructor2 != this && this.areDuplicateMethods(this, constructor2)) {
               return true;
            }
         }

         return false;
      } else if (this.isExplicitOverriding()) {
         return false;
      } else {
         ClassType classtype = this.getEnclosingClassType();
         MapOfInt<Member> methods = classtype.getDeclaredMemberMethods();
         methods.DEFAULT_ITERATOR.init(this.getIdentifier());

         while(methods.DEFAULT_ITERATOR.hasMoreElements()) {
            Member method2 = methods.DEFAULT_ITERATOR.nextValue();
            if (method2 != this && !method2.isExplicitOverriding() && this.areDuplicateMethods(this, method2)) {
               return true;
            }
         }

         return false;
      }
   }

   private boolean areDuplicateMethods(Member method1, Member method2) {
      if (method1.getParameterCount() != method2.getParameterCount()) {
         return false;
      } else if (method1.getMethodParametertypeCount() != method2.getMethodParametertypeCount()) {
         return false;
      } else {
         int c = method1.getParameterCount();

         for(int i = 0; i < c; ++i) {
            try {
               if (method1.getModifiersOfParameter(i) != method2.getModifiersOfParameter(i)) {
                  return false;
               }

               if (method1.getTypeOfParameter(i) != method2.getTypeOfParameter(i)) {
                  return false;
               }
            } catch (UnknownEntityException ignored) {
            }
         }

         return true;
      }
   }

   @Override
   public int getModifiers() {
      this.loadSyntax();
      return this.data().modifiers;
   }

   private void loadSyntax() {
      if (!this.data().syntaxLoaded) {
         this.data().syntaxLoaded = true;
         this.space.loadSyntax(this.file,getLanguage());
      }
   }

   public boolean isConstructor() {
      this.loadSyntax();
      return (this.data().flags & 8) != 0;
   }

   public boolean isIndexer() {
      this.loadSyntax();
      return (this.data().flags & 16) != 0;
   }

   @Override
   public int getIdentifier() {
      this.loadSyntax();
      return this.data().identifier;
   }

   public int getOperator() {
      return this.data().operator;
   }

   public int getParameterCount() {
      this.loadSyntax();
      return this.data().parameterTypes == null ? 0 : this.data().parameterTypes.size();
   }

   public MethodParameterType getMethodParameterType(int number) {
      return this.data().methodparametertypev.get(number);
   }

   public int getMethodParametertypeCount(Type type) {
      this.loadSyntax();
      Type containingtype;
      if (type.isClassType()) {
         containingtype = ((ClassType)type).getContainingTypeOfMember(this);
      } else {
         containingtype = ((ParameterizedType)type).getClassType().getContainingTypeOfMember(this);
      }

      return (containingtype.isRawType() || type.isRawType()) && !this.isStatic() ? 0 : this.getMethodParametertypeCount();
   }

   public int getMethodParametertypeCount() {
      this.loadSyntax();
      return this.data().methodparametertypev == null ? 0 : this.data().methodparametertypev.size();
   }

   public SetOf<MethodParameterType> getMethodparametertypes() {
      return this.getMethodParametertypeCount() == 0 ? new SetOf<>(this.space) : this.data().methodparametertypes;
   }

   @Override
   public ClassType getEnclosingClassType() {
      this.loadSyntax();
      return this.data().classtype;
   }

   @Override
   public FileEntry getFile() {
      return this.file;
   }

   @Override
   public int getDeclarationNumber() {
      return this.declarationNumber;
   }

   @Override
   public int getID() {
      return this.id;
   }

   public Type getException(
      FileEntry file,Language language, int number, Type type, Type[] argumenttypes, int off, int count, Type[] typearguments, int typeargoff, int typeargcount
   ) throws UnknownEntityException {
      type = type.getNonVariableContainigType();
      return this.getMethodParametertypeCount(type) != 0
         ? this.space.myInfer.getExceptionOfMethod(file, language,this, number, type, argumenttypes, off, count, typearguments, typeargoff, typeargcount)
         : this.getException(number, type);
   }

   public Type getType(FileEntry file,Language language, Type type, Type[] argumenttypes, int off, int count, Type[] typearguments, int typeargoff, int typeargcount) throws UnknownEntityException {
      type = type.getNonVariableContainigType();
      if (this.getMethodParametertypeCount(type) == 0) {
         return this.getType(type);
      } else {
         return !this.hasVarargs()
               || count == this.getParameterCount() && this.isNoVarargsCall(file,language, argumenttypes[count - 1], this.getTypeOfParameter(count - 1))
            ? this.space.myInfer.getTypeOfMethod(file, language,this, type, argumenttypes, off, count, typearguments, typeargoff, typeargcount)
            : this.getType(type).getErasedType();
      }
   }

   private boolean isNoVarargsCall(FileEntry file,Language language, Type argType, Type parameterType) {
      if (argType.isArrayType() && parameterType.isArrayType()) {
         if (argType.isImplicitConvertibleTo(file,language, parameterType)) {
            return true;
         }

         return ((ArrayType) parameterType).getElementType().isMethodParameterType();
      }

      return false;
   }

   public Type getTypeOfParameter(
      FileEntry file,
      Language language,
      int number, Type type, Type[] argumenttypes, int off, int count, Type[] typearguments, int typeargoff, int typeargcount
   ) throws UnknownEntityException {
      type = type.getNonVariableContainigType();
      return this.getMethodParametertypeCount(type) != 0
         ? this.space.myInfer.getTypeOfMethodParameter(file,language, this, number, type, argumenttypes, off, count, typearguments, typeargoff, typeargcount)
         : this.getTypeOfParameter(type, number);
   }

   public boolean isInferable(FileEntry file,Language language, Type type, Type[] argumenttypes, int off, int count, Type[] typearguments, int typeargoff, int typeargcount) {
      return this.space.myInfer.isApplicableMethod(file,language, this, type, argumenttypes, off, count, typearguments, typeargoff, typeargcount);
   }

   private static class Data {
      public int version;
      public boolean syntaxLoaded;
      public boolean typesLoaded;
      public boolean valueLoaded;
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
      private ClassType classtype;
      public int operator;
      public boolean hasVarargs;
      public ListOf<Type> exceptions;
      public ListOf<Type> parameterTypes;
      public ListOfInt parameterModifiers;
      public ListOfInt parameterIdentifiers;
      public SetOf<Member> overriddenmembers;
      public MapOfInt<MethodParameterType> memberParametertypes;
      public SetOf<MethodParameterType> methodparametertypes;
      public ListOf<MethodParameterType> methodparametertypev;
      public Type type;
      public int modifiers;
      public boolean hasinitializer;
      public int identifier;
      public int flags;
      public boolean hasDocumentation;
      public long value;
      public boolean hasvalue;
      public String stringvalue;
      public boolean hasstringvalue;
      public Type overriddentype;

      private Data() {
      }
   }

   public static class InferAlgorithm {
      private final EntitySpace space;
      private SetOf<MethodParameterType> variables;
      private final FunctionOfIntInt captureVariables;
      private final MapOf<MethodParameterType, Type> variableReplacements;
      private final FunctionOfIntInt variableReplacementVariances = new FunctionOfIntInt();
      private final MapOf<MethodParameterType, Type> constraintsSuper;
      private final MapOf<MethodParameterType, Type> constraintsSub;
      private final MapOf<MethodParameterType, Type> constraintsEqual;
      private FileEntry file;
      private boolean noboxing;
      private Language myLanguage;
      public InferAlgorithm(EntitySpace space) {
         this.space = space;
         this.captureVariables = new FunctionOfIntInt();
         this.variableReplacements = new MapOf<>(space);
         this.constraintsSuper = new MapOf<>(space);
         this.constraintsSub = new MapOf<>(space);
         this.constraintsEqual = new MapOf<>(space);
      }

      public Type getExceptionOfMethod(
         FileEntry file,
         Language language,
         Member method,
         int number, Type type, Type[] argumenttypes, int off, int count, Type[] typearguments, int typeargoff, int typeargcount
      ) throws UnknownEntityException {
         this.file = file;
         myLanguage =language;
         this.noboxing = false;
         if (count != method.getParameterCount()) {
            throw new UnknownEntityException();
         } else if (!this.getReplacements(method, type, argumenttypes, count, off, typearguments, typeargoff, typeargcount)) {
            throw new UnknownEntityException();
         } else {
            Type methodtype = method.getException(number, type);
            return this.replaceType(methodtype);
         }
      }

      public Type getTypeOfMethod(
         FileEntry file,
         Language language,
         Member method, Type type, Type[] argumenttypes, int off, int count, Type[] typearguments, int typeargoff, int typeargcount
      ) throws UnknownEntityException {
         this.file = file;
         myLanguage=language;
         this.noboxing = false;
         if (count != method.getParameterCount()) {
            throw new UnknownEntityException();
         } else if (!this.getReplacements(method, type, argumenttypes, count, off, typearguments, typeargoff, typeargcount)) {
            throw new UnknownEntityException();
         } else {
            Type methodtype = method.getType(type);
            return this.replaceType(methodtype);
         }
      }

      public Type getTypeOfMethodParameter(
         FileEntry file,Language language, Member method, int number, Type type, Type[] argumenttypes, int off, int count, Type[] typearguments, int typeargoff, int typeargcount
      ) throws UnknownEntityException {
         this.file = file;
         myLanguage= language;
         this.noboxing = false;
         if (count != method.getParameterCount()) {
            throw new UnknownEntityException();
         } else if (!this.getReplacements(method, type, argumenttypes, count, off, typearguments, typeargoff, typeargcount)) {
            throw new UnknownEntityException();
         } else {
            return this.replaceType(method.getTypeOfParameter(type, number));
         }
      }

      public boolean isApplicableMethod(
         FileEntry file,
         Language language,
         Member method, Type type, Type[] argumenttypes, int off, int count, Type[] typearguments, int typeargoff, int typeargcount
      ) {
         try {
            this.file = file;
            myLanguage=language;
            this.noboxing = false;
            if (count != method.getParameterCount()) {
               return false;
            } else if (!this.getReplacements(method, type, argumenttypes, count, off, typearguments, typeargoff, typeargcount)) {
               return false;
            } else if (typeargcount == 0) {
               return true;
            } else {
               for(int i = 0; i < count; ++i) {
                  Type parametertype = this.replaceType(method.getTypeOfParameter(type, i));
                  if (!this.isConversion(file,language, argumenttypes[i + off].getNonVariableContainigType(), parametertype, this.noboxing)) {
                     return false;
                  }
               }

               return true;
            }
         } catch (UnknownEntityException var12) {
            return false;
         }
      }

      private boolean isConversion(FileEntry file,Language language, Type fromtype, Type totype, boolean noboxing) {
         return fromtype.isImplicitConvertibleTo(file,language, totype);
      }

      private Type replaceType(Type type) throws UnknownEntityException {
         if (type.isMethodParameterType()) {
            return this.variableReplacements.contains((MethodParameterType)type) ? this.variableReplacements.get((MethodParameterType)type) : type;
         } else if (!type.isParameterizedType()) {
            return type.isArrayType() ? this.space.getArraytype(this.replaceType(((ArrayType)type).getElementType()), 1) : type;
         } else {
            Type[] absoluteargumenttypes = ((ParameterizedType)type).getAbsoluteArgumentTypes();
            Type[] replacedtypes = new Type[absoluteargumenttypes.length];
            int[] absolutevariances = ((ParameterizedType)type).getAbsoluteArgumentVariances();
            int[] replacedvariances = new int[absoluteargumenttypes.length];

            for(int i = 0; i < absoluteargumenttypes.length; ++i) {
               replacedtypes[i] = this.replaceType(absoluteargumenttypes[i]);
               replacedvariances[i] = absolutevariances[i];
               if (this.variableReplacementVariances.contains(absoluteargumenttypes[i].getID())) {
                  replacedvariances[i] = this.variableReplacementVariances.get(absoluteargumenttypes[i].getID());
               }
            }

            for(int i = 0; i < absoluteargumenttypes.length; ++i) {
               replacedtypes[i] = this.replaceType(absoluteargumenttypes[i]);
            }

            return this.space.getParameterizedtype(((ParameterizedType)type).getClassType(), replacedtypes, replacedvariances);
         }
      }

      private boolean getReplacements(
         Member method, Type type, Type[] argumenttypes, int count, int off, Type[] typearguments, int typeargoff, int typeargcount
      ) throws UnknownEntityException {
         if (typeargcount > 0 && method.getMethodParametertypeCount() != typeargcount) {
            return false;
         } else {
            this.variableReplacementVariances.clear();
            if (typeargcount > 0) {
               this.variables = method.getMethodparametertypes();
               this.variableReplacements.clear();

               for(int i = 0; i < typeargcount; ++i) {
                  this.variableReplacements.put(method.getMethodParameterType(i), typearguments[typeargoff + i]);
               }

               return this.isWithinBounds(method, type);
            } else {
               try {
                  this.variables = method.getMethodparametertypes();
                  this.constraintsSuper.clear();
                  this.constraintsSub.clear();
                  this.constraintsEqual.clear();
                  this.captureVariables.clear();
                  int parametercount = method.getParameterCount();
                  this.variables.DEFAULT_ITERATOR.init();

                  while(this.variables.DEFAULT_ITERATOR.hasMoreElements()) {
                     MethodParameterType variable = this.variables.DEFAULT_ITERATOR.nextKey();

                     for(int i = 0; i < parametercount; ++i) {
                        Type parametertype = method.getTypeOfParameter(type, i);
                        if (parametertype.isParameterizedType()) {
                           Type[] argtypes = ((ParameterizedType)parametertype).getAbsoluteArgumentTypes();

                           for (Type argtype : argtypes) {
                              if (variable == argtype) {
                                 if (!this.captureVariables.contains(variable.getID())) {
                                    this.captureVariables.put(variable.getID(), 0);
                                 }

                                 this.captureVariables.put(variable.getID(), this.captureVariables.get(variable.getID()) + 1);
                              }
                           }
                        } else if (parametertype.containsType(variable)) {
                           this.captureVariables.put(variable.getID(), 2);
                        }
                     }
                  }

                  for(int i = 0; i < parametercount; ++i) {
                     Type parametertype = method.getTypeOfParameter(type, i);
                     if (!this.constrainSub(argumenttypes[i + off].getNonVariableContainigType(), parametertype)) {
                        return false;
                     }
                  }
               } catch (UnknownEntityException var15) {
                  return false;
               }

               return this.processConstraints() && this.isWithinBounds(method, type);
            }
         }
      }

      private boolean constrainSub(Type fromtype, Type totype) {
         if (fromtype.getSemantic() == 2) {
            return true;
         } else if (fromtype == totype) {
            return true;
         } else if (totype.isMethodParameterType()) {
            return this.variables.contains(totype)
               ? this.mustBeSupertype((MethodParameterType)totype, fromtype)
               : this.isConversion(this.file,myLanguage, fromtype, totype, this.noboxing);
         } else if (!totype.isParameterizedType()) {
            if (totype.isArrayType()) {
               if (fromtype.isArrayType()) {
                  Type componenttypefrom = ((ArrayType)fromtype).getElementType();
                  Type componenttypeto = ((ArrayType)totype).getElementType();
                  return this.constrainSub(componenttypefrom, componenttypeto);
               } else {
                  return false;
               }
            } else {
               return this.isConversion(this.file,myLanguage, fromtype, totype, this.noboxing);
            }
         } else if (!fromtype.isParameterizedType()) {
            if (fromtype.isClassType()) {
               if (fromtype == ((ParameterizedType)totype).getClassType()) {
                  return true;
               } else if (fromtype.isSubTypeOf(this.file,myLanguage, totype)) {
                  return true;
               } else if (fromtype.isSubTypeOf(this.file,myLanguage, ((ParameterizedType)totype).getClassType())) {
                  return true;
               } else if (fromtype.isRawType() && ((ClassType)fromtype).isSubClassTypeOf(((ParameterizedType)totype).getClassType())) {
                  return true;
               } else {
                  SetOf<Type> fromsupertypes = ((ClassType)fromtype).getAllSuperTypes();
                  fromsupertypes.DEFAULT_ITERATOR.init();

                  while(fromsupertypes.DEFAULT_ITERATOR.hasMoreElements()) {
                     Type subsupertype = fromsupertypes.DEFAULT_ITERATOR.nextKey();
                     if (subsupertype == totype) {
                        return true;
                     }

                     if (subsupertype.isParameterizedType() && ((ParameterizedType)subsupertype).getClassType() == ((ParameterizedType)totype).getClassType()) {
                        return this.constrainSub(subsupertype, totype);
                     }
                  }

                  return this.isConversion(this.file,myLanguage, fromtype, totype, this.noboxing);
               }
            } else if (fromtype.isParameterType()) {
               int count = ((ParameterType)fromtype).getBoundTypeCount();

               for(int j = 0; j < count; ++j) {
                  try {
                     Type boundtype = ((ParameterType)fromtype).getBoundType(j);
                     if (this.isConversion(this.file,myLanguage, boundtype.getErasedType(), totype.getErasedType(), this.noboxing)) {
                        return this.constrainSub(boundtype, totype);
                     }
                  } catch (UnknownEntityException ignored) {
                  }
               }

               return this.isConversion(this.file,myLanguage, fromtype, totype, this.noboxing);
            } else if (fromtype.isMethodParameterType()) {
               int count = ((MethodParameterType)fromtype).getBoundTypeCount();

               for(int j = 0; j < count; ++j) {
                  try {
                     Type boundtype = ((MethodParameterType)fromtype).getBoundType(j);
                     if (this.isConversion(this.file,myLanguage, boundtype.getErasedType(), totype.getErasedType(), this.noboxing)) {
                        return this.constrainSub(boundtype, totype);
                     }
                  } catch (UnknownEntityException ignored) {
                  }
               }

               return false;
            } else {
               return this.isConversion(this.file,myLanguage, fromtype, totype, this.noboxing);
            }
         } else {
            Type toclasstype = ((ParameterizedType)totype).getClassType();
            Type fromclasstype = ((ParameterizedType)fromtype).getClassType();
            if (toclasstype == fromclasstype) {
               Type[] argumenttypesto = ((ParameterizedType)totype).getAbsoluteArgumentTypes();
               Type[] argumenttypesfrom = ((ParameterizedType)fromtype).getAbsoluteArgumentTypes();
               int[] variancesto = ((ParameterizedType)totype).getAbsoluteArgumentVariances();
               int[] variancesfrom = ((ParameterizedType)fromtype).getAbsoluteArgumentVariances();

               for(int i = 0; i < argumenttypesto.length; ++i) {
                  switch(variancesfrom[i]) {
                     case 0:
                        switch(variancesto[i]) {
                           case 0:
                              if (!this.constrainEqual(argumenttypesfrom[i], argumenttypesto[i])) {
                                 return false;
                              }
                              continue;
                           case 1:
                           case 2:
                              if (!this.constrainSub(argumenttypesfrom[i], argumenttypesto[i])) {
                                 return false;
                              }
                              continue;
                           case 3:
                              if (!this.constrainSuper(argumenttypesfrom[i], argumenttypesto[i])) {
                                 return false;
                              }
                           default:
                              continue;
                        }
                     case 1:
                     case 2:
                        switch(variancesto[i]) {
                           case 0:
                              if (argumenttypesto[i].isMethodParameterType() && this.variables.contains(argumenttypesto[i])) {
                                 if (!this.mustHaveVariance(argumenttypesto[i], variancesfrom[i])) {
                                    return false;
                                 }

                                 return this.mustBeEqual((MethodParameterType)argumenttypesto[i], argumenttypesfrom[i]);
                              }

                              return false;
                           case 1:
                           case 2:
                              if (!this.constrainSub(argumenttypesfrom[i], argumenttypesto[i])) {
                                 return false;
                              }
                              continue;
                           case 3:
                              return false;
                           default:
                              continue;
                        }
                     case 3:
                        switch(variancesto[i]) {
                           case 0:
                              if (argumenttypesto[i].isMethodParameterType() && this.variables.contains(argumenttypesto[i])) {
                                 if (!this.mustHaveVariance(argumenttypesto[i], variancesfrom[i])) {
                                    return false;
                                 }

                                 return this.mustBeEqual((MethodParameterType)argumenttypesto[i], argumenttypesfrom[i]);
                              }

                              return false;
                           case 1:
                           case 2:
                              try {
                                 return argumenttypesto[i] == this.space.getRootClasstype(this.file,myLanguage);
                              } catch (UnknownEntityException var13) {
                                 break;
                              }
                           case 3:
                              if (!this.constrainSuper(argumenttypesfrom[i], argumenttypesto[i])) {
                                 return false;
                              }
                        }
                  }
               }

               return true;
            } else {
               SetOf<Type> fromsupertypes = ((ParameterizedType)fromtype).getAllSuperTypes();
               fromsupertypes.DEFAULT_ITERATOR.init();

               while(fromsupertypes.DEFAULT_ITERATOR.hasMoreElements()) {
                  Type subsupertype = fromsupertypes.DEFAULT_ITERATOR.nextKey();
                  if (subsupertype == totype) {
                     return true;
                  }

                  if (!subsupertype.isClassType()) {
                     if (((ParameterizedType)subsupertype).getClassType() == toclasstype) {
                        try {
                           return this.constrainSub(((ParameterizedType)fromtype).replaceType(subsupertype), totype);
                        } catch (UnknownEntityException ignored) {
                        }
                     }
                  } else if (subsupertype == toclasstype) {
                     return true;
                  }
               }

               return this.isConversion(this.file,myLanguage, fromtype, totype, this.noboxing);
            }
         }
      }

      private boolean constrainSuper(Type fromtype, Type totype) {
         if (fromtype.getSemantic() == 2) {
            return true;
         } else if (fromtype == totype) {
            return true;
         } else if (totype.isMethodParameterType()) {
            return this.variables.contains(totype)
               ? this.mustBeSubtype((MethodParameterType)totype, fromtype)
               : this.isConversion(this.file,myLanguage, totype, fromtype, this.noboxing);
         } else if (!totype.isParameterizedType()) {
            if (totype.isArrayType()) {
               if (fromtype.isArrayType()) {
                  Type componenttypefrom = ((ArrayType)fromtype).getElementType();
                  Type componenttypeto = ((ArrayType)totype).getElementType();
                  return this.constrainSuper(componenttypefrom, componenttypeto);
               } else {
                  return this.isConversion(this.file,myLanguage, totype, fromtype, this.noboxing);
               }
            } else {
               return this.isConversion(this.file,myLanguage, totype, fromtype, this.noboxing);
            }
         } else if (fromtype.isParameterizedType()) {
            ClassType toclasstype = ((ParameterizedType)totype).getClassType();
            ClassType fromclasstype = ((ParameterizedType)fromtype).getClassType();
            if (toclasstype == fromclasstype) {
               Type[] argumenttypesto = ((ParameterizedType)totype).getAbsoluteArgumentTypes();
               Type[] argumenttypesfrom = ((ParameterizedType)fromtype).getAbsoluteArgumentTypes();
               int[] variancesto = ((ParameterizedType)totype).getAbsoluteArgumentVariances();
               int[] variancesfrom = ((ParameterizedType)fromtype).getAbsoluteArgumentVariances();

               for(int i = 0; i < argumenttypesto.length; ++i) {
                  switch(variancesto[i]) {
                     case 0:
                        switch(variancesfrom[i]) {
                           case 0:
                              if (!this.constrainEqual(argumenttypesfrom[i], argumenttypesto[i])) {
                                 return false;
                              }
                              continue;
                           case 1:
                           case 2:
                              if (!this.constrainSuper(argumenttypesfrom[i], argumenttypesto[i])) {
                                 return false;
                              }
                              continue;
                           case 3:
                              if (!this.constrainSub(argumenttypesfrom[i], argumenttypesto[i])) {
                                 return false;
                              }
                           default:
                              continue;
                        }
                     case 1:
                     case 2:
                        switch(variancesfrom[i]) {
                           case 0:
                           case 3:
                              return false;
                           case 1:
                           case 2:
                              if (!this.constrainSuper(argumenttypesfrom[i], argumenttypesto[i])) {
                                 return false;
                              }
                           default:
                              continue;
                        }
                     case 3:
                        switch(variancesfrom[i]) {
                           case 0:
                              return false;
                           case 1:
                           case 2:
                              try {
                                 return argumenttypesfrom[i] == this.space.getRootClasstype(this.file,myLanguage);
                              } catch (UnknownEntityException var11) {
                                 break;
                              }
                           case 3:
                              if (!this.constrainSub(argumenttypesfrom[i], argumenttypesto[i])) {
                                 return false;
                              }
                        }
                  }
               }

               return true;
            } else {
               SetOf<Type> tosupertypes = ((ParameterizedType)totype).getAllSuperTypes();
               tosupertypes.DEFAULT_ITERATOR.init();

               while(tosupertypes.DEFAULT_ITERATOR.hasMoreElements()) {
                  Type tosupertype = tosupertypes.DEFAULT_ITERATOR.nextKey();
                  if (tosupertype == fromtype) {
                     return true;
                  }

                  if (!tosupertype.isClassType()) {
                     if (((ParameterizedType)tosupertype).getClassType() == fromclasstype) {
                        try {
                           return this.constrainSuper(fromtype, ((ParameterizedType)totype).replaceType(tosupertype));
                        } catch (UnknownEntityException ignored) {
                        }
                     }
                  } else if (tosupertype == fromclasstype) {
                     return true;
                  }
               }

               return this.isConversion(this.file,myLanguage, totype, fromtype, this.noboxing);
            }
         } else if (!fromtype.isClassType()) {
            return this.isConversion(this.file,myLanguage, totype, fromtype, this.noboxing);
         } else if (fromtype == ((ParameterizedType)totype).getClassType()) {
            return true;
         } else {
            SetOf<Type> tosupertypes = ((ParameterizedType)totype).getAllSuperTypes();
            tosupertypes.DEFAULT_ITERATOR.init();

            while(tosupertypes.DEFAULT_ITERATOR.hasMoreElements()) {
               Type tosupertype = tosupertypes.DEFAULT_ITERATOR.nextKey();
               if (tosupertype == fromtype) {
                  return true;
               }

               if (!tosupertype.isClassType()) {
                  if (((ParameterizedType)tosupertype).getClassType() == fromtype) {
                     try {
                        return this.constrainSuper(fromtype, ((ParameterizedType)totype).replaceType(tosupertype));
                     } catch (UnknownEntityException ignored) {
                     }
                  }
               }
            }

            return this.isConversion(this.file,myLanguage, totype, fromtype, this.noboxing);
         }
      }

      private boolean constrainEqual(Type fromtype, Type totype) {
         if (fromtype.getSemantic() == 2) {
            return true;
         } else if (fromtype == totype) {
            return true;
         } else if (totype.isMethodParameterType()) {
            if (this.variables.contains(totype)) {
               return this.mustBeEqual((MethodParameterType)totype, fromtype);
            } else {
               return false;
            }
         } else if (totype.isArrayType()) {
            return fromtype.isArrayType() && this.constrainEqual(((ArrayType) fromtype).getElementType(), ((ArrayType) totype).getElementType());
         } else if (totype.isParameterizedType()) {
            if (fromtype.isParameterizedType() && ((ParameterizedType)totype).getClassType() == ((ParameterizedType)fromtype).getClassType()) {
               Type[] argumenttypesto = ((ParameterizedType)totype).getAbsoluteArgumentTypes();
               Type[] argumenttypesfrom = ((ParameterizedType)fromtype).getAbsoluteArgumentTypes();
               int[] variancesto = ((ParameterizedType)totype).getAbsoluteArgumentVariances();
               int[] variancesfrom = ((ParameterizedType)fromtype).getAbsoluteArgumentVariances();

               for(int i = 0; i < argumenttypesfrom.length; ++i) {
                  if (variancesto[i] != variancesfrom[i]) {
                     return false;
                  }

                  if (!this.constrainEqual(argumenttypesfrom[i], argumenttypesto[i])) {
                     return false;
                  }
               }

               return true;
            } else {
               return false;
            }
         } else {
            return false;
         }
      }

      private boolean mustBeEqual(MethodParameterType methodparametertype, Type fromtype) {
         if (fromtype.getSemantic() == 2) {
            return true;
         } else if (this.constraintsEqual.contains(methodparametertype)) {
            return this.constraintsEqual.get(methodparametertype) == fromtype;
         } else {
            this.constraintsSuper.DEFAULT_ITERATOR.init(methodparametertype);

            while(this.constraintsSuper.DEFAULT_ITERATOR.hasMoreElements()) {
               Type type = this.constraintsSuper.DEFAULT_ITERATOR.nextValue();
               if (!this.isConversion(this.file,myLanguage, type, fromtype, this.noboxing)) {
                  return false;
               }
            }

            this.constraintsSuper.remove(methodparametertype);
            this.constraintsSub.DEFAULT_ITERATOR.init(methodparametertype);

            while(this.constraintsSub.DEFAULT_ITERATOR.hasMoreElements()) {
               Type type = this.constraintsSub.DEFAULT_ITERATOR.nextValue();
               if (!this.isConversion(this.file,myLanguage, fromtype, type, this.noboxing)) {
                  return false;
               }
            }

            this.constraintsSub.remove(methodparametertype);
            this.constraintsEqual.put(methodparametertype, fromtype);
            return true;
         }
      }

      private boolean mustHaveVariance(Type fromtype, int variance) {
         if (this.captureVariables.contains(fromtype.getID()) && this.captureVariables.get(fromtype.getID()) <= 1) {
            this.variableReplacementVariances.put(fromtype.getID(), variance);
            return true;
         } else {
            return false;
         }
      }

      private boolean mustBeSubtype(MethodParameterType methodparametertype, Type fromtype) {
         if (fromtype.getSemantic() == 2) {
            return true;
         } else if (this.constraintsEqual.contains(methodparametertype)) {
            return this.isConversion(this.file,myLanguage, this.constraintsEqual.get(methodparametertype), fromtype, this.noboxing);
         } else {
            this.constraintsSuper.DEFAULT_ITERATOR.init(methodparametertype);

            while(this.constraintsSuper.DEFAULT_ITERATOR.hasMoreElements()) {
               Type type = this.constraintsSuper.DEFAULT_ITERATOR.nextValue();
               if (!this.isConversion(this.file,myLanguage, type, fromtype, this.noboxing)) {
                  return false;
               }
            }

            this.constraintsSub.insert(methodparametertype, fromtype);
            return true;
         }
      }

      private boolean mustBeSupertype(MethodParameterType methodparametertype, Type fromtype) {
         if (fromtype.getSemantic() == 2) {
            return true;
         } else if (this.constraintsEqual.contains(methodparametertype)) {
            return this.isConversion(this.file,myLanguage, fromtype, this.constraintsEqual.get(methodparametertype), this.noboxing);
         } else {
            this.constraintsSub.DEFAULT_ITERATOR.init(methodparametertype);

            while(this.constraintsSub.DEFAULT_ITERATOR.hasMoreElements()) {
               Type type = this.constraintsSub.DEFAULT_ITERATOR.nextValue();
               if (!this.isConversion(this.file,myLanguage, fromtype, type, this.noboxing)) {
                  return false;
               }
            }

            this.constraintsSuper.insert(methodparametertype, fromtype);
            return true;
         }
      }

      private boolean processConstraints() {
         this.variableReplacements.clear();
         this.variables.DEFAULT_ITERATOR.init();

         while(this.variables.DEFAULT_ITERATOR.hasMoreElements()) {
            MethodParameterType methodparametertype = this.variables.DEFAULT_ITERATOR.nextKey();
            MethodParameterTypeVariable variabletype = this.space.getMethodParametertypeVariableFor(methodparametertype);
            Type replacementtype = variabletype;
            if (this.constraintsEqual.contains(methodparametertype)) {
               replacementtype = this.constraintsEqual.get(methodparametertype);
            } else if (this.constraintsSuper.count(methodparametertype) == 0) {
               if (this.constraintsSub.count(methodparametertype) == 1) {
                  replacementtype = this.constraintsSub.get(methodparametertype);
               } else if (this.constraintsSub.count(methodparametertype) > 1) {
                  this.constraintsSub.DEFAULT_ITERATOR.init(methodparametertype);
                  this.constraintsSub.DEFAULT_ITERATOR.hasMoreElements();
                  replacementtype = this.constraintsSub.DEFAULT_ITERATOR.nextValue();

                  while(this.constraintsSub.DEFAULT_ITERATOR.hasMoreElements()) {
                     Type type = this.constraintsSub.DEFAULT_ITERATOR.nextValue();
                     if (this.isConversion(this.file,myLanguage, type, replacementtype, this.noboxing)) {
                        replacementtype = type;
                     } else if (!this.isConversion(this.file,myLanguage, replacementtype, type, this.noboxing)) {
                        return false;
                     }
                  }
               }
            } else if (this.constraintsSuper.count(methodparametertype) == 1) {
               replacementtype = this.constraintsSuper.get(methodparametertype);
            } else if (this.constraintsSuper.count(methodparametertype) > 1) {
               try {
                  int dim = -1;
                  boolean primitivearray = false;
                  this.constraintsSuper.DEFAULT_ITERATOR.init(methodparametertype);

                  while(this.constraintsSuper.DEFAULT_ITERATOR.hasMoreElements()) {
                     Type type = this.constraintsSuper.DEFAULT_ITERATOR.nextValue();
                     if (type.isArrayType()) {
                        int tdim = ((ArrayType)type).getDimension();
                        if (dim != -1 && dim != tdim) {
                           replacementtype = this.space.getRootClasstype(this.file,myLanguage);
                        }

                        dim = tdim;
                     } else if (dim != -1) {
                        replacementtype = this.space.getRootClasstype(this.file,myLanguage);
                     }
                  }

                  if (replacementtype == variabletype) {
                     this.constraintsSuper.DEFAULT_ITERATOR.init(methodparametertype);

                     while(this.constraintsSuper.DEFAULT_ITERATOR.hasMoreElements()) {
                        Type type = this.constraintsSuper.DEFAULT_ITERATOR.nextValue();
                        if (type.isArrayType()) {
                           type = ((ArrayType)type).getElementType();
                        }

                        if (replacementtype == null) {
                           replacementtype = type;
                        } else if (this.isConversion(this.file,myLanguage, replacementtype, type, this.noboxing)) {
                           replacementtype = type;
                        } else if (!this.isConversion(this.file,myLanguage, type, replacementtype, this.noboxing)) {
                           replacementtype = type.getCommonSuperTypeWith(this.file,myLanguage, replacementtype);
                        }
                     }

                     if (dim != -1) {
                        for(int i = 0; i < dim; ++i) {
                           replacementtype = this.space.getArraytype(replacementtype, 1);
                        }
                     }
                  }
               } catch (UnknownEntityException ignored) {
               }
            }

            if (replacementtype == variabletype && !myLanguage.getTypeSystem().supportsMethodParameterTypeVariables()) {
               return false;
            }

            this.variableReplacements.put(methodparametertype, replacementtype);
         }

         return true;
      }

      private boolean isWithinBounds(Member method, Type containertype) {
         this.variableReplacements.DEFAULT_ITERATOR.init();

         while(this.variableReplacements.DEFAULT_ITERATOR.hasMoreElements()) {
            MethodParameterType methodparametertype = this.variableReplacements.DEFAULT_ITERATOR.nextKey();
            Type replacementtype = this.variableReplacements.DEFAULT_ITERATOR.nextValue();
            if (!this.isWithinBounds(method, containertype, methodparametertype, replacementtype)) {
               return false;
            }
         }

         return true;
      }

      private boolean isWithinBounds(Member method, Type type, MethodParameterType methodparametertype, Type replacementtype) {
         try {
            int count = methodparametertype.getBoundTypeCount();

            for(int j = 0; j < count; ++j) {
               Type boundtype = methodparametertype.getBoundType(type, j);
               Type replacedboundtype = this.replaceType(boundtype);
               if (!this.isConversion(this.file,myLanguage, replacementtype, replacedboundtype, this.noboxing)) {
                  return false;
               }
            }
         } catch (UnknownEntityException ignored) {
         }

         return true;
      }
   }
}
