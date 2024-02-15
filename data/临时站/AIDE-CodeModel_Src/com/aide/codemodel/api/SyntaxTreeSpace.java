package com.aide.codemodel.api;

import com.aide.codemodel.abstraction.Language;
import com.aide.codemodel.api.collections.FunctionOfIntInt;
import com.aide.codemodel.api.collections.FunctionOfIntLong;
import com.aide.codemodel.api.collections.HashtableOfInt;
import com.aide.codemodel.api.collections.SetOfFileEntry;
import com.aide.codemodel.api.util.TimeUtils;

public class SyntaxTreeSpace {
   private static final long MAX_CACHE_SIZE = 10000000L;
   private static final long PREFERED_CACHE_SIZE = 5000000L;
   private final IdentifierSpace identifiers;
   private final FileSpace filespace;
   private final HashtableOfInt<SyntaxTree> asts;
   private HashtableOfInt<SyntaxTree> astfrees;
   private final SetOfFileEntry astfreefiles;
   private final FunctionOfIntInt astlocks;
   private final FunctionOfIntLong lastAcessTimes;
   private int[] fileIDs;
   private long[] fileTimes;

   public SyntaxTreeSpace(IdentifierSpace identifiers, FileSpace filespace) {
      this.filespace = filespace;
      this.identifiers = identifiers;
      this.asts = new HashtableOfInt<>();
      this.astfrees = new HashtableOfInt<>();
      this.astfreefiles = new SetOfFileEntry(filespace);
      this.astlocks = new FunctionOfIntInt();
      this.lastAcessTimes = new FunctionOfIntLong();
   }

   protected void update() {
      this.asts.DEFAULT_ITERATOR.init();

      while(this.asts.DEFAULT_ITERATOR.hasMoreElements()) {
         FileEntry file = this.filespace.getFileEntry(this.asts.DEFAULT_ITERATOR.nextKey());
         SyntaxTree ast = this.asts.DEFAULT_ITERATOR.nextValue();
         if (file.getSyntaxVersion() != ast.getVersion()) {
            ast.clear();
         } else {
            ast.clearAttributes();
         }
      }

      this.astfrees.DEFAULT_ITERATOR.init();

      while(this.astfrees.DEFAULT_ITERATOR.hasMoreElements()) {
         FileEntry file = this.filespace.getFileEntry(this.astfrees.DEFAULT_ITERATOR.nextKey());
         SyntaxTree ast = this.astfrees.DEFAULT_ITERATOR.nextValue();
         if (file.getSyntaxVersion() != ast.getVersion()) {
            ast.clear();
         } else {
            ast.clearAttributes();
         }
      }
   }

   public SyntaxTree getEvalExpressionCompletionSyntaxTree(FileEntry file, Language language, int line, int column, String expressionStr, int exprColumn) {
      SyntaxTree ast = this.getSyntaxTree(file,language);
      synchronized(SyntaxTreePool.LOCK_ENGINE_COMPLETION) {
         SyntaxTree sHARED_ENGINE_COMPLETION = SyntaxTreePool.SHARED_ENGINE_COMPLETION;
         file.createSyntaxTree(language,sHARED_ENGINE_COMPLETION, false, true, true, ";" + expressionStr.substring(0, exprColumn) + "i;", line, column);
         if (ast.getDeclarationDigest() == SyntaxTreePool.SHARED_ENGINE_COMPLETION.getDeclarationDigest()) {
            if (SyntaxTreePool.SHARED_ENGINE_COMPLETION == SyntaxTreePool.SHARED_ENGINE) {
               SyntaxTreePool.SHARED_ENGINE_COMPLETION.copyInto(ast);
               ast.declareContainsCode(false);
               return ast;
            } else {
               return SyntaxTreePool.SHARED_ENGINE_COMPLETION;
            }
         } else {
            return ast;
         }
      }
   }

   public SyntaxTree getEvalExpressionSyntaxTree(FileEntry file,Language language, int line, int column, String expressionStr) {
      SyntaxTree ast = this.getSyntaxTree(file,language);
      synchronized(SyntaxTreePool.LOCK_ENGINE_COMPLETION) {
         file.createSyntaxTree(language,SyntaxTreePool.SHARED_ENGINE_COMPLETION, false, true, true, ";" + expressionStr + ";", line, column);
         if (ast.getDeclarationDigest() == SyntaxTreePool.SHARED_ENGINE_COMPLETION.getDeclarationDigest()) {
            if (SyntaxTreePool.SHARED_ENGINE_COMPLETION == SyntaxTreePool.SHARED_ENGINE) {
               SyntaxTreePool.SHARED_ENGINE_COMPLETION.copyInto(ast);
               ast.declareContainsCode(false);
               return ast;
            } else {
               return SyntaxTreePool.SHARED_ENGINE_COMPLETION;
            }
         } else {
            return ast;
         }
      }
   }

   public SyntaxTree getCompletionSyntaxTree(FileEntry file,Language language, int line, int column, String delimeneter) {
      SyntaxTree ast = this.getSyntaxTree(file,language);
      synchronized(SyntaxTreePool.LOCK_ENGINE_COMPLETION) {
         file.createSyntaxTree(language,SyntaxTreePool.SHARED_ENGINE_COMPLETION, false, true, true, delimeneter, line, column);
         if (ast.getDeclarationDigest() == SyntaxTreePool.SHARED_ENGINE_COMPLETION.getDeclarationDigest()) {
            if (SyntaxTreePool.SHARED_ENGINE_COMPLETION == SyntaxTreePool.SHARED_ENGINE) {
               SyntaxTreePool.SHARED_ENGINE_COMPLETION.copyInto(ast);
               ast.declareContainsCode(false);
               return ast;
            } else {
               return SyntaxTreePool.SHARED_ENGINE_COMPLETION;
            }
         } else {
            return ast;
         }
      }
   }


   public SyntaxTree getSyntaxTree(FileEntry file,Language language) {
      return this.getSyntaxTree(file,language, true, true);
   }

   private SyntaxTree getSyntaxTree(FileEntry file,Language language, boolean parseCode, boolean parseComments) {
      this.lastAcessTimes.put(file.getID(), TimeUtils.currentTimeMillis());
      if (this.asts.contains(file.getID())) {
         this.astlocks.put(file.getID(), this.astlocks.get(file.getID()) + 1);
         SyntaxTree ast = this.asts.get(file.getID());
         if (parseComments && !ast.containsComments()) {
            ast.clear();
         }

         if (parseCode && !ast.containsCode()) {
            ast.clear();
         }

         if (ast.isEmpty()) {
            synchronized(SyntaxTreePool.LOCK_ENGINE) {
               file.createSyntaxTree(language,SyntaxTreePool.SHARED_ENGINE, true, parseCode, parseComments, null, 0, 0);
               SyntaxTreePool.SHARED_ENGINE.copyInto(ast);
            }
         }

         return ast;
      } else if (this.astfrees.contains(file.getID())) {
         SyntaxTree ast = this.astfrees.get(file.getID());
         this.asts.put(file.getID(), ast);
         this.astlocks.put(file.getID(), 1);
         this.astfrees.remove(file.getID());
         this.astfreefiles.remove(file);
         if (parseComments && !ast.containsComments()) {
            ast.clear();
         }

         if (parseCode && !ast.containsCode()) {
            ast.clear();
         }

         if (ast.isEmpty()) {
            synchronized(SyntaxTreePool.LOCK_ENGINE) {
               file.createSyntaxTree(language,SyntaxTreePool.SHARED_ENGINE, true, parseCode, parseComments, null, 0, 0);
               SyntaxTreePool.SHARED_ENGINE.copyInto(ast);
            }
         }

         return ast;
      } else {
         if (this.memSize() >= PREFERED_CACHE_SIZE) {
            synchronized(SyntaxTreePool.LOCK_ENGINE) {
               file.createSyntaxTree(language,SyntaxTreePool.SHARED_ENGINE, true, parseCode, parseComments, null, 0, 0);
               SyntaxTree ast = null;
               FileEntry f = null;
               this.astfrees.DEFAULT_ITERATOR.init();

               while(this.astfrees.DEFAULT_ITERATOR.hasMoreElements()) {
                  SyntaxTree cacheast = this.astfrees.DEFAULT_ITERATOR.nextValue();
                  FileEntry cachef = this.filespace.getFileEntry(this.astfrees.DEFAULT_ITERATOR.nextKey());
                  if (SyntaxTreePool.SHARED_ENGINE.memSize() < cacheast.totalSize() && (ast == null || ast.totalSize() > cacheast.totalSize())) {
                     f = cachef;
                     ast = cacheast;
                  }
               }

               if (ast == null) {
                  this.astfrees.DEFAULT_ITERATOR.init();

                  while(this.astfrees.DEFAULT_ITERATOR.hasMoreElements()) {
                     SyntaxTree cacheast = this.astfrees.DEFAULT_ITERATOR.nextValue();
                     FileEntry cachefile = this.filespace.getFileEntry(this.astfrees.DEFAULT_ITERATOR.nextKey());
                     if (SyntaxTreePool.SHARED_ENGINE.memSize() < cacheast.totalSize() && (ast == null || ast.totalSize() > cacheast.totalSize())) {
                        f = cachefile;
                        ast = cacheast;
                     }
                  }
               }

               if (ast == null) {
                  FileEntry largestfile = null;
                  long largestsize = 0L;
                  SyntaxTree largestast = null;
                  this.astfrees.DEFAULT_ITERATOR.init();

                  while(this.astfrees.DEFAULT_ITERATOR.hasMoreElements()) {
                     SyntaxTree cacheast = this.astfrees.DEFAULT_ITERATOR.nextValue();
                     FileEntry cachefile = this.filespace.getFileEntry(this.astfrees.DEFAULT_ITERATOR.nextKey());
                     if (largestsize < cacheast.totalSize()) {
                        largestfile = cachefile;
                        largestsize = cacheast.totalSize();
                        largestast = cacheast;
                     }
                  }

                  ast = largestast;
                  f = largestfile;
               }

               if (ast != null) {
                  SyntaxTreePool.SHARED_ENGINE.copyInto(ast);
                  this.astfrees.remove(f.getID());
                  this.astfreefiles.remove(f);
                  this.astlocks.put(file.getID(), 1);
                  this.asts.put(file.getID(), ast);
                  return ast;
               }
            }
         }

         SyntaxTree ast = this.createSyntaxTree();
         this.asts.put(file.getID(), ast);
         this.astlocks.put(file.getID(), 1);
         synchronized(SyntaxTreePool.LOCK_ENGINE) {
            file.createSyntaxTree(language,SyntaxTreePool.SHARED_ENGINE, true, parseCode, parseComments, null, 0, 0);
            SyntaxTreePool.SHARED_ENGINE.copyInto(ast);
            return ast;
         }
      }
   }

   private SyntaxTree createSyntaxTree() {
      return new SyntaxTree();
   }

   protected void releaseSyntaxTrees() {
      this.asts.DEFAULT_ITERATOR.init();

      while(this.asts.DEFAULT_ITERATOR.hasMoreElements()) {
         FileEntry file = this.filespace.getFileEntry(this.asts.DEFAULT_ITERATOR.nextKey());
         SyntaxTree ast = this.asts.DEFAULT_ITERATOR.nextValue();
         this.astfrees.put(file.getID(), ast);
         this.astfreefiles.put(file);
      }

      this.astlocks.clear();
      this.asts.clear();
   }

   public void releaseSyntaxTree(SyntaxTree syntaxTree){
      releaseSyntaxTree(syntaxTree.getFile());
   }

   public void releaseSyntaxTree(FileEntry file) {
      int locks = this.astlocks.get(file.getID()) - 1;
      if (locks == 0) {
         SyntaxTree ast = this.asts.get(file.getID());
         this.astlocks.remove(file.getID());
         this.asts.remove(file.getID());
         if (ast.memSize() < MAX_CACHE_SIZE) {
            this.astfrees.put(file.getID(), ast);
            this.astfreefiles.put(file);
         }

         this.compact();
      } else {
         this.astlocks.put(file.getID(), locks);
      }
   }

   public SetOfFileEntry getChachedFiles() {
      return this.astfreefiles;
   }

   private void compact() {
      if (this.memSize() > MAX_CACHE_SIZE) {
         this.compact(PREFERED_CACHE_SIZE);
      }
   }

   protected void shrink(boolean full) {
      if (full) {
         this.compact(0L);
      }
   }

   private void compact(long allowedMemSize) {
      long memSize = this.memSize();
      long oldMemSize = memSize;
      if (allowedMemSize == 0L) {
         this.astfrees = new HashtableOfInt<>();
         this.astfreefiles.clear();
         memSize = 0L;
      } else {
         if (this.fileIDs == null || this.fileIDs.length < this.astfrees.size()) {
            this.fileIDs = new int[this.astfrees.size()];
            this.fileTimes = new long[this.astfrees.size()];
         }

         int f = 0;
         this.astfrees.DEFAULT_ITERATOR.init();

         while(this.astfrees.DEFAULT_ITERATOR.hasMoreElements()) {
            int fileid = this.astfrees.DEFAULT_ITERATOR.nextKey();
            long size = this.astfrees.DEFAULT_ITERATOR.nextValue().memSize();
            long time = this.lastAcessTimes.get(fileid);
            if (size > 0L && time > 0L) {
               this.fileIDs[f] = fileid;
               this.fileTimes[f] = time;
               ++f;
            }
         }

         this.sortFiles(0, f - 1);

         for(int i = 0; i < f && memSize > allowedMemSize; ++i) {
            SyntaxTree ast = this.astfrees.get(this.fileIDs[i]);
            this.astfrees.remove(this.fileIDs[i]);
            FileEntry fileEntry = this.filespace.getFileEntry(this.fileIDs[i]);
            this.astfreefiles.remove(fileEntry);
            memSize -= ast.memSize();
         }
      }

   }

   private void sortFiles(int i, int j) {
      if (i < j) {
         int oldi = i;
         int oldj = j;
         int z = i + (j - i) / 2;
         long pivotTime = this.fileTimes[z];

         while(i <= j) {
            while(this.fileTimes[i] < pivotTime) {
               ++i;
            }

            while(pivotTime < this.fileTimes[j]) {
               --j;
            }

            if (i <= j) {
               int tempFile = this.fileIDs[j];
               this.fileIDs[j] = this.fileIDs[i];
               this.fileIDs[i] = tempFile;
               long tempTime = this.fileTimes[j];
               this.fileTimes[j] = this.fileTimes[i];
               this.fileTimes[i] = tempTime;
               ++i;
               --j;
            }
         }

         this.sortFiles(oldi, j);
         this.sortFiles(i, oldj);
      }
   }

   public long memSize() {
      long memSize = 0L;
      this.asts.DEFAULT_ITERATOR.init();

      while(this.asts.DEFAULT_ITERATOR.hasMoreElements()) {
         memSize += this.asts.DEFAULT_ITERATOR.nextValue().memSize();
      }

      this.astfrees.DEFAULT_ITERATOR.init();

      while(this.astfrees.DEFAULT_ITERATOR.hasMoreElements()) {
         memSize += this.astfrees.DEFAULT_ITERATOR.nextValue().memSize();
      }

      return memSize;
   }
}
