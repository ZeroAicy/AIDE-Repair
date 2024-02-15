package com.aide.codemodel.api.callback;

import java.util.Hashtable;

import com.aide.codemodel.api.FileEntry;

public interface RefactoringCallback {
   void pasteText(FileEntry file, int line, int column);

   void clipText(FileEntry file,  int startLine, int startColumn, int endLine, int endColumn);

   void selectText(FileEntry file, int startLine, int startColumn, int endLine, int endColumn);

   void replaceText(FileEntry file, int startLine, int startColumn, int endLine, int endColumn, String newText);

   void moveText(FileEntry file,  int startLine, int startColumn, int endLine, int endColumn, int line, int column);

   void copyText(FileEntry file,  int startLine, int startColumn, int endLine, int endColumn, int line, int column);

   void indentLines(FileEntry file, int startLine, int endLine);

   void renameFileOrDir(FileEntry file, String newName);

   void moveFileOrDir(FileEntry file, FileEntry newFile);

   void deleteFile(FileEntry file);

   void warningFound(String warning);

   void refactoringNotSupported();

   void analysisStarted();

   void renameAnalysisFinished();

   void renameProblemFound(String problem);

   void moveTargetFound(String msg, String qualifiedName);

   void moveProblemFound(String problem);

   void moveAnalysisFinished();

   void inlineMethodProblemFound(String problem);

   void inlineMethodAnalysisFinished();

   void fixAnalysisFinished();

   void documentationProblemFound(String problem);

   void documentationAnalysisFinished();

   void createProblemFound(String problem);

   void createAnalysisFinished();

   void implementProblemFound(String problem);

   void implementAnalysisFinished();

   void extractProblemFound(String problem);

   void extractAnalysisFinished();

   void introduceAnalysisFinished();

   void inlineVariableAnalysisFinished();

   void introduceProblemFound(String problem);

   void organizeAmbiguousTypesFound(Hashtable<String, String[]> types);

   void organizeAnalysisFinished();

   void signatureProblemFound(String problem);

   void surroundProblemFound(String problem);

   void surroundAnalysisFinished();
}
