package com.aide.codemodel.api;

import com.aide.codemodel.abstraction.Language;

public class Variable {
   private final FileEntry myFile;
   private final Language myLanguage;
   private final int myLine;
   private final int myStartColumn;
   private final int myEndColumn;
   private final int myIdentifier;
   private final Type myType;

   public Variable(FileEntry file, Language language, int line, int startColumn, int endColumn, int identifier, Type type) {
      this.myFile = file;
      myLanguage =language;
      this.myLine = line;
      this.myStartColumn = startColumn;
      this.myEndColumn = endColumn;
      this.myIdentifier = identifier;
      this.myType = type;
   }

   public Language getLanguage() {
      return myLanguage;
   }

   public String getHTMLString() {
      return myLanguage.getRenderer() != null ? myLanguage.getRenderer().getHTMLString(this) : "";
   }

   public FileEntry getFile() {
      return this.myFile;
   }

   public int getLine() {
      return this.myLine;
   }

   public int getStartColumn() {
      return this.myStartColumn;
   }

   public int getEndColumn() {
      return this.myEndColumn;
   }

   public int getIdentifier() {
      return this.myIdentifier;
   }

   public Type getType() {
      return this.myType;
   }
}
