package com.aide.codemodel.api.callback;


import com.aide.codemodel.abstraction.Language;
import com.aide.codemodel.api.FileEntry;

public interface HighlighterCallback {
   void fileStarted(FileEntry file);

   void unifedLineFound(FileEntry file, int line);

   void releaseSyntaxTree();

   void delegateFound(Language language,int startLine, int startColumn, int endLine, int endColumn);

   void keywordFound(Language language, int startLine, int startColumn, int endLine, int endColumn);

   void namespaceFound(Language language, int startLine, int startColumn, int endLine, int endColumn);

   void typeFound(Language language, int startLine, int startColumn, int endLine, int endColumn);
   void constructorFound(Language language, int startLine, int startColumn, int endLine, int endColumn);

   void identifierFound(Language language,int startLine,int startColumn,int endLine,int endColumn);

   void fieldFound(Language language,int startLine,int startColumn,int endLine,int endColumn);

   void methodFound(Language language,int startLine,int startColumn,int endLine,int endColumn);
   
   void localVariableFound(Language language,int startLine,int startColumn,int endLine,int endColumn);
   
   void languageVariableFound(Language language,int startLine,int startColumn,int endLine,int endColumn);

   void fileFinished(FileEntry file);
}
