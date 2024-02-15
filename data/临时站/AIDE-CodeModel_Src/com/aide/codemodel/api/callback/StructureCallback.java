package com.aide.codemodel.api.callback;

import com.aide.codemodel.api.Entity;
import com.aide.codemodel.api.FileEntry;

public interface StructureCallback {
   void fileStarted();

   void entityFound(Entity entity, int identifierLine, int identifierStartColumn, int identifierEndColumn, int startLine, int startColumn, int endLine, int endColumn, int node);

   void entityFound(Entity entity, int identifierLine, int identifierStartColumn, int identifierEndColumn, int startLine, int startColumn, int endLine, int endColumn);

   void fileFinished(FileEntry file, int node);
}
