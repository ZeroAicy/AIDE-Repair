package io.github.zeroaicy.dexlib.aidePlus.extend;
import io.github.zeroaicy.dexlib.analysis.RevertMappingData;
import io.github.zeroaicy.dexlib.analysis.RewriterClassData;
import io.github.zeroaicy.tools.files.OpenFile;
import io.github.zeroaicy.util.FileUtil;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.Collections;
import io.github.zeroaicy.dexlib.aidePlus.extend.RewriterSmali.LineNumberWrapper;
import io.github.zeroaicy.dexlib.aidePlus.extend.RewriterSmali.Field;
import io.github.zeroaicy.dexlib.aidePlus.extend.RewriterSmali.Method;

public class RewriterSmali{

	public static void rewriter(String input_src_dir, String output_src_dir, String mappingFilePath){
		Map<String, List<String>> smaliLinesMap = new HashMap<>();

		for ( File smaliFile : FileUtil.findFile(new File(input_src_dir), ".smali") ){
			List<String> smaliLines = OpenFile.open(smaliFile).list();
			if ( smaliLines.isEmpty() ){
				//无效文件
				continue;
			}
			//find class name
			String className = findClassName(smaliLines);
			if ( className == null ){
				throw new Error("smaliFile: " + smaliFile.getAbsolutePath() + " 不是一个smali文件");
			}
			smaliLinesMap.put(className, smaliLines);
		}

		RevertMappingData revertMappingData = new RevertMappingData(mappingFilePath);
		Map<String, RewriterClassData> rewriterClassDataMap = revertMappingData.getRewriterClassDataMap();

		//遍历规则
		for ( RewriterClassData rewriterClassData : new HashSet<RewriterClassData>(rewriterClassDataMap.values()) ){
			//旧类名
			String oldClassName = rewriterClassData.getConfusevt();
			// 两部分，
			// 1是修改规则指向的smali本身
			// 2是其它其它规则
			List<String> curSmaliLines = smaliLinesMap.get(oldClassName);
			if ( curSmaliLines != null ){
				//如果规则中有此smali的重命名规则
				//则修改自身
				//方法名
				Map<String, RewriterClassData.MethodData> methodDataMap = rewriterClassData.getMethodDataMap();
				if ( methodDataMap != null ){
					for ( RewriterClassData.MethodData methodData : methodDataMap.values() ){
						String methodSignature = " " + methodData.methodSignature;
						String newMethodSignature = " " + methodData.getRenamedMethodSignature();
						for ( int index = 0, size = curSmaliLines.size(); index < size; index++ ){
							String line = curSmaliLines.get(index);
							if ( line.startsWith(".method ") ){
								line = line.replace(methodSignature, newMethodSignature);
								//更新
								curSmaliLines.set(index, line);
							}

						}
					}
				}

				//字段名
				Map<String, RewriterClassData.FieldData> fieldDatas = rewriterClassData.getFieldDatas();
				if ( fieldDatas != null ){
					for ( RewriterClassData.FieldData fieldData : fieldDatas.values() ){
						String findFieldReference = " " + fieldData.confusevt + ":";
						String toFieldReference = " " + fieldData.renamed + ":";

						for ( int index = 0, size = curSmaliLines.size(); index < size; index++ ){
							String line = curSmaliLines.get(index);
							if ( line.startsWith(".field ") ){
								line = line.replace(findFieldReference, toFieldReference);
								//更新
								curSmaliLines.set(index, line);
							}
						}
					}
				}
				//类名[在修改类引用时会替换]
				String renamed = rewriterClassData.getRenamed();
				if ( !oldClassName.equals(renamed) ){
					smaliLinesMap.remove(oldClassName);
					smaliLinesMap.put(renamed, curSmaliLines);
					System.out.println("更改类名 " + oldClassName + " -> " + rewriterClassData.getRenamed());					
				}

				//自身字段名及方法名修改时才需要排序
				//此时需要对 字段 方法重新排序
				//字段排序规则 字段名+返回类型[前者相同时考虑后者]
				//方法排序规则 方法名+返回类型+参数类型[前者相同时考虑后者,参数数量越多者为-1]
				compareToSmaliFile(curSmaliLines);
			}

			//修改方法引用
			reMethodReference(rewriterClassData, smaliLinesMap);
			//修改字段引用
			reFieldReference(rewriterClassData, smaliLinesMap);
			//修改类引用
			reClassReference(rewriterClassData, smaliLinesMap);
		}

		//写入
		for ( Map.Entry<String, List<String>> entry : smaliLinesMap.entrySet() ){
			String key = entry.getKey();
			String className = key.substring(1, key.length() - 1);

			File file = new File(output_src_dir, className + ".smali");

			File parentFile = file.getParentFile();
			if ( !parentFile.exists() ){
				parentFile.mkdirs();
			}
			OpenFile.open(file).write(entry.getValue());

			System.out.println("写入 " + file);
		}

		System.out.println("完成");
	}



	private static void reClassReference(RewriterClassData rewriterClassData, Map<String, List<String>> smaliLinesMap){
		String oldClassNameReference = rewriterClassData.getConfusevt();
		String newClassNameReference = rewriterClassData.getRenamed();
		for ( List<String> lines : smaliLinesMap.values() ){
			for ( int index = 0, size = lines.size(); index < size; index++ ){
				String line = lines.get(index);

				line = line.replace(oldClassNameReference, newClassNameReference);
				//更新
				lines.set(index, line);
			}
		}
	}

	private static void reFieldReference(RewriterClassData rewriterClassData, Map<String, List<String>> smaliLinesMap){
		String oldClassNameReference = " " + rewriterClassData.getConfusevt() + "->";
		String newClassNameReference = " " + rewriterClassData.getRenamed() + "->";


		Map<String, RewriterClassData.FieldData> fieldDatas = rewriterClassData.getFieldDatas();
		if ( fieldDatas == null ){
			return;
		}
		for ( RewriterClassData.FieldData fieldData : fieldDatas.values() ){
			String findFieldReference = oldClassNameReference + fieldData.confusevt + ":";
			String toFieldReference = newClassNameReference + fieldData.renamed + ":";
			for ( List<String> lines : smaliLinesMap.values() ){
				for ( int index = 0, size = lines.size(); index < size; index++ ){
					String line = lines.get(index);
					if ( line.startsWith(".field ")
						|| line.startsWith(".method ") ){
						continue;
					}
					line = line.replace(findFieldReference, toFieldReference);
					//更新
					lines.set(index, line);
				}
			}
		}
	}

	//修改方法引用
	private static void reMethodReference(RewriterClassData rewriterClassData, Map<String, List<String>> smaliLinesMap){
		String oldClassNameReference = " " + rewriterClassData.getConfusevt() + "->";
		String newClassNameReference = " " + rewriterClassData.getRenamed() + "->";

		Map<String, RewriterClassData.MethodData> methodDataMap = rewriterClassData.getMethodDataMap();
		if ( methodDataMap == null ){
			return;
		}

		for ( RewriterClassData.MethodData methodData : methodDataMap.values() ){
			String methodSignature = oldClassNameReference + methodData.methodSignature;
			String newMethodSignature = newClassNameReference + methodData.getRenamedMethodSignature();
			for ( List<String> lines : smaliLinesMap.values() ){
				for ( int index = 0, size = lines.size(); index < size; index++ ){
					String line = lines.get(index);
					if ( line.startsWith(".field ")
						|| line.startsWith(".method ") ){
						continue;
					}
					line = line.replace(methodSignature, newMethodSignature);
					//更新
					lines.set(index, line);
				}
			}
		}
	}

	private static Map<Integer, Integer> classNameLineNumberMap = new HashMap<>();
	private static String findClassName(List<String> smaliLines){
		int lineNumber = getClassNameLineNumber(smaliLines);
		String line = smaliLines.get(lineNumber);

		int classNameEnd = line.lastIndexOf(';');

		if ( classNameEnd > 0 ){
			int classNameStart = line.lastIndexOf(" L");
			if ( classNameStart > 0 ){
				//缓存类名所在行
				Integer identityHashCode = System.identityHashCode(smaliLines);
				classNameLineNumberMap.put(identityHashCode, lineNumber);
				return line.substring(classNameStart + 1, classNameEnd + 1);
			}
		}

		Integer identityHashCode = System.identityHashCode(smaliLines);
		classNameLineNumberMap.put(identityHashCode, -1);
		return null;
	}

	private static int getClassNameLineNumber(List<String> smaliLines){
		Integer identityHashCode = System.identityHashCode(smaliLines);
		Integer lineNumber = classNameLineNumberMap.get(identityHashCode);

		if ( lineNumber != null && lineNumber.intValue() >= 0 ){
			return lineNumber;			
		}

		for ( int index = 0, size = smaliLines.size(); index < size; index++ ){
			String line = smaliLines.get(index);
			if ( line.startsWith("#")
				|| line.length() == 0 
				|| !line.startsWith(".class ") ){
				continue;
			}
			lineNumber = index;
			break;
		}

		classNameLineNumberMap.put(identityHashCode, lineNumber);
		return lineNumber;
	}


	private static void compareToSmaliFile(List<String> curSmaliLines){
		List<String> newLines = new ArrayList<>();

		final int size = curSmaliLines.size();
		int fieldMethodStart = size;

		for ( int index = 0; index < size; index++ ){
			String line = curSmaliLines.get(index);
			if ( line.startsWith("#") ){
				if ( !line.startsWith("# annotations")
					&& !line.startsWith("# interfaces") ){
					fieldMethodStart = index;
					break;
				}
			}
			if ( line.startsWith(".field ")
				|| line.startsWith(".method ") ){

				fieldMethodStart = index;
				break;
			}
			newLines.add(line);
		}

		if ( fieldMethodStart == size || newLines.size() == size ){
			System.out.println("没修改");
			//不用修改，没有字段及方法
			return;
		}

		List<Field> staticFields = new ArrayList<>();
		List<Field> instanceFields = new ArrayList<>();

		List<Method> directMethods = new ArrayList<>();
		List<Method> virtualMethods = new ArrayList<>();

		//查找字段
		for ( int index = fieldMethodStart + 1; index < size; index++ ){
			String line = curSmaliLines.get(index);
			if ( line.startsWith(".field ") ){
				//字段
				LineNumberWrapper<Field> lineNumberWrapper = parserField(curSmaliLines, index);
				if ( lineNumberWrapper == null ){
					continue;
				}
				//跳过已处理的部分
				index = lineNumberWrapper.getLineNumber();
				RewriterSmali.Field value = lineNumberWrapper.getValue();
				if ( value != null ){
					if ( value.isStatic ){
						staticFields.add(value);
					}
					else{
						instanceFields.add(value);
					}
				}
				continue;
			}

			if ( line.startsWith(".method ") ){
				LineNumberWrapper<Method> lineNumberWrapper = parserMethod(curSmaliLines, index);
				if ( lineNumberWrapper == null ){
					continue;
				}
				//跳过已处理的部分
				index = lineNumberWrapper.getLineNumber();
				RewriterSmali.Method value = lineNumberWrapper.getValue();
				if ( value != null ){
					if ( value.isDirect ){
						directMethods.add(value);
					}
					else{
						virtualMethods.add(value);
					}
				}
				continue;
			}
		}

		Collections.sort(staticFields);
		Collections.sort(instanceFields);
		Collections.sort(directMethods);
		Collections.sort(virtualMethods);
		if ( !staticFields.isEmpty() ){
			newLines.add("# static fields");

			for ( Field field : staticFields ){
				newLines.addAll(field.lines);
				newLines.add("");
			}
			if ( ! instanceFields.isEmpty()
				|| ! directMethods.isEmpty()
				|| ! virtualMethods.isEmpty() ){
				newLines.add("");
			}
			else{
				newLines.remove(newLines.size() - 1);
			}

		}
		if ( !instanceFields.isEmpty() ){
			newLines.add("# instance fields");
			for ( Field field : instanceFields ){
				newLines.addAll(field.lines);
				newLines.add("");
			}
			if ( ! directMethods.isEmpty()
				|| ! virtualMethods.isEmpty() ){
				newLines.add("");
			}
			else{
				newLines.remove(newLines.size() - 1);
			}
		}

		if ( !directMethods.isEmpty() ){
			newLines.add("# direct methods");
			for ( Method method : directMethods ){
				newLines.addAll(method.lines);
				newLines.add("");
			}
			if ( ! virtualMethods.isEmpty() ){
				newLines.add("");
			}
			else{
				newLines.remove(newLines.size() - 1);
			}
		}

		if ( !virtualMethods.isEmpty() ){
			newLines.add("# virtual methods");
			for ( Method method : virtualMethods ){
				newLines.addAll(method.lines);
				newLines.add("");
			}
			newLines.remove(newLines.size() - 1);
		}

		curSmaliLines.clear();
		curSmaliLines.addAll(newLines);
		//System.out.println(newLines);
	}

	private static RewriterSmali.LineNumberWrapper<RewriterSmali.Method> parserMethod(List<String> curSmaliLines, int index){
		Method method = null;
		List<String> methodLines = new ArrayList<>();

		methodLines.add(curSmaliLines.get(index));
		index++;

		final int size = curSmaliLines.size();
		while ( index < size ){
			String line = curSmaliLines.get(index);
			if ( line.startsWith(".method ") ){
				//新方法，说明方法声明已结束
				break;
			}
			methodLines.add(line);
			if ( line.startsWith(".end method") ){
				break;
			}
			index++;
		}
		if ( !methodLines.isEmpty() ){
			String fristLine = methodLines.get(0);

			int methodNameEnd = fristLine.lastIndexOf('(');
			int parametersEnd = fristLine.lastIndexOf(')');

			if ( methodNameEnd > 0 
				&& parametersEnd > 0 ){
				int methodNameStart = methodNameEnd;
				while ( !isBlankSpace(fristLine.charAt(methodNameStart - 1)) 
					   && methodNameStart > 0 ){
					methodNameStart--;
				}

				String methodName = fristLine.substring(methodNameStart, methodNameEnd);
				String parameters = fristLine.substring(methodNameEnd + 1, parametersEnd);

				int methodTypeStrat = parametersEnd + 1;
				int methodTypeEnd = fristLine.length();
				while ( methodTypeEnd > 0 
					   && isBlankSpace(fristLine.charAt(methodTypeEnd - 1)) ){
					methodTypeEnd--;
				}
				String methodType = fristLine.substring(methodTypeStrat, methodTypeEnd);
				boolean isDirect = fristLine.contains(" constructor ") || fristLine.contains(" static ") || fristLine.contains(" private ") ;
				method = new Method(methodName, methodType, parameters, isDirect, methodLines); 
			}
		}
		return new LineNumberWrapper<Method>(index, method);
	}

	private static RewriterSmali.LineNumberWrapper<Field> parserField(List<String> curSmaliLines, int index){
		Field field = null;
		List<String> fieldLines = new ArrayList<>();

		fieldLines.add(curSmaliLines.get(index));
		index++;

		final int size = curSmaliLines.size();
		while ( index < size ){
			String line = curSmaliLines.get(index);

			if ( line.startsWith(".field ") ){
				break;
			}
			if ( line.length() == 0 ){
				if ( index + 1 >= size ){
					break;
				}
				String nextLine = curSmaliLines.get(index + 1);
				if ( nextLine.startsWith(".field ") 
					|| nextLine.startsWith("# ") 
					|| nextLine.startsWith(".method ") ){
					break;
				}
			}
			fieldLines.add(line);
			if ( line.startsWith(".end field") ){
				break;
			}
			index++;
		}

		if ( !fieldLines.isEmpty() ){
			String fristLine = fieldLines.get(0);

			int fieldNameEnd = fristLine.lastIndexOf(':');
			if ( fieldNameEnd > 0 ){
				int fieldNameStart = fieldNameEnd;
				while ( fieldNameEnd > 0
					   && !isBlankSpace(fristLine.charAt(fieldNameStart - 1)) ){
					fieldNameStart--;
				}

				String fieldName = fristLine.substring(fieldNameStart, fieldNameEnd);

				int fieldTypeStrat = fieldNameEnd + 1;
				int fieldTypeEnd = fristLine.length();
				while ( fieldNameEnd > 0 
					   && isBlankSpace(fristLine.charAt(fieldTypeEnd - 1)) ){
					fieldTypeEnd--;
				}
				String fieldType = fristLine.substring(fieldTypeStrat, fieldTypeEnd);

				//System.out.println("fieldName " + fieldName);
				//System.out.println("fieldType " + fieldType);

				field = new Field(fieldName, fieldType, fristLine.contains(" static "), fieldLines);
			}
		}

		return new LineNumberWrapper<Field>(index, field);
	}
	public static  boolean isBlankSpace(char charAt){
		return charAt == ' ' || charAt == '\t';
	}
	private static void compareToSmaliFile2(List<String> curSmaliLines){
		List<String> newLines = new ArrayList<>();
		//按区段排序，
		// # static fields
		// # instance fields
		// # direct methods
		// # virtual methods
		List<String> group = new ArrayList<>();
		group.add("# annotations");
		group.add("# static fields");
		group.add("# instance fields");
		group.add("# direct methods");
		group.add("# virtual methods");

		String curGroupName = null;
		loop: for ( int index = 0, size = curSmaliLines.size(); index < size; index++ ){
			String line = curSmaliLines.get(index);
			for ( String groupName : group ){
				if ( line.length() > 8 && line.startsWith(groupName) ){
					newLines.add(line);
					curGroupName = groupName;
					break loop;
				}
			}
		}
		if ( curGroupName == null ){
			return;
		}
		group.remove(curGroupName);

		//下面的都是排序区域
		int compareToLine = newLines.size();
		loop: for ( int index = compareToLine, size = curSmaliLines.size(); index < size; index++ ){
			String line = curSmaliLines.get(index);
			//检查是否到下个区域
			for ( String groupName : group ){
				if ( line.length() > 8 && line.startsWith(groupName) ){
					curGroupName = groupName;
					break loop;
				}
			}
		}
	}
	public static class LineNumberWrapper<T>{
		final int lineNumber;
		final T value;
		public LineNumberWrapper(int lineNumber, T value){
			this.lineNumber = lineNumber;
			this.value = value;
		}
		public int getLineNumber(){
			return lineNumber;
		}
		public T getValue(){
			return this.value;
		}
	}
	public static class Field implements Comparable<Field>{
		public final String name;
		public final String type;
		public final boolean isStatic;
		public final List<String> lines;

		public Field(String name, String type, boolean isStatic, List<String> lines){
			this.name = name;
			this.type = type;
			this.isStatic = isStatic;
			this.lines = lines;
		}

		@Override
		public int compareTo(RewriterSmali.Field o){
			int res = name.compareTo(o.name);
			if ( res != 0 ) return res;
			res = type.compareTo(o.type);
			return res;
		}


	}
	public static class Method implements Comparable<Method>{
		public final String name;
		public final String type;
		public final String parameters;

		public final boolean isDirect;
		public final List<String> lines;

		public Method(String name, String type, String parameters, boolean isDirect, List<String> lines){
			this.name = name;
			this.type = type;
			this.parameters = parameters;
			this.isDirect = isDirect;
			this.lines = lines;
		}

		@Override
		public int compareTo(RewriterSmali.Method o){
			int res = name.compareTo(o.name);
			if ( res != 0 ) return res;

			res = type.compareTo(o.type);
			if ( res != 0 ) return res;

			res = parameters.compareTo(o.parameters);

			return res;
		}
	}

	void test(){

	}
}
