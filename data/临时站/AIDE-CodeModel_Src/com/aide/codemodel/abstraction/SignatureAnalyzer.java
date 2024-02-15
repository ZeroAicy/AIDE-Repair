package com.aide.codemodel.abstraction;


import com.aide.codemodel.api.ClassType;
import com.aide.codemodel.api.FileEntry;
import com.aide.codemodel.api.Member;
import com.aide.codemodel.api.SyntaxTree;

public interface SignatureAnalyzer {
   long getDeclarationDigest( SyntaxTree ast);

   long getPublicDeclarationDigest( SyntaxTree ast);

   long getClassDeclarationDigest( SyntaxTree ast);

   void doLoadNamespaces( FileEntry file);

   void doLoadPositions( FileEntry file);

   void doLoadTypes( FileEntry file);

   void doLoadSyntax( FileEntry file);

   void doLoadSuperClassTypes( FileEntry file,  ClassType classtype);

   void doLoadDefaultSuperClassTypes( FileEntry file,  ClassType classtype);

   void doLoadBoundTypes( FileEntry file,  ClassType classtype);

   void doLoadSuperTypes( FileEntry file,  ClassType classtype);

   void doLoadConstantValueOfField( FileEntry file,  Member member);
}
