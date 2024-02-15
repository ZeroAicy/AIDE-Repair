package com.aide.codemodel.abstraction;


import com.aide.codemodel.api.SyntaxTree;
import com.aide.codemodel.api.Type;
import com.aide.codemodel.api.collections.SetOfInt;
import com.aide.codemodel.api.excpetions.UnknownEntityException;

public interface CodeAnalyzer {
   Type analyzeTypeName(SyntaxTree ast, int line, int column, String name) throws UnknownEntityException;

   void analyzeImports(SyntaxTree ast);

   void analyzeEveryIdentifiers(SyntaxTree ast, SetOfInt identifiers);

   void analyzeEveryIdentifier(SyntaxTree ast, int identifier);

   void analyzeNode(SyntaxTree ast, int node);

   void analyzeNodeWithValues(SyntaxTree ast, int node);

   void analyzeNamesAndTypes(SyntaxTree ast);

   void analyzeErrors(SyntaxTree ast);
}
