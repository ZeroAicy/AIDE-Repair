package com.aide.codemodel.abstraction;


import com.aide.codemodel.api.SyntaxTree;

public interface Compiler {
   void compile(SyntaxTree ast, boolean createDebugMetadata);
}
