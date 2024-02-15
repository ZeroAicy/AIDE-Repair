package com.aide.codemodel.abstraction;

import com.aide.codemodel.api.Entity;
import com.aide.codemodel.api.FileEntry;
import com.aide.codemodel.api.Member;
import com.aide.codemodel.api.Type;

public interface Tools {
   boolean isHighlighted();

   void requestParameterList(FileEntry file, int line, int column);

   void requestCompletionList(FileEntry file, int line, int column);

   void requestClassesCompletionList(FileEntry file);

   void requestSuperMethodsCompletionList(FileEntry file, int line, int column);

   void documentize(FileEntry file, int line, int column);

   void documentize(FileEntry file);

   void surroundWithTryCatch(FileEntry file, int startLine, int startColumn, int endLine, int endColumn);

   void addThrows(FileEntry file, int line, int column);

   void safeDelete(Entity entity);

   void createVariable(FileEntry file, int line, int column, int identifier, Type type);

   void createField(FileEntry file, int line, int column, int modifiers, int identifier, Type type);

   void createMethod(FileEntry file, int line, int column, int modifiers, int identifier, Type type, int[] argModifiers, Type[] argTypes, int[] argNames);

   void inlineVariable(FileEntry file,int line, int column);

   void createSettersAndGetters(FileEntry file, int startLine, int startColumn, int endLine, int endColumn);

   void createConstructor(FileEntry file, int startLine, int startColumn, int endLine, int endColumn);

   void extractMethod(FileEntry file, int startLine, int startColumn, int endLine, int endColumn);

   void implementMembers(FileEntry file, int line, int column);

   void overrideMember(FileEntry file, int line, int column, Member member);

   void introduceVariable(FileEntry file, int startLine, int startColumn, int endLine, int endColumn);

}
