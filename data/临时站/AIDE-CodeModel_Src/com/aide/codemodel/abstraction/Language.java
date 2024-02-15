package com.aide.codemodel.abstraction;


public interface Language {

   String getName();

   void shrink();
   
   boolean isParenChar(char c);

/*   
   Parser getParser();*/

   
   Syntax getSyntax();

   
   SignatureAnalyzer getSignatureAnalyzer();

   
   TypeSystem getTypeSystem();

   
   CodeRenderer getRenderer();

   
   CodeAnalyzer getCodeAnalyzer();

   
   Tools getTools();

   
   Compiler getCompiler();

}
