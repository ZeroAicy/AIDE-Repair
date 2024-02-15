package com.aide.codemodel.api;

import com.aide.codemodel.abstraction.Language;
import com.aide.codemodel.abstraction.SignatureAnalyzer;
import com.aide.codemodel.abstraction.Syntax;

import com.aide.codemodel.api.collections.ListOfInt;
import com.aide.codemodel.api.collections.SetOfInt;

public class SyntaxTree {
   private static final int MINCOMMENTS = 100;
   private static final int MINCOMMENTCHARS = 1000;
   private static final int MINLITERALCHARS = 1000;
   private static final int MINSIZE = 10000;
   private static final int MINATTRSIZE = 10000;
   private final long NON_VALUE0 = 1L;
   private final long NON_VALUE = 1234567891234567891L - this.NON_VALUE0;
   private IdentifierSpace identifiers;
   private EntitySpace space;
   private char[] literals;
   private int literalpos;
   private int[] comments = new int[600];
   private char[] commentchars = new char[1000];
   private int commentpos;
   private int commentcount = 0;
   private int[] content;
   private int contentpos;
   private int[] attributes;
   private int attributepos;
   private int rootnode;
   private Syntax syntax;
   private FileEntry file;
   private Language myLanguage;
   private long version;
   private boolean containsComments;
   private boolean containsCode;
   private final SetOfInt unIfedLines;
   private int indexcount;
   private long decldigest;
   private long classdecldigest;
   private long publicDecldigest;
   private boolean clearedAttributes;

   public SyntaxTree() {
      this.commentpos = 0;
      this.literals = new char[1000];
      this.literalpos = 1;
      this.content = new int[10000];
      this.contentpos = 0;
      this.rootnode = -1;
      this.attributes = new int[10000];
      this.attributepos = 0;
      this.decldigest = -1L;
      this.classdecldigest = -1L;
      this.publicDecldigest = -1L;
      this.unIfedLines = new SetOfInt();
   }

   public void copyInto(SyntaxTree ast) {
      ast.identifiers = this.identifiers;
      ast.space = this.space;
      if (ast.content.length < this.contentpos) {
         ast.content = new int[this.contentpos * 5 / 4];
      }

      System.arraycopy(this.content, 0, ast.content, 0, this.contentpos);
      if (ast.comments.length <= this.commentcount * 6) {
         ast.comments = new int[this.commentcount * 6 * 5 / 4];
      }

      System.arraycopy(this.comments, 0, ast.comments, 0, this.commentcount * 6);
      if (ast.commentchars.length <= this.commentpos) {
         ast.commentchars = new char[this.commentpos * 5 / 4];
      }

      System.arraycopy(this.commentchars, 0, ast.commentchars, 0, this.commentpos);
      if (ast.literals.length <= this.literalpos) {
         ast.literals = new char[this.literalpos * 5 / 4];
      }

      System.arraycopy(this.literals, 0, ast.literals, 0, this.literalpos);
      ast.commentcount = this.commentcount;
      ast.commentpos = this.commentpos;
      ast.literalpos = this.literalpos;
      ast.contentpos = this.contentpos;
      ast.rootnode = this.rootnode;
      ast.decldigest = this.decldigest;
      ast.classdecldigest = this.classdecldigest;
      ast.publicDecldigest = this.publicDecldigest;
      ast.file = this.file;
      ast.syntax = this.syntax;
      ast.version = this.version;
      ast.containsComments = this.containsComments;
      ast.containsCode = this.containsCode;
      ast.unIfedLines.clear();
      ast.unIfedLines.put(this.unIfedLines);
      ast.attributepos = 0;
      ast.clearedAttributes = this.clearedAttributes;
      ast.attributepos = this.attributepos;
      if (ast.attributes.length <= this.attributepos) {
         ast.attributes = new int[this.attributepos * 5 / 4];
      }

      System.arraycopy(this.attributes, 0, ast.attributes, 0, this.attributepos);
   }

   public void declareContent(IdentifierSpace identifiers, EntitySpace space, int rootnode) {
      this.identifiers = identifiers;
      this.space = space;
      this.rootnode = rootnode;
      this.clearedAttributes = true;
   }

   public void declareFile(FileEntry file, Language language) {
      this.file = file;
      myLanguage=language;
   }

   public void declareVersion(long version) {
      this.version = version;
   }

   public void declareSyntax(Syntax syntax) {
      this.syntax = syntax;
   }

   public void declareUnifedLine(int line) {
      this.unIfedLines.put(line);
   }

   public void declareContainsComments(boolean containsComments) {
      this.containsComments = containsComments;
   }

   public void declareContainsCode(boolean containsCode) {
      this.containsCode = containsCode;
   }

   public void declareAttrDAIndexCount(int indexcount) {
      this.indexcount = indexcount;
   }

   public void declareAttrDAIndex(int node, int index) {
      this.setAttribute(node, 8, index);
   }

   public void declareAttrVariableSlot(int node, int slot) {
      this.setAttribute(node, 7, slot);
   }

   public void declareAttrValue(int node, long value) {
      this.setAttribute(node, 3, (int)value);
      this.setAttribute(node, 2, (int)(value >> 32));
   }

   public void declareAttrTarget(int node, int targetnode) {
      this.setAttribute(node, 9, targetnode);
   }

   public void declareAttrType(int node, Type type) {
      if (this.space != null) {
         if (type == null) {
            this.setAttribute(node, 1, -1);
         }

         this.setAttribute(node, 1, this.space.getID(type));
      }
   }

   public void declareAttrReferenceKind(int node, int kind, int declarationNode) {
      this.setAttribute(node, 4, kind);
      this.setAttribute(node, 5, declarationNode);
   }

   public void declareAttrInvocationType(int node, Type type) {
      this.setAttribute(node, 6, this.space.getID(type));
   }

   public void declareAttrReferenceKind(int node, int kind, Entity entity) {
      this.setAttribute(node, 4, kind);
      this.setAttribute(node, 5, this.space.getID(entity));
   }

   public void declareComment(int startline, int startcolumn, int endline, int endcolumn, char[] chars, int off, int len) {
      int i = this.commentcount * 6;
      if (i + 6 >= this.comments.length) {
         int[] comments = new int[this.comments.length * 2 + 1];
         System.arraycopy(this.comments, 0, comments, 0, this.comments.length);
         this.comments = comments;
      }

      this.comments[i++] = this.commentpos;
      this.comments[i++] = len;
      this.comments[i++] = startline;
      this.comments[i++] = startcolumn;
      this.comments[i++] = endline;
      this.comments[i++] = endcolumn;
      ++this.commentcount;
      if (this.commentpos + len >= this.commentchars.length) {
         char[] commentchars = new char[Math.max(this.commentchars.length * 2 + 1, this.commentpos + len)];
         System.arraycopy(this.commentchars, 0, commentchars, 0, this.commentchars.length);
         this.commentchars = commentchars;
      }

      System.arraycopy(chars, off, this.commentchars, this.commentpos, len);
      this.commentpos += len;
   }

   public int declareStringLiteral(char[] literalChars, int off, int length) {
      if (this.literalpos + length + 1 >= this.literals.length) {
         char[] literals = new char[Math.max(this.literals.length * 2 + 1, this.literalpos + length + 1)];
         System.arraycopy(this.literals, 0, literals, 0, this.literals.length);
         this.literals = literals;
      }

      int literal = this.literalpos;
      this.literals[this.literalpos++] = (char)length;
      System.arraycopy(literalChars, off, this.literals, this.literalpos, length);
      this.literalpos += length;
      return literal;
   }

   public int declareCharLiteral(char[] literalChars, int off, int length) {
      if (this.literalpos + length >= this.literals.length) {
         char[] literals = new char[Math.max(this.literals.length * 2 + 1, this.literalpos + length)];
         System.arraycopy(this.literals, 0, literals, 0, this.literals.length);
         this.literals = literals;
      }

      int literal = this.literalpos;
      this.literals[this.literalpos++] = (char)length;
      System.arraycopy(literalChars, off, this.literals, this.literalpos, length);
      this.literalpos += length;
      return literal;
   }

   public int declareLiteral(char[] literalChars, int off, int length) {
      if (this.literalpos + length >= this.literals.length) {
         char[] literals = new char[Math.max(this.literals.length * 2 + 1, this.literalpos + length)];
         System.arraycopy(this.literals, 0, literals, 0, this.literals.length);
         this.literals = literals;
      }

      int literal = this.literalpos;
      this.literals[this.literalpos++] = (char)length;
      System.arraycopy(literalChars, off, this.literals, this.literalpos, length);
      this.literalpos += length;
      return literal;
   }

   public int declareNode(int syntaxTag, boolean synthetic, int line, int startcolumn, int endcolumn) {
      int p = this.contentpos;
      int node = p;

      int[] content;
      for(this.contentpos += 5; this.contentpos >= this.content.length; this.content = content) {
         content = new int[this.content.length * 2 + 1];
         System.arraycopy(this.content, 0, content, 0, this.content.length);
      }

      content = this.content;
      content[p++] = syntaxTag | (synthetic ? 1048576 : 0) | 268435456;
      content[p++] = -1;
      content[p++] = -1;
      content[p++] = line;
      content[p] = startcolumn;
      return node;
   }

   public int declareNode(int syntaxTag, boolean synthetic, int image, int line, int startcolumn, int endcolumn) {
      int p = this.contentpos;
      int node = p;

      int[] content;
      for(this.contentpos += 7; this.contentpos >= this.content.length; this.content = content) {
         content = new int[this.content.length * 2 + 1];
         System.arraycopy(this.content, 0, content, 0, this.content.length);
      }

      content = this.content;
      content[p++] = syntaxTag | (synthetic ? 1048576 : 0) | 268435456;
      content[p++] = -1;
      content[p++] = -1;
      content[p++] = image;
      content[p++] = line;
      content[p++] = startcolumn;
      content[p] = endcolumn;
      return node;
   }

   public int declareNode(int syntaxTag, boolean synthetic, int[] childItems, int off, int len, int line, int column) {
      int p = this.contentpos;
      int node = p;
      if (len > 0) {
         this.contentpos += 4 + len;
      } else {
         this.contentpos += 6 + len;
      }

      while(this.contentpos >= this.content.length) {
         int[] content = new int[this.content.length * 2 + 1];
         System.arraycopy(this.content, 0, content, 0, this.content.length);
         this.content = content;
      }

      int[] content = this.content;
      content[p++] = syntaxTag | (synthetic ? 1048576 : 0);
      content[p++] = -1;
      content[p++] = -1;
      content[p++] = len;
      if (len > 0) {
         System.arraycopy(childItems, off, content, p, len);

         for(int i = 0; i < len; ++i) {
            content[childItems[off + i] + 1] = node;
         }
      } else {
         content[p++] = line;
         content[p++] = column;
      }

      return node;
   }

   public int declareNode(int syntaxTag, boolean synthetic, int[] childItems, int off, int len, int line, int column, int declarationNumber) {
      int p = this.contentpos;
      int node = p;
      if (len > 0) {
         this.contentpos += 5 + len;
      } else {
         this.contentpos += 7 + len;
      }

      while(this.contentpos >= this.content.length) {
         int[] content = new int[this.content.length * 2 + 1];
         System.arraycopy(this.content, 0, content, 0, this.content.length);
         this.content = content;
      }

      int[] content = this.content;
      content[p++] = syntaxTag | (synthetic ? 1048576 : 0);
      content[p++] = -1;
      content[p++] = -1;
      content[p++] = len;
      if (len > 0) {
         System.arraycopy(childItems, off, content, p, len);

         for(int i = 0; i < len; ++i) {
            content[childItems[off + i] + 1] = node;
         }

         p += len;
      } else {
         content[p++] = line;
         content[p++] = column;
      }

      content[p] = declarationNumber;
      return node;
   }

   public long memSize() {
      return this.contentpos * 4L + this.attributepos * 4L;
   }

   public long totalSize() {
      return this.content.length * 4L + this.attributes.length * 4L;
   }

   public void clear() {
      this.unIfedLines.clear();
      this.literalpos = 1;
      this.contentpos = 0;
      this.rootnode = -1;
      this.commentcount = 0;
      this.commentpos = 0;
      this.decldigest = -1L;
      this.attributepos = 0;
      this.classdecldigest = -1L;
      this.publicDecldigest = -1L;
   }

   public void clearAttributes() {
      if (!this.clearedAttributes) {
         this.clearAttributes(this.getRootNode());
         this.clearedAttributes = true;
         this.attributepos = 0;
      }
   }

   public long getDeclarationDigest() {
      if (this.decldigest != -1L) {
         return this.decldigest;
      } else {
         SignatureAnalyzer signatureAnalyzer = getLanguage().getSignatureAnalyzer();
         if (signatureAnalyzer == null) {
            return 0L;
         } else {
            this.decldigest = signatureAnalyzer.getDeclarationDigest(this);
            return this.decldigest;
         }
      }
   }

   public long getPublicDeclarationDigest() {
      if (this.publicDecldigest != -1L) {
         return this.publicDecldigest;
      } else {
         SignatureAnalyzer signatureAnalyzer = getLanguage().getSignatureAnalyzer();
         if (signatureAnalyzer == null) {
            return 0L;
         } else {
            this.publicDecldigest = signatureAnalyzer.getPublicDeclarationDigest(this);
            return this.publicDecldigest;
         }
      }
   }

   public long getClassDeclarationDigest() {
      if (this.classdecldigest != -1L) {
         return this.classdecldigest;
      } else {
         SignatureAnalyzer signatureAnalyzer = getLanguage().getSignatureAnalyzer();
         if (signatureAnalyzer == null) {
            return 0L;
         } else {
            this.classdecldigest = signatureAnalyzer.getClassDeclarationDigest(this);
            return this.classdecldigest;
         }
      }
   }

   public boolean isEmpty() {
      return this.rootnode == -1;
   }

   public FileEntry getFile() {
      return this.file;
   }

   public Language getLanguage() {
      return myLanguage;
   }

   public boolean containsComments() {
      return this.containsComments;
   }

   public boolean containsCode() {
      return this.containsCode;
   }

   public long getVersion() {
      return this.version;
   }

   public int getAttrDAIndexCount() {
      return this.indexcount;
   }

   public int getAttrDAIndex(int node) {
      return this.getAttribute(node, 8);
   }

   public boolean hasAttrDAIndex(int node) {
      return this.getAttribute(node, 8) != -1;
   }

   public int getAttrVariableSlot(int node) {
      return this.getAttribute(node, 7);
   }

   public int getAttrTarget(int node) {
      return this.getAttribute(node, 9);
   }

   public boolean hasAttrTarget(int node) {
      return this.getAttribute(node, 9) != -1;
   }

   public long getAttrValue(int node) {
      return ((long)this.getAttribute(node, 2) << 32) + ((long)this.getAttribute(node, 3) & 4294967295L);
   }

   public boolean hasAttrValue(int node) {
      if (!this.syntax.hasAttrValue(this.getSyntaxTag(node))) {
         return false;
      } else {
         return this.getAttrValue(node) != this.NON_VALUE;
      }
   }

   public boolean hasAttrInvocationType(int node) {
      return this.getAttribute(node, 6) != -1;
   }

   public Type getAttrInvocationType(int node) {
      return (Type)this.space.getEntity(this.getAttribute(node, 6));
   }

   public Type getAttrType(int node) {
      return (Type)this.space.getEntity(this.getAttribute(node, 1));
   }

   public boolean hasAttrType(int node) {
      if (!this.syntax.hasAttrType(this.getSyntaxTag(node))) {
         return false;
      } else {
         return this.getAttribute(node, 1) != -1;
      }
   }

   public int getAttrReferenceKind(int node) {
      return this.getAttribute(node, 4);
   }

   public int getAttrReferenceNode(int node) {
      return this.getAttribute(node, 5);
   }

   public Entity getAttrReferenceEntity(int node) {
      return this.space.getEntity(this.getAttribute(node, 5));
   }

   public int getDeclarationNumber(int node) {
      return this.content[node + 3] == 0 ? this.content[node + 6] : this.content[node + 4 + this.content[node + 3]];
   }

   public int getCommentCount() {
      return this.commentcount;
   }

   public String getCommentString(int comment) {
      return new String(this.commentchars, this.comments[comment * 6], this.comments[comment * 6 + 1]);
   }

   public char[] getCommentChars(int comment) {
      return this.commentchars;
   }

   public int getCommentCharsOff(int comment) {
      return this.comments[comment * 6];
   }

   public int getCommentCharsLen(int comment) {
      return this.comments[comment * 6 + 1];
   }

   public int getCommentStartLine(int comment) {
      return this.comments[comment * 6 + 2];
   }

   public int getCommentStartColumn(int comment) {
      return this.comments[comment * 6 + 3];
   }

   public int getCommentEndLine(int comment) {
      return this.comments[comment * 6 + 4];
   }

   public int getCommentEndColumn(int comment) {
      return this.comments[comment * 6 + 5];
   }

   public int getParentNode(int node) {
      return this.content[node + 1];
   }

   public int getRootNode() {
      return this.rootnode;
   }

   public char[] getLiteralChars(int node) {
      return this.literals;
   }

   public int getLiteralOff(int node) {
      int literal = this.content[node + 3];
      return literal + 1;
   }

   public int getLiteralLen(int node) {
      int literal = this.content[node + 3];
      return this.literals[literal];
   }

   public String getLiteralString(int node) {
      int literal = this.content[node + 3];
      return new String(this.literals, literal + 1, this.literals[literal]);
   }

   public int getChildCount(int node) {
      return (this.content[node] & 268435456) != 0 ? 0 : this.content[node + 3];
   }

   public int getChildNode(int node, int i) {
      return this.content[node + 4 + i];
   }

   public int getSyntaxTag(int node) {
      return this.content[node] & 65535;
   }

   public boolean isSyntheticNode(int node) {
      return (this.content[node] & 1048576) != 0;
   }

   public boolean isTokenNode(int node) {
      return (this.content[node] & 268435456) != 0;
   }

   public int getIdentifier(int node) {
      return this.content[node + 3];
   }

   public String getIdentifierString(int node) {
      return this.identifiers.getString(this.content[node + 3]);
   }

   public boolean isLiteralNode(int node) {
      return this.syntax.isLiteral(this.getSyntaxTag(node));
   }

   public int getStartLine(int node) {
      if (!this.isTokenNode(node)) {
         return this.getChildCount(node) == 0 ? this.content[node + 4] : this.getStartLine(this.getChildNode(node, 0));
      } else if (this.isLiteralNode(node)) {
         return this.content[node + 4];
      } else {
         return this.isIdentifierNode(node) ? this.content[node + 4] : this.content[node + 3];
      }
   }

   public int getEndLine(int node) {
      if (!this.isTokenNode(node)) {
         return this.getChildCount(node) == 0 ? this.content[node + 4] : this.getEndLine(this.getChildNode(node, this.getChildCount(node) - 1));
      } else if (this.isLiteralNode(node)) {
         return this.content[node + 4];
      } else {
         return this.isIdentifierNode(node) ? this.content[node + 4] : this.content[node + 3];
      }
   }

   public int getStartColumn(int node) {
      if (!this.isTokenNode(node)) {
         return this.getChildCount(node) == 0 ? this.content[node + 5] : this.getStartColumn(this.getChildNode(node, 0));
      } else if (this.isLiteralNode(node)) {
         return this.content[node + 5];
      } else {
         return this.isIdentifierNode(node) ? this.content[node + 5] : this.content[node + 4];
      }
   }

   public int getEndColumn(int node) {
      if (!this.isTokenNode(node)) {
         return this.getChildCount(node) == 0 ? this.content[node + 5] : this.getEndColumn(this.getChildNode(node, this.getChildCount(node) - 1));
      } else if (this.isLiteralNode(node)) {
         return this.content[node + 6];
      } else {
         return this.isIdentifierNode(node) ? this.content[node + 6] : this.content[node + 4] + this.syntax.getTokenLength(this.getSyntaxTag(node));
      }
   }

   @Override
   public String toString() {
      if (this.isEmpty()) {
         return "\n";
      } else {
         StringBuffer buffer = new StringBuffer();
         this.createString(buffer, "", this.getRootNode());
         return buffer.toString();
      }
   }

   public int getNodeAt(int startLine, int startColumn, int endLine, int endColumn) {
      return this.getNodeAt(this.getRootNode(), startLine, startColumn, endLine, endColumn);
   }

   public int getFirstTokenInLine(int line) {
      return this.getFirstTokenInLine(this.getRootNode(), line);
   }

   public boolean isEnclosingNode(int enclosingNode, int node) {
      if (node == enclosingNode) {
         return true;
      } else {
         while(node != this.getRootNode()) {
            node = this.getParentNode(node);
            if (node == enclosingNode) {
               return true;
            }
         }

         return false;
      }
   }

   public boolean hasLeftSisterNode(int node) {
      return this.getChildNode(this.getParentNode(node), 0) != node;
   }

   public int getLeftSisterNode(int node) {
      int parentNode = this.getParentNode(node);

      for(int j = 1; j < this.getChildCount(parentNode); ++j) {
         if (this.getChildNode(parentNode, j) == node) {
            return this.getChildNode(parentNode, j - 1);
         }
      }

      return -1;
   }

   public boolean hasRightSisterNode(int node) {
      return this.getChildNode(this.getParentNode(node), this.getChildCount(this.getParentNode(node)) - 1) != node;
   }

   public int getRightSisterNode(int node) {
      int parentNode = this.getParentNode(node);

      for(int j = 0; j < this.getChildCount(parentNode) - 1; ++j) {
         if (this.getChildNode(parentNode, j) == node) {
            return this.getChildNode(parentNode, j + 1);
         }
      }

      return -1;
   }

   public boolean commentContainsPosition(int comment, int line, int column) {
      if (this.getCommentStartLine(comment) == 0) {
         return false;
      } else if (line < this.getCommentStartLine(comment)) {
         return false;
      } else if (line > this.getCommentEndLine(comment)) {
         return false;
      } else {
         if (this.getCommentStartLine(comment) == this.getCommentEndLine(comment)) {
            if (column < this.getCommentStartColumn(comment)) {
               return false;
            }

            return column < this.getCommentEndColumn(comment);
         } else {
            if (line == this.getCommentStartLine(comment) && column < this.getCommentStartColumn(comment)) {
               return false;
            }

            return line != this.getCommentEndLine(comment) || column < this.getCommentEndColumn(comment);
         }
      }
   }

   public boolean containsPosition(int node, int line, int column) {
      if (this.getStartLine(node) == 0) {
         return false;
      } else if (line < this.getStartLine(node)) {
         return false;
      } else if (line > this.getEndLine(node)) {
         return false;
      } else {
         if (this.getStartLine(node) == this.getEndLine(node)) {
            if (column < this.getStartColumn(node)) {
               return false;
            }

            return column < this.getEndColumn(node);
         } else {
            if (line == this.getStartLine(node) && column < this.getStartColumn(node)) {
               return false;
            }

            return line != this.getEndLine(node) || column < this.getEndColumn(node);
         }
      }
   }

   public boolean containsPositionIn(int node, int line, int column) {
      if (this.getStartLine(node) == 0) {
         return false;
      } else if (line < this.getStartLine(node)) {
         return false;
      } else if (line > this.getEndLine(node)) {
         return false;
      } else {
         if (this.getStartLine(node) == this.getEndLine(node)) {
            if (column <= this.getStartColumn(node)) {
               return false;
            }

            return column < this.getEndColumn(node);
         } else {
            if (line == this.getStartLine(node) && column <= this.getStartColumn(node)) {
               return false;
            }

            return line != this.getEndLine(node) || column < this.getEndColumn(node);
         }
      }
   }

   public boolean containsPositionExt(int node, int line, int column) {
      if (line < this.getStartLine(node)) {
         return false;
      } else if (line > this.getEndLine(node)) {
         return false;
      } else {
         if (this.getStartLine(node) == this.getEndLine(node)) {
            if (column < this.getStartColumn(node)) {
               return false;
            }

            return column <= this.getEndColumn(node);
         } else {
            if (line == this.getStartLine(node) && column < this.getStartColumn(node)) {
               return false;
            }

            return line != this.getEndLine(node) || column <= this.getEndColumn(node);
         }
      }
   }

   public boolean beforePosition(int node, int line, int column) {
      if (this.getStartLine(node) == 0) {
         return false;
      } else if (line < this.getEndLine(node)) {
         return false;
      } else if (line > this.getEndLine(node)) {
         return true;
      } else {
         return this.getEndColumn(node) <= column;
      }
   }

   public boolean afterPosition(int node, int line, int column) {
      if (line > this.getStartLine(node)) {
         return false;
      } else if (line < this.getStartLine(node)) {
         return true;
      } else {
         return this.getStartColumn(node) > column;
      }
   }

   public boolean areEqual(int node1, int node2) {
      if (this.getSyntaxTag(node1) != this.getSyntaxTag(node2)) {
         return false;
      } else {
         int count = this.getChildCount(node1);
         if (count != this.getChildCount(node2)) {
            return false;
         } else if (this.syntax.isIdentifier(this.getSyntaxTag(node1)) && this.getIdentifier(node1) != this.getIdentifier(node2)) {
            return false;
         } else {
            if (this.syntax.isLiteral(this.getSyntaxTag(node1))) {
               char[] chars1 = this.getLiteralChars(node1);
               int off1 = this.getLiteralOff(node1);
               int len1 = this.getLiteralLen(node1);
               char[] chars2 = this.getLiteralChars(node2);
               int off2 = this.getLiteralOff(node2);
               int len2 = this.getLiteralLen(node2);
               if (len1 != len2) {
                  return false;
               }

               for(int i = 0; i < len1; ++i) {
                  if (chars1[off1 + i] != chars2[off2 + i]) {
                     return false;
                  }
               }
            }

            for(int i = 0; i < count; ++i) {
               if (!this.areEqual(this.getChildNode(node1, i), this.getChildNode(node2, i))) {
                  return false;
               }
            }

            return true;
         }
      }
   }

   public int getIdentifierNodeAt(int line, int column) {
      return this.getIdentifierNodeAt(this.getRootNode(), line, column);
   }

   public int getTokenNodeAt(int line, int column) {
      return this.getTokenNodeAt(this.getRootNode(), line, column);
   }

   public int getMemberDeclarationNode(int declarationNumber) {
      return this.getMemberDeclarationNode(this.getRootNode(), declarationNumber);
   }

   public int getClassDeclarationNode(int declarationNumber) {
      return this.getClassDeclarationNode(this.getRootNode(), declarationNumber);
   }

   public int getCommentAt(int line, int column) {
      for(int i = 0; i < this.getCommentCount(); ++i) {
         if (this.commentContainsPosition(i, line, column)) {
            return i;
         }
      }

      return -1;
   }

   public ListOfInt getBlockStatementNodesAt(int startLine, int startColumn, int endLine, int endColumn) {
      int blockNode = this.getBlockNodeAt(startLine, startColumn, endLine, endColumn);
      if (blockNode == -1) {
         return null;
      } else {
         int startStmtNode = -1;
         int endStmtNode = -1;
         int startStmtNum = -1;
         int endStmtNum = -1;
         int count = this.getChildCount(blockNode);

         for(startStmtNum = 1; startStmtNum < count - 1; ++startStmtNum) {
            int stmtNode = this.getChildNode(blockNode, startStmtNum);
            if (this.containsPosition(stmtNode, startLine, startColumn) || this.afterPosition(stmtNode, startLine, startColumn)) {
               startStmtNode = stmtNode;
               break;
            }
         }

         for(endStmtNum = count - 2; endStmtNum > 0; --endStmtNum) {
            int stmtNode = this.getChildNode(blockNode, endStmtNum);
            if (this.containsPosition(stmtNode, endLine, endColumn) || this.beforePosition(stmtNode, endLine, endColumn)) {
               endStmtNode = stmtNode;
               break;
            }
         }

         if (startStmtNode == -1 || endStmtNode == -1) {
            return null;
         } else if (startStmtNum > endStmtNum) {
            return null;
         } else {
            ListOfInt nodes = new ListOfInt();

            for(int i = startStmtNum; i <= endStmtNum; ++i) {
               nodes.add(this.getChildNode(blockNode, i));
            }

            return nodes;
         }
      }
   }

   public int getBlockStatementNodeAt(int startLine, int startColumn, int endLine, int endColumn) {
      int blockNode = this.getBlockNodeAt(startLine, startColumn, endLine, endColumn);
      if (blockNode == -1) {
         return -1;
      } else {
         int count = this.getChildCount(blockNode);

         for(int i = 1; i < count - 1; ++i) {
            int stmtNode = this.getChildNode(blockNode, i);
            if (this.containsPosition(stmtNode, startLine, startColumn) || this.afterPosition(stmtNode, startLine, startColumn)) {
               return stmtNode;
            }
         }

         return count == 0 ? blockNode : this.getChildNode(blockNode, count - 1);
      }
   }

   public int getBlockNodeAt(int startLine, int startColumn, int endLine, int endColumn) {
      return this.getBlockNodeAt(this.getRootNode(), startLine, startColumn, endLine, endColumn);
   }

   public int getBodyNodeAt(int startLine, int startColumn, int endLine, int endColumn) {
      return this.getBodyNodeAt(this.getRootNode(), startLine, startColumn, endLine, endColumn);
   }

   public ListOfInt getMemberNodesAt(int startLine, int startColumn, int endLine, int endColumn) {
      int bodyNode = this.getBodyNodeAt(startLine, startColumn, endLine, endColumn);
      if (bodyNode == -1) {
         return null;
      } else {
         int startMbrNode = -1;
         int endMbrNode = -1;
         int startMbrNum = -1;
         int endMbrNum = -1;
         int count = this.getChildCount(bodyNode);

         for(startMbrNum = 1; startMbrNum < count - 1; ++startMbrNum) {
            int mbrNode = this.getChildNode(bodyNode, startMbrNum);
            if (this.containsPosition(mbrNode, startLine, startColumn) || this.afterPosition(mbrNode, startLine, startColumn)) {
               startMbrNode = mbrNode;
               break;
            }
         }

         for(endMbrNum = count - 2; endMbrNum > 0; --endMbrNum) {
            int mbrNode = this.getChildNode(bodyNode, endMbrNum);
            if (this.containsPosition(mbrNode, endLine, endColumn) || this.beforePosition(mbrNode, endLine, endColumn)) {
               endMbrNode = mbrNode;
               break;
            }
         }

         if (startMbrNode == -1 || endMbrNode == -1) {
            return null;
         } else if (startMbrNum > endMbrNum) {
            return null;
         } else {
            ListOfInt nodes = new ListOfInt();

            for(int i = startMbrNum; i <= endMbrNum; ++i) {
               nodes.add(this.getChildNode(bodyNode, i));
            }

            return nodes;
         }
      }
   }

   public int getArgumentsNodeAt(int line, int column) {
      int argumentsNodeAt = this.getArgumentsNodeAt(this.getRootNode(), line, column);
      return argumentsNodeAt != -1 && this.syntax.isClassBody(this.getSyntaxTag(argumentsNodeAt)) ? -1 : argumentsNodeAt;
   }

   public int getExpressionNodeAt(int line, int column) {
      return this.getExpressionNodeAt(this.getRootNode(), line, column + 1, line, column + 1);
   }

   public int getStatementNodeAt(int startLine, int startColumn, int endLine, int endColumn) {
      return this.getStatementNodeAt(this.getRootNode(), startLine, startColumn, endLine, endColumn);
   }

   public int getMethodNodeAt(int startLine, int startColumn, int endLine, int endColumn) {
      return this.getMethodNodeAt(this.getRootNode(), startLine, startColumn, endLine, endColumn);
   }

   public int getMethodNodeNear(int line, int column) {
      return this.getMethodNodeNear(this.getRootNode(), line, column);
   }

   public boolean isAssignedExpressionNode(int node) {
      return this.syntax.isAssignedExpressionNode(this, node);
   }

   public boolean isChangedExpressionNode(int node) {
      return this.syntax.isChangedExpressionNode(this, node);
   }

   public boolean isReadExpressionNode(int node) {
      return !this.isAssignedExpressionNode(node);
   }

   public int getReadExpressionNodeAt(int startLine, int startColumn, int endLine, int endColumn) {
      return this.getReadExpressionNodeAt(this.getRootNode(), startLine, startColumn, endLine, endColumn);
   }

   public boolean isClassDeclarationNode(int node) {
      return this.syntax.isClassDeclaration(this.getSyntaxTag(node));
   }

   public boolean isMethodDeclarationNode(int node) {
      return this.syntax.isMethodDeclaration(this.getSyntaxTag(node));
   }

   public boolean isFieldDeclarationNode(int node) {
      return this.syntax.isFieldDeclaration(this.getSyntaxTag(node));
   }

   public boolean isBlockNode(int node) {
      return this.syntax.isBlock(this.getSyntaxTag(node));
   }

   public boolean isIdentifierNode(int node) {
      return this.syntax.isIdentifier(this.getSyntaxTag(node));
   }

   public boolean isPublicSignatureIdentifierNode(int node) {
      return this.syntax.isIdentifier(this.getSyntaxTag(node)) && this.syntax.isPublicSignatureIdentifierNode(this, node);
   }

   public boolean isDeclarationIdentifierNode(int node) {
      return this.syntax.isIdentifier(this.getSyntaxTag(node)) && this.syntax.isDeclarationIdentifierNode(this, node);
   }

   public boolean isParametersNode(int node) {
      return this.syntax.isParameters(this.getSyntaxTag(node));
   }

   public boolean isArgumentsNode(int node) {
      return this.syntax.isArguments(this.getSyntaxTag(node));
   }

   public boolean isNonQualifiedTypeIdentifierNode(int node) {
      return this.syntax.isNonQualifiedTypeIdentifierNode(this, node);
   }

   public boolean isQualifiedTypeIdentifierNode(int node) {
      return this.syntax.isQualifiedTypeIdentifierNode(this, node);
   }

   public int getQualifiedTypeIdentifierNode(int node) {
      return this.syntax.getQualifiedTypeIdentifierNode(this, node);
   }

   public int getTypeIdentifierNodeArgumentCount(int node) {
      return this.syntax.getTypeIdentifierNodeArgumentCount(this, node);
   }

   public boolean isFieldIdentifierNode(int node) {
      return this.syntax.isFieldIdentifierNode(this, node);
   }

   public ListOfInt getNamespaceNodePairs() {
      return this.syntax.getNamespaceNodePairs(this);
   }

   public ListOfInt getImportNodePairs() {
      return this.syntax.getImportNodePairs(this);
   }

   public int getImportEndColumn() {
      return this.syntax.getImportEndColumn(this);
   }

   public int getImportEndLine() {
      return this.syntax.getImportEndLine(this);
   }

   public int getImportStartColumn() {
      return this.syntax.getImportStartColumn(this);
   }

   public int getImportStartLine() {
      return this.syntax.getImportStartLine(this);
   }

   public SetOfInt getUnifedLines() {
      return this.unIfedLines;
   }

   public String getDocumentationString(Entity entity) {
      String doc = "";
      FileEntry file = entity.getFile();
      if (file == null) {
         return "";
      } else {
         int node;
         if (entity.isClassType()) {
            node = this.getClassDeclarationNode(entity.getDeclarationNumber());
         } else {
            node = this.getMemberDeclarationNode(entity.getDeclarationNumber());
         }

         if (node != -1) {
            doc = this.syntax.getRawDocCommentString(this, node);
         }

         return doc;
      }
   }

   public String getHTMLDocumentationString(Entity entity) {
      String doc = "";
      FileEntry file = entity.getFile();
      if (file == null) {
         return "";
      } else {
         int node;
         if (entity.isClassType()) {
            node = this.getClassDeclarationNode(entity.getDeclarationNumber());
         } else {
            node = this.getMemberDeclarationNode(entity.getDeclarationNumber());
         }

         if (node != -1) {
            doc = this.syntax.getHTMLDocCommentString(this, node);
         }

         return doc;
      }
   }

   public boolean hasHTMLDocumentationString(int node) {
      return this.syntax.hasHTMLDocCommentString(this, node);
   }

   private int getFirstTokenInLine(int node, int line) {
      int count = this.getChildCount(node);

      for(int i = 0; i < count; ++i) {
         int childNode = this.getFirstTokenInLine(this.getChildNode(node, i), line);
         if (childNode != -1) {
            return childNode;
         }
      }

      return this.isTokenNode(node) && this.getStartLine(node) == line ? node : -1;
   }

   private int getNodeAt(int node, int startLine, int startColumn, int endLine, int endColumn) {
      int count = this.getChildCount(node);

      for(int i = 0; i < count; ++i) {
         int n = this.getNodeAt(this.getChildNode(node, i), startLine, startColumn, endLine, endColumn);
         if (n != -1) {
            return n;
         }
      }

      return this.containsPosition(node, startLine, startColumn) && this.containsPositionExt(node, endLine, endColumn) ? node : -1;
   }

   private int getTokenNodeAt(int node, int line, int column) {
      if (this.isTokenNode(node) && this.containsPositionExt(node, line, column)) {
         return node;
      } else {
         int count = this.getChildCount(node);

         for(int i = 0; i < count; ++i) {
            int identifierNode = this.getTokenNodeAt(this.getChildNode(node, i), line, column);
            if (identifierNode != -1) {
               return identifierNode;
            }
         }

         return -1;
      }
   }

   private int getMemberDeclarationNode(int node, int declarationNumber) {
      if (this.syntax.isMemberDeclaration(this.getSyntaxTag(node)) && this.getDeclarationNumber(node) == declarationNumber) {
         return node;
      } else {
         int count = this.getChildCount(node);

         for(int i = 0; i < count; ++i) {
            int n = this.getMemberDeclarationNode(this.getChildNode(node, i), declarationNumber);
            if (n != -1) {
               return n;
            }
         }

         return -1;
      }
   }

   private int getIdentifierNodeAt(int node, int line, int column) {
      if (this.syntax.isIdentifier(this.getSyntaxTag(node)) && this.containsPositionExt(node, line, column)) {
         return node;
      } else {
         int count = this.getChildCount(node);

         for(int i = 0; i < count; ++i) {
            int identifierNode = this.getIdentifierNodeAt(this.getChildNode(node, i), line, column);
            if (identifierNode != -1) {
               return identifierNode;
            }
         }

         return -1;
      }
   }

   private int getClassDeclarationNode(int node, int declarationNumber) {
      if (this.syntax.isClassDeclaration(this.getSyntaxTag(node)) && this.getDeclarationNumber(node) == declarationNumber) {
         return node;
      } else {
         int count = this.getChildCount(node);

         for(int i = 0; i < count; ++i) {
            int n = this.getClassDeclarationNode(this.getChildNode(node, i), declarationNumber);
            if (n != -1) {
               return n;
            }
         }

         return -1;
      }
   }

   private int getBodyNodeAt(int node, int startLine, int startColumn, int endLine, int endColumn) {
      int count = this.getChildCount(node);

      for(int i = 0; i < count; ++i) {
         int n = this.getBodyNodeAt(this.getChildNode(node, i), startLine, startColumn, endLine, endColumn);
         if (n != -1) {
            return n;
         }
      }

      return this.syntax.isClassBody(this.getSyntaxTag(node))
            && this.containsPosition(node, startLine, startColumn)
            && this.containsPosition(node, endLine, endColumn)
         ? node
         : -1;
   }

   private int getBlockNodeAt(int node, int startLine, int startColumn, int endLine, int endColumn) {
      int count = this.getChildCount(node);

      for(int i = 0; i < count; ++i) {
         int n = this.getBlockNodeAt(this.getChildNode(node, i), startLine, startColumn, endLine, endColumn);
         if (n != -1) {
            return n;
         }
      }

      return this.syntax.isBlock(this.getSyntaxTag(node))
            && this.containsPosition(node, startLine, startColumn)
            && this.containsPosition(node, endLine, endColumn)
         ? node
         : -1;
   }

   private int getArgumentsNodeAt(int node, int line, int column) {
      int count = this.getChildCount(node);

      for(int i = 0; i < count; ++i) {
         int argumentsNode = this.getArgumentsNodeAt(this.getChildNode(node, i), line, column);
         if (argumentsNode != -1) {
            return argumentsNode;
         }
      }

      return (this.syntax.isArguments(this.getSyntaxTag(node)) || this.syntax.isClassBody(this.getSyntaxTag(node)))
            && this.containsPositionExt(node, line, column)
         ? node
         : -1;
   }

   private int getExpressionNodeAt(int node, int startLine, int startColumn, int endLine, int endColumn) {
      if (this.syntax.isExpression(this.getSyntaxTag(node)) && this.getStartLine(node) == startLine && this.getStartColumn(node) == startColumn) {
         return node;
      } else {
         int count = this.getChildCount(node);

         for(int i = 0; i < count; ++i) {
            int n = this.getExpressionNodeAt(this.getChildNode(node, i), startLine, startColumn, endLine, endColumn);
            if (n != -1) {
               return n;
            }
         }

         return -1;
      }
   }

   private int getStatementNodeAt(int node, int startLine, int startColumn, int endLine, int endColumn) {
      int count = this.getChildCount(node);

      for(int i = 0; i < count; ++i) {
         int n = this.getStatementNodeAt(this.getChildNode(node, i), startLine, startColumn, endLine, endColumn);
         if (n != -1) {
            return n;
         }
      }

      return this.syntax.isStatement(this.getSyntaxTag(node))
            && this.containsPosition(node, startLine, startColumn)
            && this.containsPosition(node, endLine, endColumn)
         ? node
         : -1;
   }

   private int getMethodNodeAt(int node, int startLine, int startColumn, int endLine, int endColumn) {
      int count = this.getChildCount(node);

      for(int i = 0; i < count; ++i) {
         int n = this.getMethodNodeAt(this.getChildNode(node, i), startLine, startColumn, endLine, endColumn);
         if (n != -1) {
            return n;
         }
      }

      return this.syntax.isMethodDeclaration(this.getSyntaxTag(node))
            && this.containsPosition(node, startLine, startColumn)
            && this.containsPosition(node, endLine, endColumn)
         ? node
         : -1;
   }

   private int getMethodNodeNear(int node, int line, int column) {
      int count = this.getChildCount(node);

      for(int i = 0; i < count; ++i) {
         int declNode = this.getMethodNodeNear(this.getChildNode(node, i), line, column);
         if (declNode != -1) {
            return declNode;
         }
      }

      return !this.syntax.isMethodDeclaration(this.getSyntaxTag(node))
            || !this.containsPosition(node, line, column)
               && (!this.hasLeftSisterNode(node) || !this.beforePosition(this.getLeftSisterNode(node), line, column) || !this.afterPosition(node, line, column))
         ? -1
         : node;
   }

   private int getReadExpressionNodeAt(int node, int startLine, int startColumn, int endLine, int endColumn) {
      int count = this.getChildCount(node);

      for(int i = 0; i < count; ++i) {
         int n = this.getReadExpressionNodeAt(this.getChildNode(node, i), startLine, startColumn, endLine, endColumn);
         if (n != -1) {
            return n;
         }
      }

      return this.syntax.isExpression(this.getSyntaxTag(node))
            && !this.isChangedExpressionNode(node)
            && this.containsPosition(node, startLine, startColumn)
            && this.containsPositionExt(node, endLine, endColumn)
         ? node
         : -1;
   }

   private void createString(StringBuffer buffer, String tabs, int node) {
      String pos = "("
         + this.getStartLine(node)
         + ","
         + this.getStartColumn(node)
         + "-"
         + this.getEndLine(node)
         + ","
         + this.getEndColumn(node)
         + ") "
         + node
         + "                     ";
      pos.length();
      pos = pos.substring(0, 25);

      if (this.syntax.isIdentifier(this.getSyntaxTag(node))) {
         buffer.append(pos).append(tabs).append(this.getIdentifierString(node));
      } else if (this.syntax.isLiteral(this.getSyntaxTag(node))) {
         buffer.append(pos).append(tabs).append(this.getLiteralString(node));
      } else {
         buffer.append(pos).append(tabs).append(this.syntax.getString(this.getSyntaxTag(node)));
      }

      if (this.syntax != null) {
         for(int i = 0; i < this.getAttributeCount(this.getSyntaxTag(node)); ++i) {
            buffer.append(" ").append(this.getAttribute(node, i));
         }
      }

      if (this.isClassDeclarationNode(node)) {
         buffer.append(" ").append(this.getDeclarationNumber(node));
      }

      if (this.isMethodDeclarationNode(node)) {
         buffer.append(" ").append(this.getDeclarationNumber(node));
      }

      if (this.isFieldDeclarationNode(node)) {
         buffer.append(" ").append(this.getDeclarationNumber(node));
      }

      if (this.isSyntheticNode(node)) {
         buffer.append(" synthetic");
      }

      buffer.append("\n");
      int count = this.getChildCount(node);

      for(int i = 0; i < count; ++i) {
         this.createString(buffer, tabs + "  ", this.getChildNode(node, i));
      }
   }

   private void clearAttributes(int node) {
      int count = this.getChildCount(node);

      for(int i = 0; i < count; ++i) {
         this.clearAttributes(this.getChildNode(node, i));
      }

      this.content[node + 2] = -1;
   }

   private int getAttributeCount(int syntaxTag) {
      if (this.syntax.hasAttrTarget(syntaxTag)) {
         return 10;
      } else if (this.syntax.hasAttrDAIndex(syntaxTag)) {
         return 9;
      } else if (this.syntax.hasAttrVariableSlot(syntaxTag)) {
         return 8;
      } else if (this.syntax.isIdentifier(syntaxTag) || this.syntax.isArguments(syntaxTag) || this.syntax.isParameters(syntaxTag)) {
         return 7;
      } else if (this.syntax.hasAttrValue(syntaxTag)) {
         return 4;
      } else {
         return this.syntax.hasAttrType(syntaxTag) ? 2 : 0;
      }
   }

   private void setAttribute(int node, int attr, int value) {
      this.clearedAttributes = false;
      int ap = this.content[node + 2];
      if (ap == -1) {
         ap = this.createAttributes(node);
      }

      this.attributes[ap + attr] = value;
   }

   private int createAttributes(int node) {
      int ap = this.attributepos;
      this.content[node + 2] = ap;
      int syntaxTag = this.getSyntaxTag(node);
      this.attributepos += this.getAttributeCount(syntaxTag);
      if (this.attributepos >= this.attributes.length) {
         int[] attributes = new int[Math.min(this.attributepos * 2, this.attributes.length * 2 + 1)];
         System.arraycopy(this.attributes, 0, attributes, 0, this.attributes.length);
         this.attributes = attributes;
      }

      if (this.syntax.hasAttrType(syntaxTag)) {
         this.declareAttrType(node, null);
      }

      if (this.syntax.hasAttrDAIndex(syntaxTag)) {
         this.declareAttrDAIndex(node, -1);
      }

      if (this.syntax.hasAttrValue(syntaxTag)) {
         this.declareAttrValue(node, this.NON_VALUE);
      }

      if (this.syntax.isIdentifier(syntaxTag)) {
         this.setAttribute(node, 4, 0);
         this.setAttribute(node, 6, -1);
      }

      if (this.syntax.isParameters(syntaxTag)) {
         this.setAttribute(node, 4, 0);
      }

      if (this.syntax.isArguments(syntaxTag)) {
         this.setAttribute(node, 4, 0);
      }

      if (this.syntax.hasAttrTarget(syntaxTag)) {
         this.declareAttrTarget(node, -1);
      }

      return ap;
   }

   private int getAttribute(int node, int attr) {
      int ap = this.content[node + 2];
      if (ap == -1) {
         ap = this.createAttributes(node);
      }

      if (ap + attr > this.attributes.length) {
         System.out.println();
      }

      return this.attributes[ap + attr];
   }
}
