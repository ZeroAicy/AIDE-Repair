// 第一处修改点 ei() .line 66
# 调用parserLambdaExpression
    invoke-static/range {p0 .. p0}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->parserLambdaExpression(Lcom/aide/codemodel/language/java/JavaParser;)Z
    move-result v0
    if-eqz v0, :cond_18f
    return-void
    :cond_18f
    



备注
sy -> parserFIELD
nw() -> parserBLOCK
// 处理 字段 右侧表达式[当然不仅仅是表达式]
Qq() -> parserEXPRESSION Expression

Lcom/aide/codemodel/language/java/JavaParser;[Qq()] 2783 为表达式处理 ( 


ei() -> = 后面非 (

// 判断是否是以下样式
et() ->
	IDENTIFIER.class
	IDENTIFIER.this
	IDENTIFIER.super
	IDENTIFIER[][].class
	
IDENTIFIER
TYPE_ARGUMENTS

ei() 中 et()为true 则必然return 或 throw new Parser.a();
if( et() ){
	// 则处理 
	IDENTIFIER( ) //方法
	IDENTIFIER.[class || this || super || [].class ]
}
Lcom/aide/codemodel/language/java/JavaParser;->ei()V 66行 处理的是 xxx.xxx( )


// Lambda表达式
	LAMBDA_EXPRESSION
		(
		TYPE_NAME
			IDENTIFIER
			
			TYPE_ARGUMENTS // 泛型 <xxx>
			
		ARRAY_BRACKETS // []
		
		IDENTIFIER
		
		 -> 
		 
		BODY
			{
				
				
			}
			
	
	首先 判断 是否是 ( 或者是 IDENTIFIER{变量名}
	如果是 ( declareNodeFormCurrentSyntaxTag
	if ( IDENTIFIER ){
		if (next IDENTIFIER ){
			
		}
	}
	
	
	然后是  -> 

	= {} P8() 处理 {} 之间的 Ast
	= xxx
	= xxx
	= xxx.xxx()
	
	= IDENTIFIER  ->  
	= (IDENTIFIER, IDENTIFIER, IDENTIFIER)  -> 
	= (IDENTIFIER IDENTIFIER, IDENTIFIER IDENTIFIER) -> 
	
	
	
	首先遇到 ( 或者 IDENTIFIER
	
	IDENTIFIER 判断 后面是否就是 -> 否则不是Lambda
	
	
	
	
	
	
//
// Decompiled by Jadx - 676ms
//
package com.aide.codemodel.language.java;

import abcd.cy;
import abcd.ey;
import abcd.iy;
import com.aide.codemodel.api.abstraction.Syntax;

@cy(clazz = -789709533267558225L, container = -789709533267558225L, user = true)
public class JavaSyntax implements Syntax {
    @ey(method = 2195266421616133727L)
    public String getString(int i) {
        try {
            if (gn) {
                iy.u7(1428886992592896000L, this, i);
            }
            switch (i) {
                case 1:
                    return "IDENTIFIER";
                case 2:
                    return "STRING_LITERAL";
                case 3:
                    return "CHAR_LITERAL";
                case 4:
                    return "INT_LITERAL";
                case 5:
                    return "LONG_LITERAL";
                case 6:
                    return "FLOAT_LITERAL";
                case 7:
                    return "DOUBLE_LITERAL";
                case 8:
                    return "{";
                case 9:
                    return "}";
                case 10:
                    return "[";
                case 11:
                    return "]";
                case 12:
                    return "(";
                case 13:
                    return ")";
                case 14:
                    return ";";
                case 15:
                    return ",";
                case 16:
                    return ".";
                case 17:
                    return "=";
                case 18:
                    return "==";
                case 19:
                    return "/";
                case 20:
                    return "/=";
                case 21:
                    return "+";
                case 22:
                    return "++";
                case 23:
                    return "+=";
                case 24:
                    return "~";
                case 25:
                    return "?";
                case 26:
                    return ":";
                case 27:
                    return "-";
                case 28:
                    return "--";
                case 29:
                    return "-=";
                case 30:
                    return "*";
                case 31:
                    return "*=";
                case 32:
                    return "%";
                case 33:
                    return "%=";
                case 34:
                    return "!";
                case 35:
                    return "!=";
                case 36:
                    return "^";
                case 37:
                    return "^=";
                case 38:
                    return "|";
                case 39:
                    return "||";
                case 40:
                    return "|=";
                case 41:
                    return "&";
                case 42:
                    return "&&";
                case 43:
                    return "&=";
                case 44:
                    return "<";
                case 45:
                    return "<=";
                case 46:
                    return "<<";
                case 47:
                    return "<<=";
                case 48:
                    return ">";
                case 49:
                    return ">=";
                case 50:
                    return ">>";
                case 51:
                    return ">>>";
                case 52:
                    return ">>=";
                case 53:
                    return ">>>=";
                case 54:
                    return "do";
                case 55:
                    return "if";
                case 56:
                    return "for";
                case 57:
                    return "int";
                case 58:
                    return "new";
                case 59:
                    return "try";
                case 60:
                    return "byte";
                case 61:
                    return "case";
                case 62:
                    return "char";
                case 63:
                    return "else";
                case 64:
                    return "goto";
                case 65:
                    return "long";
                case 66:
                    return "null";
                case 67:
                    return "this";
                case 68:
                    return "true";
                case 69:
                    return "void";
                case 70:
                    return "break";
                case 71:
                    return "catch";
                case 72:
                    return "class";
                case 73:
                    return "const";
                case 74:
                    return "false";
                case 75:
                    return "final";
                case 76:
                    return "float";
                case 77:
                    return "short";
                case 78:
                    return "super";
                case 79:
                    return "throw";
                case 80:
                    return "while";
                case 81:
                    return "double";
                case 82:
                    return "import";
                case 83:
                    return "native";
                case 84:
                    return "public";
                case 85:
                    return "return";
                case 86:
                    return "static";
                case 87:
                    return "switch";
                case 88:
                    return "throws";
                case 89:
                    return "boolean";
                case 90:
                    return "default";
                case 91:
                    return "extends";
                case 92:
                    return "finally";
                case 93:
                    return "package";
                case 94:
                    return "private";
                case 95:
                    return "abstract";
                case 96:
                    return "continue";
                case 97:
                    return "strictfp";
                case 98:
                    return "volatile";
                case 99:
                    return "interface";
                case 100:
                    return "protected";
                case 101:
                    return "transient";
                case 102:
                    return "implements";
                case 103:
                    return "instanceof";
                case 104:
                    return "synchronized";
                case 105:
                    return "assert";
                case 106:
                    return "deprecated";
                case 107:
                    return "enum";
                case 108:
                    return "...";
                case 109:
                    return "since 1.1";
                case 110:
                    return "since 1.2";
                case 111:
                    return "since 1.3";
                case 112:
                    return "since 1.4";
                case 113:
                    return "since 1.5";
                case 114:
                    return "ubyte";
                case 115:
                    return "@";
                case 116:
                case 117:
                case 125:
                case 130:
                case 131:
                case 132:
                case 152:
                case 153:
                case 154:
                case 158:
                case 160:
                case 174:
                case 179:
                case 181:
                case 182:
                case 183:
                case 184:
                case 185:
                case 186:
                case 187:
                case 188:
                case 189:
                case 215:
                case 217:
                case 218:
                case 219:
                case 229:
                case 233:
                case 234:
                case 235:
                case 236:
                case 237:
                case 238:
                case 239:
                case 241:
                case 242:
                case 243:
                case 244:
                default:
                    return "";
                case 118:
                    return "delegate";
                case 119:
                    return "multicast";
                case 120:
                    return "CLASS_DECLARATION";
                case 121:
                    return "INTERFACE_DECLARATION";
                case 122:
                    return "BODY";
                case 123:
                    return "CONSTRUCTOR";
                case 124:
                    return "METHOD";
                case 126:
                    return "FIELDS";
                case 127:
                    return "INITIALIZER";
                case 128:
                    return "LOCAL_CLASS_DECLARATION";
                case 129:
                    return "LOCAL_INTERFACE_DECLARATION";
                case 133:
                    return "BLOCK";
                case 134:
                    return "EMPTY_STATEMENT";
                case 135:
                    return "IF_STATEMENT";
                case 136:
                    return "IFELSE_STATEMENT";
                case 137:
                    return "WHILE_STATEMENT";
                case 138:
                    return "BREAK_STATEMENT";
                case 139:
                    return "CONTINUE_STATEMENT";
                case 140:
                    return "SYNCHRONIZED_STATEMENT";
                case 141:
                    return "RETURN_STATEMENT";
                case 142:
                    return "THROW_STATEMENT";
                case 143:
                    return "CASE_LABEL";
                case 144:
                    return "DEFAULT_LABEL";
                case 145:
                    return "DO_STATEMENT";
                case 146:
                    return "EXPRESSION_STATEMENT";
                case 147:
                    return "SWITCH_STATEMENT";
                case 148:
                    return "LABELED_STATEMENT";
                case 149:
                    return "FOR_STATEMENT";
                case 150:
                    return "TRY_STATEMENT";
                case 151:
                    return "VARIABLE_DECLARATION";
                case 155:
                    return "METHOD_INVOCATION";
                case 156:
                    return "NAME_METHOD_INVOCATION";
                case 157:
                    return "SUPER_METHOD_INVOCATION";
                case 159:
                    return "FIELD_ACCESS";
                case 161:
                    return "NAME_FIELD_ACCESS";
                case 162:
                    return "SUPER_FIELD_ACCESS";
                case 163:
                    return "THIS_CONSTRUCTOR_INVOCATION";
                case 164:
                    return "SUPER_CONSTRUCTOR_INVOCATION";
                case 165:
                    return "ARRAY_ACCESS";
                case 166:
                    return "THIS_LITERAL";
                case 167:
                    return "CLASS_LITERAL";
                case 168:
                    return "PARENTHESIZED_EXPRESSION";
                case 169:
                    return "CAST_EXPRESSION";
                case 170:
                    return "PREFIX_EXPRESSION";
                case 171:
                    return "POSTFIX_EXPRESSION";
                case 172:
                    return "INFIX_EXPRESSION";
                case 173:
                    return "INSTANCEOF_EXPRESSION";
                case 175:
                    return "ARRAY_CREATION";
                case 176:
                    return "OBJECT_CREATION";
                case 177:
                    return "ANONYMOUS_CLASS_CREATION";
                case 178:
                    return "STRING_LITERAL_LIST";
                case 180:
                    return "TYPE_NAME";
                case 190:
                    return "PARAMETERS";
                case 191:
                    return "PARAMETER";
                case 192:
                    return "EXTENDS_CLAUSE";
                case 193:
                    return "IMPLEMENTS_CLAUSE";
                case 194:
                    return "FIELD";
                case 195:
                    return "THROWS_CLAUSE";
                case 196:
                    return "ARRAY";
                case 197:
                    return "ARGUMENTS";
                case 198:
                    return "ARRAY_BRACKETS";
                case 199:
                    return "MODIFIERS";
                case 200:
                    return "VARIABLE";
                case 201:
                    return "FOR_INIT_CLAUSE";
                case 202:
                    return "FOR_UPDATE_CLAUSE";
                case 203:
                    return "FOR_CONDITION_CLAUSE";
                case 204:
                    return "CATCH_CLAUSE";
                case 205:
                    return "FINALLY_CLAUSE";
                case 206:
                    return "TYPE_ARGUMENTS";
                case 207:
                    return "TYPE_PARAMETERS";
                case 208:
                    return "TYPE_PARAMETER";
                case 209:
                    return "ASSERT_STATEMENT";
                case 210:
                    return "CONDITIONAL_OPERATOR";
                case 211:
                    return "FOREACH_STATEMENT";
                case 212:
                    return "TRY_WITH_STATEMENT";
                case 213:
                case 214:
                    return "STATIC_IMPORT_DECLARATION";
                case 216:
                    return "CATCH_TYPE";
                case 220:
                    return "ENUM_DECLARATION";
                case 221:
                    return "MEMBER_ENUM_DECLARATION";
                case 222:
                    return "LOCAL_ENUM_DECLARATION";
                case 223:
                    return "COMPILATIONUNIT";
                case 224:
                    return "PACKAGE_DECLARATION";
                case 225:
                    return "IMPORT_DECLARATION";
                case 226:
                    return "IMPORTONDEMAND_DECLARATION";
                case 227:
                    return "MEMBER_CLASS_DECLARATION";
                case 228:
                    return "MEMBER_INTERFACE_DECLARATION";
                case 230:
                    return "VARIANCE_MODIFIERS";
                case 231:
                    return "ATTRIBUTE";
                case 232:
                    return "DEFAULT_ATTRIBUTE_VALUE";
                case 240:
                    return "ARRAY_DIMS";
                case 245:
                    return "DELEGATE_DECLARATION";
                case 246:
                    return "MEMBER_DELEGATE_DECLARATION";
            }
        } catch (Throwable th) {
            if (u7) {
                iy.j3(th, 1428886992592896000L, this, new Integer(i));
            }
            throw th;
        }
    }
}
