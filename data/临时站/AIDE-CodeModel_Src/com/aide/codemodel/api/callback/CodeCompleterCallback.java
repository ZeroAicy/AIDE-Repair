package com.aide.codemodel.api.callback;

import com.aide.codemodel.api.Entity;
import com.aide.codemodel.api.FileEntry;
import com.aide.codemodel.api.Type;
import com.aide.codemodel.api.Variable;

public interface CodeCompleterCallback {
   void listElementUnknownIdentifierFound(String identifier);

   void listStarted();

   void listTitleFound(Entity entity);

   void listElementEntityFound(Entity entity, Type type, boolean isEnclosing);

   void listElementEntityFound(Entity entity, Type type, boolean isEnclosing, String name);

   void listElementEntityFound(Entity entity, Type type);

   void listElementEntityFound(Entity entity, boolean isEnclosing);

   void listElementEntityFound(Entity entity);

   void listElementVariableFound(Variable variable);

   void listElementKeywordFound(String keyword);

   void listCompleted(FileEntry file, int line, int column);

   void parameterListEntityFound(Entity entity, Type type);

   void parameterListFound(FileEntry file, int line, int column, int[] lines, int[] columns);

   void parameterListNotFound(FileEntry file, int line, int column);
}
