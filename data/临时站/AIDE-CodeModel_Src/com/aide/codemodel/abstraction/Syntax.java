package com.aide.codemodel.abstraction;


import com.aide.codemodel.api.SyntaxTree;
import com.aide.codemodel.api.collections.ListOfInt;

public interface Syntax {
   boolean isParameters(int syntaxTag);

   boolean isMethodDeclaration(int syntaxTag);

   boolean isFieldDeclaration(int syntaxTag);

   boolean isArguments(int syntaxTag);

   boolean isClassBody(int syntaxTag);

   boolean isBlock(int syntaxTag);

   boolean isIdentifier(int syntaxTag);

   boolean isExpression(int syntaxTag);

   boolean isStatement(int syntaxTag);

   boolean isMemberDeclaration(int syntaxTag);

   boolean isClassDeclaration(int syntaxTag);

   boolean isLiteral(int syntaxTag);

   boolean isToken(int syntaxTag);

   int getOperator(int syntaxTag);

   int getOperatorPriority(int syntaxTag);

   String getString(int syntaxTag);

   int getTokenLength(int syntaxTag);

   int getIdentifierForKeyword(int syntaxTag);

   boolean hasAttrVariableSlot(int syntaxTag);

   boolean hasAttrDAIndex(int syntaxTag);

   boolean hasAttrTarget(int syntaxTag);

   boolean hasAttrType(int syntaxTag);

   boolean hasAttrValue(int syntaxTag);

   boolean isDeclarationIdentifierNode(SyntaxTree ast, int node);

   boolean isPublicSignatureIdentifierNode(SyntaxTree ast, int node);

   boolean isNonQualifiedTypeIdentifierNode(SyntaxTree ast, int node);

   boolean isQualifiedTypeIdentifierNode(SyntaxTree ast, int node);

   int getQualifiedTypeIdentifierNode(SyntaxTree ast, int node);

   int getTypeIdentifierNodeArgumentCount(SyntaxTree ast, int node);

   boolean isFieldIdentifierNode(SyntaxTree ast, int node);

   boolean isAssignedExpressionNode(SyntaxTree ast, int node);

   boolean isChangedExpressionNode(SyntaxTree ast, int node);

   int getParameterNodeOfParametersNode(SyntaxTree ast, int node, int i);

   int getLeftParenNodeOfParametersNode(SyntaxTree ast, int node);

   int getRightParenNodeOfParametersNode(SyntaxTree ast, int node);

   int getArgumentNodeOfArgumentsNode(SyntaxTree ast, int node, int i);

   int getArgumentCountOfArgumentsNode(SyntaxTree ast, int node);

   int getLeftParenNodeOfArgumentsNode(SyntaxTree ast, int node);

   int getRightParenNodeOfArgumentsNode(SyntaxTree ast, int node);

   ListOfInt getNamespaceNodePairs(SyntaxTree ast);

   ListOfInt getImportNodePairs(SyntaxTree ast);

   int getImportStartLine(SyntaxTree ast);

   int getImportStartColumn(SyntaxTree ast);

   int getImportEndLine(SyntaxTree ast);

   int getImportEndColumn(SyntaxTree ast);

   
   String getHTMLDocCommentString(SyntaxTree ast, int node);

   boolean hasHTMLDocCommentString(SyntaxTree ast, int node);

   
   String getRawDocCommentString(SyntaxTree ast, int node);
}
