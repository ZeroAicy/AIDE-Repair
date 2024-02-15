package com.aide.codemodel.api;

public interface ReferenceKind {
   int UNKNOWN_KIND = 0;
   int LOCAL_VARIABLE_DECLARATION_KIND = 1;
   int LOCAL_VARIABLE_KIND = 2;
   int LOCAL_OUTER_VARIABLE_KIND = 3;
   int LANGUAGE_VARIABLE_KIND = 27;
   int KEYWORD_KIND = 26;
   int LABEL_DECLARATION_KIND = 4;
   int LABEL_KIND = 5;
   int NAMESPACE_KIND = 6;
   int CLASS_TYPE_DECLARATION_KIND = 7;
   int CLASS_TYPE_KIND = 8;
   int NAMESPACE_CLASS_TYPE_KIND = 9;
   int NAMESPACE_IMPORTED_CLASS_TYPE_KIND = 10;
   int IMPORTED_CLASS_TYPE_KIND = 17;
   int PARAMETER_TYPE_DECLARATION_KIND = 11;
   int PARAMETER_TYPE_KIND = 12;
   int METHOD_PARAMETER_TYPE_DECLARATION_KIND = 13;
   int METHOD_PARAMETER_TYPE_KIND = 14;
   int FIELD_DECLARATION_KIND = 15;
   int FIELD_KIND = 16;
   int METHOD_DECLARATION_KIND = 19;
   int METHOD_KIND = 20;
   int CONSTRUCTOR_DECLARATION_KIND = 21;
   int CONSTRUCTOR_KIND = 22;
   int NAMESPACE_CLASS_TYPE_CONSTRUCTOR_KIND = 23;
   int NAMESPACE_IMPORTED_CLASS_TYPE_CONSTRUCTOR_KIND = 24;
   int IMPORTED_CLASS_TYPE_CONSTRUCTOR_KIND = 25;
   int ALIAS_DECLARATION_KIND = 30;
}
