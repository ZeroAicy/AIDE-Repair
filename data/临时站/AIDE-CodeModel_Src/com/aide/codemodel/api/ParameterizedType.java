package com.aide.codemodel.api;

import static com.aide.codemodel.api.TypeSemantic.UNKNOWN_SEMANTIC;
import static com.aide.codemodel.api.Variance.BIVARIANCE;
import static com.aide.codemodel.api.Variance.CONTRAVARIANCE;
import static com.aide.codemodel.api.Variance.COVARIANCE;
import static com.aide.codemodel.api.Variance.INVARIANCE;

import java.io.IOException;

import com.aide.codemodel.abstraction.Language;

import com.aide.codemodel.api.collections.SetOf;
import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;
import com.aide.codemodel.api.excpetions.AmbiguousEntityException;
import com.aide.codemodel.api.excpetions.UnknownEntityException;

public final class ParameterizedType extends Type {
   private final EntitySpace mySpace;
   private int myID;
   private ClassType myClassType;
   private Type[] myAbsoluteArgumentTypes;
   private int[] myAbsoluteArgumentVariances;
   private SetOf<Type> myAllSuperTypes;
   
   public ParameterizedType(FileSpace fileSpace, EntitySpace space) {
      super(fileSpace,space, UNKNOWN_SEMANTIC);
      this.mySpace = space;
   }
   
   public ParameterizedType(FileSpace fileSpace,EntitySpace space, ClassType classtype, Type[] absoluteArgumentTypes, int[] absoluteArgumentVariances) {
      super(fileSpace,space, UNKNOWN_SEMANTIC);
      this.mySpace = space;
      this.myID = space.declareEntity(this);
      this.myClassType = classtype;
      this.myAbsoluteArgumentTypes = absoluteArgumentTypes;
      this.myAbsoluteArgumentVariances = absoluteArgumentVariances;
      this.myAllSuperTypes = null;
   }

   @Override
   public void load(StoreInputStream stream) throws IOException {
      super.load(stream);
      this.myID = stream.readInt();
      this.myClassType = (ClassType)this.mySpace.getEntity(stream.readInt());
      int count = stream.readInt();
      this.myAbsoluteArgumentTypes = new Type[count];
      this.myAbsoluteArgumentVariances = new int[count];

      for(int i = 0; i < this.myAbsoluteArgumentTypes.length; ++i) {
         this.myAbsoluteArgumentTypes[i] = (Type)this.mySpace.getEntity(stream.readInt());
         this.myAbsoluteArgumentVariances[i] = stream.readInt();
      }

      if (stream.readBoolean()) {
         this.myAllSuperTypes = new SetOf<>(this.mySpace, stream);
      }
   }

   @Override
   public void store(StoreOutputStream stream) throws IOException {
      super.store(stream);
      stream.writeInt(this.myID);
      stream.writeInt(this.mySpace.getID(this.myClassType));
      stream.writeInt(this.myAbsoluteArgumentTypes.length);

      for(int i = 0; i < this.myAbsoluteArgumentTypes.length; ++i) {
         stream.writeInt(this.mySpace.getID(this.myAbsoluteArgumentTypes[i]));
         stream.writeInt(this.myAbsoluteArgumentVariances[i]);
      }

      stream.writeBoolean(this.myAllSuperTypes != null);
      if (this.myAllSuperTypes != null) {
         this.myAllSuperTypes.store(stream);
      }
   }

   public void invalidate() {
      this.myAllSuperTypes = null;
   }

   public Type[] getAbsoluteArgumentTypes() {
      return this.myAbsoluteArgumentTypes;
   }

   public int[] getAbsoluteArgumentVariances() {
      return this.myAbsoluteArgumentVariances;
   }

   @Override
   public boolean isInterfaceType() {
      return this.getClassType().isInterfaceType();
   }

   @Override
   public FileEntry getFile() {
      return this.getClassType().getFile();
   }

   @Override
   public boolean isSealedType() {
      return this.getClassType().isSealedType();
   }

   @Override
   public boolean isDelegateType() {
      return this.getClassType().isDelegateType();
   }

   @Override
   public boolean isStructType() {
      return this.getClassType().isStructType();
   }

   @Override
   public boolean isEnumType() {
      return this.getClassType().isEnumType();
   }

   @Override
   public Type accessMemberType(int identifier, boolean caseSensitive, int parameterCount, Entity referingClassTypeOrPackage, FileEntry file, Language language) throws UnknownEntityException, AmbiguousEntityException {
      ClassType classtype = this.getClassType();
      Type member = classtype.accessMemberType(identifier, caseSensitive, parameterCount, referingClassTypeOrPackage, file,language);
      if (member.isClassType())
         member = ((ClassType)member).parameterizeCanonical();

      return this.replaceType(member);
   }

   public Type parameterize(Type[] argumentTypes) {
      int[] variances = new int[argumentTypes.length];
      return this.parameterize(argumentTypes, variances);
   }

   public Type parameterize(Type[] argumentTypes, int[] variances) {
      ClassType classType = this.getClassType();
      int len = classType.getParametertypeCount();
      int absoluteLen = classType.getAbsoluteParametertypeCount();
      if (len < absoluteLen) {
         Type[] oldArgTypes = this.getAbsoluteArgumentTypes();
         int[] oldVariances = this.getAbsoluteArgumentVariances();
         Type[] absoluteArgumentTypes = new Type[absoluteLen];
         int[] absoluteVariances = new int[absoluteLen];

         for(int i = 0; i < absoluteLen - len; ++i) {
            absoluteArgumentTypes[i] = oldArgTypes[i];
            absoluteVariances[i] = oldVariances[i];
         }

         for(int i = absoluteLen - len; i < absoluteLen; ++i) {
            absoluteArgumentTypes[i] = argumentTypes[i - absoluteLen + len];
            absoluteVariances[i] = variances[i - absoluteLen + len];
         }

         argumentTypes = absoluteArgumentTypes;
         variances = absoluteVariances;
      }

      return this.mySpace.getParameterizedtype(classType, argumentTypes, variances);
   }

   public SetOf<Type> getAllSuperTypes() {
      if (this.myAllSuperTypes == null) {
         this.myAllSuperTypes = new SetOf<>(this.mySpace);
         SetOf<Type> allSuperTypesOfClassType = this.myClassType.getAllSuperTypes();
         allSuperTypesOfClassType.DEFAULT_ITERATOR.init();

         while(allSuperTypesOfClassType.DEFAULT_ITERATOR.hasMoreElements()) {
            try {
               this.myAllSuperTypes.put(this.replaceType(allSuperTypesOfClassType.DEFAULT_ITERATOR.nextKey()));
            } catch (UnknownEntityException ignored) {
            }
         }
      }

      return this.myAllSuperTypes;
   }

   public Type replaceType(Type type) throws UnknownEntityException {
      return this.replaceType(type, true);
   }

   public Type replaceType(Type type, boolean readAccess) throws UnknownEntityException {
      if (type.isArrayType()) {
         return this.mySpace.getArraytype(this.replaceType(((ArrayType)type).getElementType()), ((ArrayType)type).getDimension());
      } else if (type.isParameterType()) {
         for(int i = 0; i < this.myAbsoluteArgumentTypes.length; ++i) {
            try {
               if (this.myClassType.getAbsoluteParametertype(i) == type)
                  return this.myAbsoluteArgumentTypes[i];

            } catch (UnknownEntityException ignored) {
            }
         }

         return type;
      } else if (!type.isParameterizedType()) {
         return type;
      } else {
         Type[] memberArgumentTypes = ((ParameterizedType)type).getAbsoluteArgumentTypes();
         int[] memberVariances = ((ParameterizedType)type).getAbsoluteArgumentVariances();
         int[] replacedVariances = new int[memberArgumentTypes.length];
         Type[] replacedTypes = new Type[memberArgumentTypes.length];


         for(int i = 0; i < memberArgumentTypes.length; ++i) {
            Type memberType = memberArgumentTypes[i];

            for(int j = 0; j < this.myAbsoluteArgumentTypes.length; ++j) {
               if (this.myClassType.getAbsoluteParametertype(j) == memberType) {
                  Type argumentBoundType = this.myClassType.getAbsoluteParametertype(j).getErasedType();
                  replacedTypes[i] = this.myAbsoluteArgumentTypes[j];
                  switch(memberVariances[i]) {
                     case INVARIANCE:
                        if (readAccess) {
                           replacedVariances[i] = this.myAbsoluteArgumentVariances[j];
                        } else {
                           switch(this.myAbsoluteArgumentVariances[j]) {
                              case INVARIANCE:
                                 replacedVariances[i] = this.myAbsoluteArgumentVariances[j];
                                break;
                              case BIVARIANCE:
                              case COVARIANCE:
                              case CONTRAVARIANCE:
                                 throw new UnknownEntityException();
                           }
                        }
                       break;
                     case BIVARIANCE:
                     case COVARIANCE:
                        if (readAccess) {
                           switch(this.myAbsoluteArgumentVariances[j]) {
                              case INVARIANCE:
                              case BIVARIANCE:
                              case 2:
                                 replacedVariances[i] = COVARIANCE;
                                 if (argumentBoundType == this.myAbsoluteArgumentTypes[j]) {
                                    replacedVariances[i] = BIVARIANCE;
                                 }
                               break;
                              case CONTRAVARIANCE:
                                 replacedVariances[i] = BIVARIANCE;
                                 replacedTypes[i] = argumentBoundType;
                           }
                        } else {
                           switch(this.myAbsoluteArgumentVariances[j]) {
                              case INVARIANCE:
                              case CONTRAVARIANCE:
                                 replacedVariances[i] = COVARIANCE;
                                 if (argumentBoundType == this.myAbsoluteArgumentTypes[j]) {
                                    replacedVariances[i] = BIVARIANCE;
                                 }
                                 break;
                              case BIVARIANCE:
                              case COVARIANCE:
                                 throw new UnknownEntityException();
                           }
                        }
                        break;
                     case CONTRAVARIANCE:
                        if (readAccess) {
                           switch(this.myAbsoluteArgumentVariances[j]) {
                              case INVARIANCE:
                              case CONTRAVARIANCE:
                                 replacedVariances[i] = CONTRAVARIANCE;
                                 if (argumentBoundType == this.myAbsoluteArgumentTypes[j]) {
                                    replacedVariances[i] = INVARIANCE;
                                 }
                                 break;
                              case BIVARIANCE:
                              case COVARIANCE:
                                 replacedVariances[i] = BIVARIANCE;
                                 replacedTypes[i] = argumentBoundType;
                           }
                        } else {
                           switch(this.myAbsoluteArgumentVariances[j]) {
                              case INVARIANCE:
                              case BIVARIANCE:
                              case COVARIANCE:
                                 replacedVariances[i] = CONTRAVARIANCE;
                                 if (argumentBoundType == this.myAbsoluteArgumentTypes[j]) {
                                    replacedVariances[i] = INVARIANCE;
                                 }
                                 break;
                              case CONTRAVARIANCE:
                                 replacedVariances[i] = INVARIANCE;
                                 replacedTypes[i] = argumentBoundType;
                           }
                        }
                     default:
                        break;
                  }
               }
            }

            replacedTypes[i] = this.replaceType(memberType, readAccess);
            replacedVariances[i] = memberVariances[i];
         }

         return this.mySpace.getParameterizedtype(((ParameterizedType)type).getClassType(), replacedTypes, replacedVariances);
      }
   }

   public ClassType getClassType() {
      return this.myClassType;
   }

   @Override
   public int getID() {
      return this.myID;
   }

   @Override
   public Language getLanguage() {
      return this.getClassType().getLanguage();
   }
}
