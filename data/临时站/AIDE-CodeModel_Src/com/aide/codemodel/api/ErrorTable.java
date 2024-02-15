package com.aide.codemodel.api;

import java.io.IOException;
import java.util.Vector;

import com.aide.codemodel.abstraction.Language;
import com.aide.codemodel.abstraction.Tools;

import com.aide.codemodel.api.collections.HashtableOfInt;
import com.aide.codemodel.api.collections.SetOfFileEntry;
import com.aide.codemodel.api.collections.SetOfInt;
import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;

public class ErrorTable {
   private final Model model;
   private final FileSpace filespace;
   private final EntitySpace space;
   private HashtableOfInt<FileContent> filecontents;
   private SetOfInt semanticerrors;
   private SetOfInt compileerrors;
   private Error lastError;

   protected ErrorTable(Model model) {
      this.model = model;
      this.filespace = model.myFileSpace;
      this.space = model.mySpace;
      this.semanticerrors = new SetOfInt();
      this.compileerrors = new SetOfInt();
      this.filecontents = new HashtableOfInt<>();
   }

   protected void load(StoreInputStream stream) throws IOException {
      this.semanticerrors = new SetOfInt(stream);
      this.compileerrors = new SetOfInt(stream);
      int count = stream.readInt();
      this.filecontents = new HashtableOfInt<>(count);

      for(int i = 0; i < count; ++i) {
         FileEntry file = this.filespace.getFileEntry(stream.readInt());
         FileContent content = new FileContent(stream);
         this.filecontents.put(file.getID(), content);
      }
   }

   public void store(StoreOutputStream stream) throws IOException {
      this.semanticerrors.store(stream);
      this.compileerrors.store(stream);
      stream.writeInt(this.filecontents.size());
      this.filecontents.DEFAULT_ITERATOR.init();

      while(this.filecontents.DEFAULT_ITERATOR.hasMoreElements()) {
         FileEntry file = this.filespace.getFileEntry(this.filecontents.DEFAULT_ITERATOR.nextKey());
         FileContent content = this.filecontents.DEFAULT_ITERATOR.nextValue();
         stream.writeInt(file.getID());
         content.store(stream);
      }
   }

   public void addInspection(FileEntry file, int startLine, int startColumn, int endLine, int endColumn, String msg, int kind) {
      Error error = new Error(startLine, startColumn, endLine, endColumn, "Warning: " + msg, kind, 0);
      if (!this.filecontents.contains(file.getID())) {
         this.filecontents.put(file.getID(), new FileContent());
      }

      this.filecontents.get(file.getID()).inspections.addElement(error);
      this.lastError = error;
   }

   public void addWarning(FileEntry file, int startLine, int startColumn, int endLine, int endColumn, String msg, int kind) {
      if (startLine > 0) {
         Error error = new Error(startLine, startColumn, endLine, endColumn, msg, kind, 0);
         if (!this.filecontents.contains(file.getID())) {
            this.filecontents.put(file.getID(), new FileContent());
         }

         this.filecontents.get(file.getID()).analysiserrors.addElement(error);
         this.lastError = error;
      } else {
         this.lastError = null;
      }
   }

   public void addSemanticWarning(FileEntry file, int startLine, int startColumn, int endLine, int endColumn, String msg, int kind) {
      if (startLine > 0) {
         Error error = new Error(startLine, startColumn, endLine, endColumn, msg, kind, 0);
         if (!this.filecontents.contains(file.getID())) {
            this.filecontents.put(file.getID(), new FileContent());
         }

         this.filecontents.get(file.getID()).analysiserrors.addElement(error);
         this.semanticerrors.put(file.getID());
         this.lastError = error;
      } else {
         this.lastError = null;
      }
   }

   public void addTODO(FileEntry file, int startLine, int startColumn, int endLine, int endColumn, String msg, int kind, int pattern) {
      if (startLine > 0) {
         Error error = new Error(startLine, startColumn, endLine, endColumn, msg, kind, pattern);
         if (!this.filecontents.contains(file.getID())) {
            this.filecontents.put(file.getID(), new FileContent());
         }

         this.filecontents.get(file.getID()).analysiserrors.addElement(error);
         this.lastError = error;
      } else {
         this.lastError = null;
      }
   }

   public void addSemanticError(FileEntry file, int startLine, int startColumn, int endLine, int endColumn, String msg, int kind) {
      if (startLine > 0) {
         Error error = new Error(startLine, startColumn, endLine, endColumn, msg, kind, 0);
         if (!this.filecontents.contains(file.getID())) {
            this.filecontents.put(file.getID(), new FileContent());
         }

         this.filecontents.get(file.getID()).analysiserrors.addElement(error);
         this.semanticerrors.put(file.getID());
         this.compileerrors.put(file.getID());
         this.lastError = error;
      } else {
         this.lastError = null;
      }
   }

   public void addError(FileEntry file, int startLine, int startColumn, int endLine, int endColumn, String msg, int kind) {
      if (startLine > 0) {
         Error error = new Error(startLine, startColumn, endLine, endColumn, msg, kind, 0);
         if (!this.filecontents.contains(file.getID())) {
            this.filecontents.put(file.getID(), new FileContent());
         }

         this.filecontents.get(file.getID()).analysiserrors.addElement(error);
         this.compileerrors.put(file.getID());
         this.lastError = error;
      } else {
         this.lastError = null;
      }
   }

   public void addParseError(FileEntry file, int startLine, int startColumn, int endLine, int endColumn, String msg, int kind) {
      if (startLine > 0) {
         Error error = new Error(startLine, startColumn, endLine, endColumn, msg, kind, 0);
         if (!this.filecontents.contains(file.getID())) {
            this.filecontents.put(file.getID(), new FileContent());
         }

         this.filecontents.get(file.getID()).parseerrors.addElement(error);
         this.compileerrors.put(file.getID());
         this.lastError = error;
      } else {
         this.lastError = null;
      }
   }

   public void addFixClass(FileEntry file, FileEntry dir, int identifier, String msg) {
   }

   public void addFixGenerify(FileEntry file, String p1) {
   }

   public void addFixSafeDelete(Entity entity, String msg) {
      if (this.lastError != null) {
         Fix fix = new Fix(6, entity, msg);
         if (this.lastError.fixes == null) {
            this.lastError.fixes = new Vector<>(3);
         }

         this.lastError.fixes.addElement(fix);
      }
   }

   public void addFixMethod(
           FileEntry file, int line, int column, int modifiers, int identifier, Type type, int[] argmodifiers, Type[] argtypes, int[] argnames, String msg
   ) {
      if (this.lastError != null) {
         Fix fix = new Fix(5, file, line, column, modifiers, identifier, type, argmodifiers, argtypes, argnames, msg);
         if (this.lastError.fixes == null) {
            this.lastError.fixes = new Vector<>(3);
         }

         this.lastError.fixes.addElement(fix);
      }
   }

   public void addFixField(FileEntry file, int line, int column, int modifiers, int identifier, Type type, String msg) {
      if (this.lastError != null) {
         Fix fix = new Fix(4, file, line, column, modifiers, identifier, type, msg);
         if (this.lastError.fixes == null) {
            this.lastError.fixes = new Vector<>(3);
         }

         this.lastError.fixes.addElement(fix);
      }
   }

   public void addFixVariable(FileEntry file, int line, int column, int identifier, Type type, String msg) {
      if (this.lastError != null) {
         Fix fix = new Fix(3, line, column, identifier, type, msg);
         if (this.lastError.fixes == null) {
            this.lastError.fixes = new Vector<>(3);
         }

         this.lastError.fixes.addElement(fix);
      }
   }

   public void addFixParameter(FileEntry file, int line, int column, int identifier, Type type, String msg) {
      if (this.lastError != null) {
         Fix fix = new Fix(10, line, column, identifier, type, msg);
         if (this.lastError.fixes == null) {
            this.lastError.fixes = new Vector<>(3);
         }

         this.lastError.fixes.addElement(fix);
      }
   }

   public void addFixSurround(FileEntry file, int line, int column, String msg) {
      if (this.lastError != null) {
         Fix fix = new Fix(8, line, column, msg);
         if (this.lastError.fixes == null) {
            this.lastError.fixes = new Vector<>(3);
         }

         this.lastError.fixes.addElement(fix);
      }
   }

   public void addFixAddThrows(FileEntry file, int line, int column, String msg) {
      if (this.lastError != null) {
         Fix fix = new Fix(9, line, column, msg);
         if (this.lastError.fixes == null) {
            this.lastError.fixes = new Vector<>(3);
         }

         this.lastError.fixes.addElement(fix);
      }
   }

   public void addFixImplement(FileEntry file, int line, int column, String msg) {
      if (this.lastError != null) {
         Fix fix = new Fix(1, line, column, msg);
         if (this.lastError.fixes == null) {
            this.lastError.fixes = new Vector<>(3);
         }

         this.lastError.fixes.addElement(fix);
      }
   }

   public void addFixImport(FileEntry file, ClassType classtype, String msg) {
      if (this.lastError != null) {
         Fix fix = new Fix(2, classtype, msg);
         if (this.lastError.fixes == null) {
            this.lastError.fixes = new Vector<>(3);
         }

         this.lastError.fixes.addElement(fix);
      }
   }

   public void addFixReplace(FileEntry file, int startLine, int startColumn, int endLine, int endColumn, String replacement, String msg) {
      if (this.lastError != null) {
         Fix fix = new Fix(0, startLine, startColumn, endLine, endColumn, replacement, msg);
         if (this.lastError.fixes == null) {
            this.lastError.fixes = new Vector<>(3);
         }

         this.lastError.fixes.addElement(fix);
      }
   }

   public void addFixRemoveTwice(
      FileEntry file,
      int startLine1,
      int startColumn1,
      int endLine1,
      int endColumn1,
      int startLine2,
      int startColumn2,
      int endLine2,
      int endColumn2,
      String msg
   ) {
      if (this.lastError != null) {
         Fix fix = new Fix(7, startLine1, startColumn1, endLine1, endColumn1, startLine2, startColumn2, endLine2, endColumn2, msg);
         if (this.lastError.fixes == null) {
            this.lastError.fixes = new Vector<>(3);
         }

         this.lastError.fixes.addElement(fix);
      }
   }

   public SetOfFileEntry getFilesWithErrors() {
      SetOfFileEntry files = new SetOfFileEntry(this.filespace);
      this.filecontents.DEFAULT_ITERATOR.init();

      while(this.filecontents.DEFAULT_ITERATOR.hasMoreElements()) {
         files.put(this.filespace.getFileEntry(this.filecontents.DEFAULT_ITERATOR.nextKey()));
      }

      return files;
   }

   public void clearInspections(FileEntry file) {
      if (this.filecontents.contains(file.getID())) {
         this.filecontents.get(file.getID()).inspections = new Vector<>();
      }
   }

   public void clearNonParserErrors(FileEntry file) {
      if (this.filecontents.contains(file.getID())) {
         this.filecontents.get(file.getID()).analysiserrors = new Vector<>();
      }

      this.semanticerrors.remove(file.getID());
      this.compileerrors.remove(file.getID());
   }

   public void clearParseErrors(FileEntry file) {
      if (this.filecontents.contains(file.getID())) {
         this.filecontents.get(file.getID()).parseerrors = new Vector<>();
      }
   }

   public boolean containsInspections(FileEntry file) {
      return this.filecontents.contains(file.getID()) && this.filecontents.get(file.getID()).inspections.size() > 0;
   }

   public boolean containsCompileErrors(FileEntry file) {
      return this.compileerrors.contains(file.getID());
   }

   public boolean containsErrorsOrWarnings(FileEntry file) {
      return this.filecontents.contains(file.getID());
   }

   public boolean containsSemanticErrors(FileEntry file) {
      return this.semanticerrors.contains(file.getID());
   }

   public int getInspectionCount(FileEntry file) {
      return !this.filecontents.contains(file.getID()) ? 0 : this.filecontents.get(file.getID()).inspections.size();
   }

   public int getInspectionStartLine(FileEntry file, int n) {
      return this.filecontents.get(file.getID()).inspections.elementAt(n).startLine;
   }

   public int getInspectionStartColumn(FileEntry file, int n) {
      return this.filecontents.get(file.getID()).inspections.elementAt(n).startColumn;
   }

   public int getInspectionEndLine(FileEntry file, int n) {
      return this.filecontents.get(file.getID()).inspections.elementAt(n).endLine;
   }

   public int getInspectionEndColumn(FileEntry file, int n) {
      return this.filecontents.get(file.getID()).inspections.elementAt(n).endColumn;
   }

   public String getInspectionText(FileEntry file, int n) {
      return this.filecontents.get(file.getID()).inspections.elementAt(n).msg;
   }

   public int getInspectionKind(FileEntry file, int n) {
      return this.filecontents.get(file.getID()).inspections.elementAt(n).kind;
   }

   public int getInspectionFixesCount(FileEntry file, int n) {
      Vector<Fix> fixes = this.filecontents.get(file.getID()).inspections.elementAt(n).fixes;
      return fixes == null ? 0 : fixes.size();
   }

   public String getInspectionFixText(FileEntry file, int n, int i) {
      Fix fix = this.filecontents.get(file.getID()).inspections.elementAt(n).fixes.elementAt(i);
      return fix.msg;
   }

   public int getErrorCount(FileEntry file) {
      if (!this.filecontents.contains(file.getID())) {
         return 0;
      } else {
         Vector<Error> analysiserrors = this.filecontents.get(file.getID()).analysiserrors;
         Vector<Error> parseerrors = this.filecontents.get(file.getID()).parseerrors;
         return analysiserrors.size() + parseerrors.size();
      }
   }

   public int getErrorStartLine(FileEntry file, int n) {
      int pn = this.filecontents.get(file.getID()).parseerrors.size();
      return n >= pn
         ? this.filecontents.get(file.getID()).analysiserrors.elementAt(n - pn).startLine
         : this.filecontents.get(file.getID()).parseerrors.elementAt(n).startLine;
   }

   public int getErrorStartColumn(FileEntry file, int n) {
      int pn = this.filecontents.get(file.getID()).parseerrors.size();
      return n >= pn
         ? this.filecontents.get(file.getID()).analysiserrors.elementAt(n - pn).startColumn
         : this.filecontents.get(file.getID()).parseerrors.elementAt(n).startColumn;
   }

   public int getErrorEndLine(FileEntry file, int n) {
      int pn = this.filecontents.get(file.getID()).parseerrors.size();
      return n >= pn
         ? this.filecontents.get(file.getID()).analysiserrors.elementAt(n - pn).endLine
         : this.filecontents.get(file.getID()).parseerrors.elementAt(n).endLine;
   }

   public int getErrorEndColumn(FileEntry file, int n) {
      int pn = this.filecontents.get(file.getID()).parseerrors.size();
      return n >= pn
         ? this.filecontents.get(file.getID()).analysiserrors.elementAt(n - pn).endColumn
         : this.filecontents.get(file.getID()).parseerrors.elementAt(n).endColumn;
   }

   public String getErrorText(FileEntry file, int n) {
      int pn = this.filecontents.get(file.getID()).parseerrors.size();
      return n >= pn
         ? this.filecontents.get(file.getID()).analysiserrors.elementAt(n - pn).msg
         : this.filecontents.get(file.getID()).parseerrors.elementAt(n).msg;
   }

   public int getErrorKind(FileEntry file, int n) {
      int pn = this.filecontents.get(file.getID()).parseerrors.size();
      return n >= pn
         ? this.filecontents.get(file.getID()).analysiserrors.elementAt(n - pn).kind
         : this.filecontents.get(file.getID()).parseerrors.elementAt(n).kind;
   }

   public int getErrorPattern(FileEntry file, int n) {
      int pn = this.filecontents.get(file.getID()).parseerrors.size();
      return n >= pn
         ? this.filecontents.get(file.getID()).analysiserrors.elementAt(n - pn).todopattern
         : this.filecontents.get(file.getID()).parseerrors.elementAt(n).todopattern;
   }

   public int getErrorFixesCount(FileEntry file, int n) {
      int pn = this.filecontents.get(file.getID()).parseerrors.size();
      Error error;
      if (n >= pn) {
         error = this.filecontents.get(file.getID()).analysiserrors.elementAt(n - pn);
      } else {
         error = this.filecontents.get(file.getID()).parseerrors.elementAt(n);
      }

      return error.fixes == null ? 0 : error.fixes.size();
   }

   public String getErrorFixText(FileEntry file, int n, int i) {
      int pn = this.filecontents.get(file.getID()).parseerrors.size();
      Error error;
      if (n >= pn) {
         error = this.filecontents.get(file.getID()).analysiserrors.elementAt(n - pn);
      } else {
         error = this.filecontents.get(file.getID()).parseerrors.elementAt(n);
      }

      Fix fix = error.fixes.elementAt(i);
      return fix.msg;
   }

   public void applyFix(FileEntry file, Language language, boolean inspection, int n, int i) {
      Tools tools = language.getTools();
      if (tools != null) {
         Fix fix;
         if (inspection) {
            Vector<Fix> fixes = this.filecontents.get(file.getID()).inspections.elementAt(n).fixes;
            fix = fixes.elementAt(i);
         } else {
            int pn = this.filecontents.get(file.getID()).parseerrors.size();
            Error error;
            if (n >= pn) {
               error = this.filecontents.get(file.getID()).analysiserrors.elementAt(n - pn);
            } else {
               error = this.filecontents.get(file.getID()).parseerrors.elementAt(n);
            }

            fix = error.fixes.elementAt(i);
         }

         switch(fix.kind) {
            case 0:
               this.fixReplaceText(file, fix.startLine, fix.startColumn, fix.endLine, fix.endColumn, fix.replacement);
               break;
            case 1:
               tools.implementMembers(file, fix.startLine, fix.startColumn);
               break;
            case 2:
               this.addImport(file, (ClassType)fix.entity);
               break;
            case 3:
               tools.createVariable(file, fix.startLine, fix.startColumn, fix.identifier, (Type)fix.entity);
               break;
            case 4:
               tools.createField(fix.file, fix.startLine, fix.startColumn, fix.modifiers, fix.identifier, (Type)fix.entity);
               break;
            case 5:
               tools.createMethod(
                  fix.file, fix.startLine, fix.startColumn, fix.modifiers, fix.identifier, (Type)fix.entity, fix.argmodifiers, fix.argtypes, fix.argnames
               );
               break;
            case 6:
               tools.safeDelete(fix.entity);
               break;
            case 7:
               this.fixRemoveTextTwice(
                  file, fix.startLine, fix.startColumn, fix.endLine, fix.endColumn, fix.startLine2, fix.startColumn2, fix.endLine2, fix.endColumn2
               );
               break;
            case 8:
               tools.surroundWithTryCatch(file, fix.startLine, fix.startColumn, fix.startLine, fix.startColumn);
               break;
            case 9:
               tools.addThrows(file, fix.startLine, fix.startColumn);
               break;
            case 10:
               this.addParameter(file, fix.startLine, fix.startColumn, fix.identifier, (Type)fix.entity);
         }
      }
   }

   protected void addImport(FileEntry file, ClassType entity) {
   }

   protected void addParameter(FileEntry file, int startLine, int startColumn, int identifier, Type entity) {
   }

   private void fixRemoveTextTwice(
      FileEntry file, int startLine, int startColumn, int endLine, int endColumn, int startLine2, int startColumn2, int endLine2, int endColumn2
   ) {
      this.model.myRefactoringCallback.analysisStarted();
      this.model.myRefactoringCallback.replaceText(file, startLine, startColumn, endLine, endColumn, "");
      this.model.myRefactoringCallback.replaceText(file, startLine2, startColumn2, endLine2, endColumn2, "");
      this.model.myRefactoringCallback.fixAnalysisFinished();
   }

   private void fixReplaceText(FileEntry file, int startLine, int startColumn, int endLine, int endColumn, String replacement) {
      this.model.myRefactoringCallback.analysisStarted();
      int linecount = this.getLineCount(replacement);
      if (linecount > 0) {
         this.model.myRefactoringCallback.replaceText(file, startLine, startColumn, endLine, endColumn, replacement);
         this.model.myRefactoringCallback.indentLines(file, startLine, startLine + linecount);
      } else {
         this.model.myRefactoringCallback.replaceText(file, startLine, startColumn, endLine, endColumn, replacement);
      }

      this.model.myRefactoringCallback.fixAnalysisFinished();
   }

   private int getLineCount(String doc) {
      int count = 0;

      for(int i = 0; i < doc.length(); ++i) {
         if (doc.charAt(i) == '\n') {
            ++count;
         }
      }

      return count;
   }

   private class Error {
      public final int kind;
      public final int todopattern;
      public final int startLine;
      public final int startColumn;
      public final int endLine;
      public final int endColumn;
      public final String msg;
      public Vector<Fix> fixes;

      public Error(int startLine, int startColumn, int endLine, int endColumn, String msg, int kind, int todopattern) {
         this.kind = kind;
         this.todopattern = todopattern;
         this.startLine = startLine;
         this.startColumn = startColumn;
         this.endLine = endLine;
         this.endColumn = endColumn;
         this.msg = msg;
      }

      public Error(StoreInputStream stream) throws IOException {
         this.kind = stream.readInt();
         this.todopattern = stream.readInt();
         this.startLine = stream.readInt();
         this.startColumn = stream.readInt();
         this.endLine = stream.readInt();
         this.endColumn = stream.readInt();
         this.msg = stream.readUTF();
         int count = stream.readInt();
         if (count > 0) {
            this.fixes = new Vector<>(count);

            for(int i = 0; i < count; ++i) {
               this.fixes.addElement(ErrorTable.this.new Fix(stream));
            }
         }
      }

      protected void store(StoreOutputStream stream) throws IOException {
         stream.writeInt(this.kind);
         stream.writeInt(this.todopattern);
         stream.writeInt(this.startLine);
         stream.writeInt(this.startColumn);
         stream.writeInt(this.endLine);
         stream.writeInt(this.endColumn);
         stream.writeUTF(this.msg);
         if (this.fixes == null) {
            stream.writeInt(0);
         } else {
            stream.writeInt(this.fixes.size());

            for(int i = 0; i < this.fixes.size(); ++i) {
               this.fixes.elementAt(i).store(stream);
            }
         }
      }
   }

   private class FileContent {
      public Vector<Error> inspections;
      public Vector<Error> parseerrors;
      public Vector<Error> analysiserrors;

      public FileContent() {
         this.inspections = new Vector<>();
         this.parseerrors = new Vector<>();
         this.analysiserrors = new Vector<>();
      }

      public FileContent(StoreInputStream stream) throws IOException {
         int count = stream.readInt();
         this.parseerrors = new Vector<>(count);

         for(int i = 0; i < count; ++i) {
            this.parseerrors.addElement(ErrorTable.this.new Error(stream));
         }

         count = stream.readInt();
         this.analysiserrors = new Vector<>(count);

         for(int i = 0; i < count; ++i) {
            this.analysiserrors.addElement(ErrorTable.this.new Error(stream));
         }

         count = stream.readInt();
         this.inspections = new Vector<>(count);

         for(int i = 0; i < count; ++i) {
            this.inspections.addElement(ErrorTable.this.new Error(stream));
         }
      }

      protected void store(StoreOutputStream stream) throws IOException {
         stream.writeInt(this.parseerrors.size());

         for(int i = 0; i < this.parseerrors.size(); ++i) {
            this.parseerrors.elementAt(i).store(stream);
         }

         stream.writeInt(this.analysiserrors.size());

         for(int i = 0; i < this.analysiserrors.size(); ++i) {
            this.analysiserrors.elementAt(i).store(stream);
         }

         stream.writeInt(this.inspections.size());

         for(int i = 0; i < this.inspections.size(); ++i) {
            this.inspections.elementAt(i).store(stream);
         }
      }
   }

   public class Fix {
      public static final int REPLACE = 0;
      public static final int IMPLEMENT = 1;
      public static final int IMPORT = 2;
      public static final int CREATEVARIABLE = 3;
      public static final int CREATEPARAMETER = 10;
      public static final int CREATEFIELD = 4;
      public static final int CREATEMETHOD = 5;
      public static final int SAFEDELETE = 6;
      public static final int REMOVETWICE = 7;
      public static final int SURROUND = 8;
      public static final int ADDTHROWS = 9;
      public int kind;
      public String msg;
      public Entity entity;
      public FileEntry file;
      public int identifier;
      public int modifiers;
      public int[] argmodifiers;
      public Type[] argtypes;
      public int[] argnames;
      public int startLine;
      public int startColumn;
      public int endLine;
      public int endColumn;
      public int startLine2;
      public int startColumn2;
      public int endLine2;
      public int endColumn2;
      public String replacement = "";

      public Fix(
         int kind,
         FileEntry file,
         int line,
         int column,
         int modifiers,
         int identifier,
         Type type,
         int[] argmodifiers,
         Type[] argtypes,
         int[] argnames,
         String msg
      ) {
         this.kind = kind;
         this.msg = msg;
         this.file = file;
         this.startLine = line;
         this.startColumn = column;
         this.entity = type;
         this.identifier = identifier;
         this.modifiers = modifiers;
         this.argtypes = argtypes;
         this.argnames = argnames;
         this.argmodifiers = argmodifiers;
      }

      public Fix(int kind, String msg) {
         this.kind = kind;
         this.msg = msg;
      }

      public Fix(int kind, Entity entity, String msg) {
         this.kind = kind;
         this.msg = msg;
         this.entity = entity;
      }

      public Fix(int kind, int line, int column, String msg) {
         this.kind = kind;
         this.msg = msg;
         this.startLine = line;
         this.startColumn = column;
      }

      public Fix(int kind, int line, int column, int identifier, Type type, String msg) {
         this.kind = kind;
         this.msg = msg;
         this.startLine = line;
         this.startColumn = column;
         this.entity = type;
         this.identifier = identifier;
      }

      public Fix(int kind, FileEntry file, int line, int column, int modifiers, int identifier, Type type, String msg) {
         this.kind = kind;
         this.msg = msg;
         this.file = file;
         this.startLine = line;
         this.startColumn = column;
         this.entity = type;
         this.identifier = identifier;
         this.modifiers = modifiers;
      }

      public Fix(int kind, int startLine, int startColumn, int endLine, int endColumn, String replacement, String msg) {
         this.kind = kind;
         this.msg = msg;
         this.startLine = startLine;
         this.startColumn = startColumn;
         this.endLine = endLine;
         this.endColumn = endColumn;
         this.replacement = replacement;
      }

      public Fix(
         int kind, int startLine1, int startColumn1, int endLine1, int endColumn1, int startLine2, int startColumn2, int endLine2, int endColumn2, String msg
      ) {
         this.kind = kind;
         this.msg = msg;
         this.startLine = startLine1;
         this.startColumn = startColumn1;
         this.endLine = endLine1;
         this.endColumn = endColumn1;
         this.startLine2 = startLine2;
         this.startColumn2 = startColumn2;
         this.endLine2 = endLine2;
         this.endColumn2 = endColumn2;
      }

      public Fix(StoreInputStream stream) throws IOException {
         this.kind = stream.readInt();
         this.msg = stream.readUTF();
         this.startLine = stream.readInt();
         this.startColumn = stream.readInt();
         this.endLine = stream.readInt();
         this.endColumn = stream.readInt();
         this.startLine2 = stream.readInt();
         this.startColumn2 = stream.readInt();
         this.endLine2 = stream.readInt();
         this.endColumn2 = stream.readInt();
         this.replacement = stream.readUTF();
         this.entity = ErrorTable.this.space.getEntity(stream.readInt());
         this.identifier = stream.readInt();
         this.file = ErrorTable.this.filespace.getFileEntry(stream.readInt());
         this.modifiers = stream.readInt();
         if (stream.readBoolean()) {
            int len = stream.readInt();
            this.argmodifiers = new int[len];
            this.argtypes = new Type[len];
            this.argnames = new int[len];

            for(int i = 0; i < len; ++i) {
               this.argmodifiers[i] = stream.readInt();
               this.argtypes[i] = (Type)ErrorTable.this.space.getEntity(stream.readInt());
               this.argnames[i] = stream.readInt();
            }
         }
      }

      protected void store(StoreOutputStream stream) throws IOException {
         stream.writeInt(this.kind);
         stream.writeUTF(this.msg);
         stream.writeInt(this.startLine);
         stream.writeInt(this.startColumn);
         stream.writeInt(this.endLine);
         stream.writeInt(this.endColumn);
         stream.writeInt(this.startLine2);
         stream.writeInt(this.startColumn2);
         stream.writeInt(this.endLine2);
         stream.writeInt(this.endColumn2);
         stream.writeUTF(this.replacement);
         stream.writeInt(ErrorTable.this.space.getID(this.entity));
         stream.writeInt(this.identifier);
         stream.writeInt(ErrorTable.this.filespace.getID(this.file));
         stream.writeInt(this.modifiers);
         stream.writeBoolean(this.argtypes != null);
         if (this.argtypes != null) {
            stream.writeInt(this.argtypes.length);

            for(int i = 0; i < this.argtypes.length; ++i) {
               stream.writeInt(this.argmodifiers[i]);
               stream.writeInt(ErrorTable.this.space.getID(this.argtypes[i]));
               stream.writeInt(this.argnames[i]);
            }
         }
      }
   }
}
