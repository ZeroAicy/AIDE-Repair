package com.aide.codemodel.abstraction;

import com.aide.codemodel.api.ClassType;
import com.aide.codemodel.api.FileEntry;
import com.aide.codemodel.api.Namespace;
import com.aide.codemodel.api.Type;
import com.aide.codemodel.api.excpetions.UnknownEntityException;

public interface TypeSystem {
   boolean hasTypeParametersOfEnclosingClassType();

   boolean inheritsBoundTypes();

   boolean supportsGenericTypeNameResolving();

   boolean supportsMethodParameterTypeVariables();

   Type getConditionalOperationType(FileEntry file, Type type1, Type type2) throws UnknownEntityException;

   Type getBinaryNumericOperationType(FileEntry file, int operator, Type type1, Type type2) throws UnknownEntityException;

   boolean isImplicitConversion(FileEntry file, Type type1, Type type2);

   boolean isExplicitConversion(FileEntry file, Type type1, Type type2);

   int getTypeSemanticForClassType(Namespace namespace, int identifier);

   int getTypeSemanticForPrimitiveType(int number);

   ClassType getRootClassType(FileEntry file) throws UnknownEntityException;

   ClassType getArraySuperClassType(FileEntry file) throws UnknownEntityException;
}
