package com.aide.codemodel.api;

import static com.aide.codemodel.api.TypeSemantic.UNKNOWN_SEMANTIC;
import static com.aide.codemodel.api.Variance.BIVARIANCE;
import static com.aide.codemodel.api.Variance.CONTRAVARIANCE;
import static com.aide.codemodel.api.Variance.COVARIANCE;
import static com.aide.codemodel.api.Variance.INVARIANCE;

import java.io.IOException;

import com.aide.codemodel.abstraction.Language;

import com.aide.codemodel.api.collections.MapOfInt;
import com.aide.codemodel.api.collections.SetOf;
import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;
import com.aide.codemodel.api.excpetions.AmbiguousEntityException;
import com.aide.codemodel.api.excpetions.UnknownEntityException;

public class Type extends Entity {
    private final EntitySpace mySpace;
    private int mySemantic;

    public Type(FileSpace fileSpace, EntitySpace space, int semantic) {
        super(fileSpace,space);
        mySpace = space;
        mySemantic = semantic;
    }

    public Type(FileSpace fileSpace,EntitySpace space) {
        super(fileSpace,space);
        mySpace = space;
    }

    public boolean isReferable(FileEntry file) {
        return getFile() == null || getFile().isReferable(file);
    }

    public Type accessSuperFields(FileEntry file,Language language, int identifier, boolean caseSensitive, ClassType enclosingClassType, SetOf<Member> fields) {
        try {
            Type superType = getSuperType();
            superType.accessFields(file,language, identifier, caseSensitive, (ClassType) superType.getErasedType(), fields);
        } catch (UnknownEntityException ignored) {
        }

        return this;
    }

    public Type accessSuperMethods(FileEntry file,Language language, int identifier, boolean caseSensitive, ClassType enclosingClassType, SetOf<Member> methods) {
        try {
            Type superType = getSuperType();
            superType.accessMethods(file,language, identifier, caseSensitive, (ClassType) superType.getErasedType(), methods);
        } catch (UnknownEntityException ignored) {
        }

        return this;
    }

    public Type accessConstructors(ClassType referingClassType, SetOf<Member> constructors) {
        if (isParameterizedType()) {
            return ((ParameterizedType) this).getClassType().accessConstructors(referingClassType, constructors) == null ? null : this;
        } else {
            return null;
        }
    }

    public Type accessMethods(FileEntry file,Language language, int identifier, boolean caseSensitive, ClassType referingClassType, SetOf<Member> methods) {
        methods.clear();
        if (isParameterizedType()) {
            return ((ParameterizedType) this).getClassType().accessMethods(file,language, identifier, caseSensitive, referingClassType, methods) == null ? null : this;
        } else {
            try {
                if (isArrayType()) {
                    ClassType arraySuperClassType = mySpace.getArraySuperClasstype(file,language);
                    return arraySuperClassType.accessMethods(file,language, identifier, caseSensitive, arraySuperClassType, methods);
                } else if (isParameterType()) {
                    if (((ParameterType) this).getBoundTypeCount() == 1) {
                        return getErasedType().accessMethods(file,language, identifier, caseSensitive, referingClassType, methods);
                    } else {
                        return mySpace.getRootClasstype(file,language).accessMethods(file,language, identifier, caseSensitive, referingClassType, methods);
                    }
                } else if (isMethodParameterType()) {
                    if (((MethodParameterType) this).getBoundTypeCount() == 1) {
                        return getErasedType().accessMethods(file,language, identifier, caseSensitive, referingClassType, methods);
                    } else {
                        return mySpace.getRootClasstype(file,language).accessMethods(file,language, identifier, caseSensitive, referingClassType, methods);
                    }
                }
            } catch (UnknownEntityException ignored) {
            }
            return null;
        }
    }

    public Type accessFields(FileEntry file,Language language, int identifier, boolean caseSensitive, ClassType referingClassType, SetOf<Member> fields) {
        fields.clear();
        if (isParameterizedType()) {
            return ((ParameterizedType) this).getClassType().accessFields(file,language, identifier, caseSensitive, referingClassType, fields) == null ? null : this;
        } else {
            try {
                if (isArrayType()) {
                    ClassType arraySuperClassType = mySpace.getArraySuperClasstype(file,language);
                    return arraySuperClassType.accessFields(file,language, identifier, caseSensitive, arraySuperClassType, fields);
                } else if (isParameterType()) {
                    if (((ParameterType) this).getBoundTypeCount() == 1)
                        return getErasedType().accessFields(file,language, identifier, caseSensitive, referingClassType, fields);
                    else
                        return mySpace.getRootClasstype(file,language).accessFields(file,language, identifier, caseSensitive, referingClassType, fields);

                } else if (isMethodParameterType()) {
                    if (((MethodParameterType) this).getBoundTypeCount() == 1)
                        return getErasedType().accessFields(file,language, identifier, caseSensitive, referingClassType, fields);
                    else
                        return mySpace.getRootClasstype(file,language).accessFields(file,language, identifier, caseSensitive, referingClassType, fields);

                }
            } catch (UnknownEntityException ignored) {
            }

            return null;
        }
    }

    public Type accessMemberType(int identifier, boolean caseSensitive, int parameterTypeCount, Entity referingClasstypeOrPackage, FileEntry file,Language language) throws UnknownEntityException, AmbiguousEntityException {
        if (isClassType()) {
            return ((ClassType) this).accessMemberClasstype(identifier, caseSensitive, parameterTypeCount, referingClasstypeOrPackage, file);
        } else if (isParameterizedType()) {
            return accessMemberType(identifier, caseSensitive, parameterTypeCount, referingClasstypeOrPackage, file,language);
        } else if (isParameterType()) {
            return ((ParameterType) this).getBoundTypeCount() == 1
                    ? getErasedType().accessMemberType(identifier, caseSensitive, parameterTypeCount, referingClasstypeOrPackage, file,language)
                    : mySpace.getRootClasstype(file,language).accessMemberType(identifier, caseSensitive, parameterTypeCount, referingClasstypeOrPackage, file,language);
        } else if (isMethodParameterType()) {
            return ((MethodParameterType) this).getBoundTypeCount() == 1
                    ? getErasedType().accessMemberType(identifier, caseSensitive, parameterTypeCount, referingClasstypeOrPackage, file,language)
                    : mySpace.getRootClasstype(file,language).accessMemberType(identifier, caseSensitive, parameterTypeCount, referingClasstypeOrPackage, file,language);
        } else {
            throw new UnknownEntityException();
        }
    }

    public Type getSuperType() throws UnknownEntityException {
        if (isParameterizedType()) {
            return ((ParameterizedType) this).replaceType(((ParameterizedType) this).getClassType().getSuperType());
        } else {
            throw new UnknownEntityException();
        }
    }

    public MapOfInt<Member> getAllOperators() {
        return isParameterizedType() ? ((ParameterizedType) this).getClassType().getAllOperators() : null;
    }

    public boolean isEqualTo(Type type) {
        return this == type || getSemantic() != UNKNOWN_SEMANTIC && getSemantic() == type.getSemantic();
    }

    public boolean isRawType() {
        return isClassType() && ((ClassType) this).getParametertypeCount() > 0;
    }

    public boolean isSubTypeOf(Type type2, Member method1, Member method2) {
        if (this == type2) {
            return true;
        } else {
            if (isMethodParameterType() && type2.isMethodParameterType()) {
                return ((MethodParameterType) this).getMethod() == method1
                        && ((MethodParameterType) type2).getMethod() == method2
                        && ((MethodParameterType) this).getNumber() == ((MethodParameterType) type2).getNumber();
            } else {
                if (isArrayType() && type2.isArrayType()) {
                    if (((ArrayType) this).getDimension() != ((ArrayType) type2).getDimension())
                        return false;

                    return ((ArrayType) this).getElementType().isSubTypeOf(((ArrayType) type2).getElementType(), method1, method2);
                }

                if (isParameterizedType() && type2.isParameterizedType()) {
                    if (!((ParameterizedType) this).getClassType().isSubClassTypeOf(((ParameterizedType) type2).getClassType())) {
                        return false;
                    }

                    Type[] argumentTypes = ((ParameterizedType) this).getAbsoluteArgumentTypes();
                    Type[] types = ((ParameterizedType) type2).getAbsoluteArgumentTypes();

                    for (int i = 0; i < argumentTypes.length; ++i) {
                        if (!argumentTypes[i].isEqualTo(types[i], method1, method2)) {
                            return false;
                        }
                    }

                    return true;
                }
            }

            return false;
        }
    }

    public boolean isEqualTo(Type type2, Member method1, Member method2) {
        if (isEqualTo(type2)) {
            return true;
        } else {
            if (isMethodParameterType() && type2.isMethodParameterType()) {
                return ((MethodParameterType) this).getMethod() == method1
                        && ((MethodParameterType) type2).getMethod() == method2
                        && ((MethodParameterType) this).getNumber() == ((MethodParameterType) type2).getNumber();
            } else {
                if (isArrayType() && type2.isArrayType()) {
                    return ((ArrayType) this).getElementType().isEqualTo(((ArrayType) type2).getElementType(), method1, method2);
                }

                if (isParameterizedType() && type2.isParameterizedType()) {
                    if (((ParameterizedType) this).getClassType() != ((ParameterizedType) type2).getClassType()) {
                        return false;
                    }

                    Type[] argumentTypes = ((ParameterizedType) this).getAbsoluteArgumentTypes();
                    Type[] types = ((ParameterizedType) type2).getAbsoluteArgumentTypes();

                    for (int i = 0; i < argumentTypes.length; ++i) {
                        if (!argumentTypes[i].isEqualTo(types[i], method1, method2)) {
                            return false;
                        }
                    }

                    return true;
                }
            }

            return false;
        }
    }

    public boolean isSubTypeOf(FileEntry file,Language language, Type superType) {
        SetOf<Type> superTypes;
        if (isClassType())
            superTypes = ((ClassType) this).getAllSuperTypes();
        else
            superTypes = ((ParameterizedType) this).getAllSuperTypes();

        if (superTypes.contains(superType)) {
            return true;
        } else {
            superTypes.DEFAULT_ITERATOR.init();

            try {
                while (superTypes.DEFAULT_ITERATOR.hasMoreElements()) {
                    Type t = superTypes.DEFAULT_ITERATOR.nextKey();
                    if (t.isParameterizedType()
                            && superType.isParameterizedType()
                            && ((ParameterizedType) t).getClassType() == ((ParameterizedType) superType).getClassType()) {
                        int[] variancesFrom = ((ParameterizedType) t).getAbsoluteArgumentVariances();
                        int[] variancesTo = ((ParameterizedType) superType).getAbsoluteArgumentVariances();
                        Type[] argumentTypesFrom = ((ParameterizedType) t).getAbsoluteArgumentTypes();
                        Type[] argumentTypesTo = ((ParameterizedType) superType).getAbsoluteArgumentTypes();

                        for (int i = 0; i < variancesTo.length; ++i) {
                            switch (variancesFrom[i]) {
                                case INVARIANCE:
                                    switch (variancesTo[i]) {
                                        case INVARIANCE:
                                            if (argumentTypesFrom[i] != argumentTypesTo[i])
                                                return false;
                                            continue;
                                        case BIVARIANCE:
                                        case COVARIANCE:
                                            if (!argumentTypesFrom[i].isImplicitConvertibleTo(file,language, argumentTypesTo[i]))
                                                return false;
                                            continue;
                                        case CONTRAVARIANCE:
                                            if (!argumentTypesTo[i].isImplicitConvertibleTo(file,language, argumentTypesFrom[i]))
                                                return false;
                                        default:
                                            continue;
                                    }
                                case BIVARIANCE:
                                case COVARIANCE:
                                    switch (variancesTo[i]) {
                                        case INVARIANCE:
                                        case CONTRAVARIANCE:
                                            return false;
                                        case BIVARIANCE:
                                        case COVARIANCE:
                                            if (!argumentTypesFrom[i].isImplicitConvertibleTo(file,language, argumentTypesTo[i]))
                                                return false;
                                            continue;
                                        default:
                                            continue;
                                    }
                                case CONTRAVARIANCE:
                                    switch (variancesTo[i]) {
                                        case INVARIANCE:
                                            return false;
                                        case BIVARIANCE:
                                        case COVARIANCE:
                                            return argumentTypesTo[i] == mySpace.getRootClasstype(file,language);
                                        case CONTRAVARIANCE:
                                            if (!argumentTypesTo[i].isImplicitConvertibleTo(file,language, argumentTypesFrom[i]))
                                                return false;
                                    }
                            }
                        }

                        return true;
                    }
                }
            } catch (UnknownEntityException ignored) {
            }

            return false;
        }
    }

    public boolean isExplicitConvertibleTo(FileEntry file,Language language, Type totype) {
        return mySpace.isExplicitConversion(file,language, this, totype);
    }

    public boolean isImplicitConvertibleTo(FileEntry file, Language language, Type totype) {
        return mySpace.isImplicitConversion(file,language, this, totype);
    }

    public Type getCommonSuperTypeWith(FileEntry file,Language language, Type type2) throws UnknownEntityException {
        if ((isClassType() || isParameterizedType()) && (type2.isClassType() || type2.isParameterizedType())) {
            Type type = mySpace.getRootClasstype(file,language);
            SetOf<ClassType> superClassTypes1 = ((ClassType) getErasedType()).getAllSuperClasstypes();
            SetOf<ClassType> superClassTypes2 = ((ClassType) type2.getErasedType()).getAllSuperClasstypes();
            superClassTypes1.DEFAULT_ITERATOR.init();

            while (superClassTypes1.DEFAULT_ITERATOR.hasMoreElements()) {
                ClassType t = superClassTypes1.DEFAULT_ITERATOR.nextKey();
                if (superClassTypes2.contains(t) && (t.getAllSuperClasstypes().contains(type) || type.isInterfaceType() && !t.isInterfaceType())) {
                    type = t;
                }
            }

            SetOf<Type> superTypes1;
            if (isParameterizedType())
                superTypes1 = ((ParameterizedType) this).getAllSuperTypes();
             else
                superTypes1 = ((ClassType) this).getAllSuperTypes();

            SetOf<Type> superTypes2;
            if (isParameterizedType()) {
                assert this instanceof ParameterizedType;
                superTypes2 = ((ParameterizedType) this).getAllSuperTypes();
            } else {
                assert this instanceof ClassType;
                superTypes2 = ((ClassType) this).getAllSuperTypes();
            }

            superTypes1.DEFAULT_ITERATOR.init();

            while (superTypes1.DEFAULT_ITERATOR.hasMoreElements()) {
                Type t = superTypes1.DEFAULT_ITERATOR.nextKey();
                if (t.getErasedType() == type && type2.isImplicitConvertibleTo(file,language, t)) {
                    type = t;
                }
            }

            superTypes2.DEFAULT_ITERATOR.init();

            while (superTypes2.DEFAULT_ITERATOR.hasMoreElements()) {
                Type t = superTypes2.DEFAULT_ITERATOR.nextKey();
                if (t.getErasedType() == type && isImplicitConvertibleTo(file,language, t)) {
                    type = t;
                }
            }

            if (isParameterizedType() && type2.isParameterizedType() && type.isClassType() && ((ClassType) type).getParametertypeCount() > 0) {
                type = mySpace.getRootClasstype(file,language);
            }

            return type;
        } else {
            return mySpace.getRootClasstype(file,language);
        }
    }

    public boolean containsType(Type partType) {
        if (this == partType) {
            return true;
        } else if (isArrayType()) {
            return ((ArrayType) this).getElementType().containsType(partType);
        } else {
            if (isParameterizedType()) {
                Type[] argTypes = ((ParameterizedType) this).getAbsoluteArgumentTypes();

                for (Type argtype : argTypes) {
                    if (argtype.containsType(partType))
                        return true;
                }
            }

            return false;
        }
    }

    public boolean containsVariable() {
        if (isMethodParameterTypeVariable()) {
            return true;
        } else if (isArrayType()) {
            return ((ArrayType) this).getElementType().containsVariable();
        } else {
            if (isParameterizedType()) {
                Type[] argumentTypes = ((ParameterizedType) this).getAbsoluteArgumentTypes();

                for (Type absoluteargumenttype : argumentTypes) {
                    if (absoluteargumenttype.containsVariable())
                        return true;
                }
            }

            return false;
        }
    }

    public Type getNonVariableContainigType() throws UnknownEntityException {
        if (!containsVariable()) {
            return this;
        } else if (isMethodParameterTypeVariable()) {
            MethodParameterType methodparametertype = ((MethodParameterTypeVariable) this).getMethodParameterType();
            return methodparametertype.getErasedType();
        } else if (isArrayType()) {
            return mySpace.getArraytype(((ArrayType) this).getElementType().getNonVariableContainigType(), ((ArrayType) this).getDimension());
        } else if (!isParameterizedType()) {
            return this;
        } else {
            Type[] argumentTypes = ((ParameterizedType) this).getAbsoluteArgumentTypes();
            int[] variances = ((ParameterizedType) this).getAbsoluteArgumentVariances();
            Type[] replacementTypes = new Type[argumentTypes.length];

            for (int i = 0; i < argumentTypes.length; ++i) {
                replacementTypes[i] = argumentTypes[i].getNonVariableContainigType();
            }

            return mySpace.getParameterizedtype(((ParameterizedType) this).getClassType(), replacementTypes, variances);
        }
    }

    public boolean isNonInvariantType() {
        if (isParameterizedType()) {
            int[] variances = ((ParameterizedType) this).getAbsoluteArgumentVariances();

            for (int variance : variances) {
                if (variance != INVARIANCE)
                    return true;
            }
        }

        return false;
    }

    @Override
    public void load(StoreInputStream stream) throws IOException {
        super.load(stream);
        mySemantic = stream.readInt();
    }

    @Override
    public void store(StoreOutputStream stream) throws IOException {
        super.store(stream);
        stream.writeInt(mySemantic);
    }

    public int getSemantic() {
        return mySemantic;
    }

    public boolean isSealedType() {
        return false;
    }

    public boolean isInterfaceType() {
        return false;
    }

    public boolean isDelegateType() {
        return false;
    }

    public boolean isStructType() {
        return false;
    }

    public boolean isEnumType() {
        return false;
    }

    public Type getErasedType() throws UnknownEntityException {
        if (isParameterizedType()) {
            return ((ParameterizedType) this).getClassType();
        } else if (isParameterType()) {
            return getErasedType().getErasedType();
        } else if (isMethodParameterType()) {
            return getErasedType().getErasedType();
        } else {
            return isArrayType()
                    ? mySpace.getArraytype(((ArrayType) this).getElementType().getErasedType(), ((ArrayType) this).getDimension())
                    : this;
        }
    }
}
