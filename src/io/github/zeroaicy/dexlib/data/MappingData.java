package io.github.zeroaicy.dexlib.data;
import java.util.Map;
import java.util.HashMap;
import android.os.Parcel;
import android.util.SparseIntArray;
import org.jf.util.SparseArray;
import io.github.zeroaicy.tools.files.OpenFile;
import java.util.List;

public class MappingData{
	// /storage/emulated/0/.MyAicy/.aide/android-34.dex
	// android.dex 不可变的类和方法
	
	
	private final Map<String, ClassData> classDataMap = new HashMap<>();

	public ClassData addClassData(String classSignature){
		return addClassData(classSignature, false);
	}
	
	
	public ClassData addClassData(String classSignature, boolean finaled){
		ClassData classData = classDataMap.get(classSignature);
		if ( classData == null ){
			classData = new ClassData(classSignature, finaled);
			classDataMap.put(classSignature, classData);
		}
		return classData;
	}
	
	public ClassData addClassData(String classSignature, String classSignatureRename){
		ClassData classData = classDataMap.get(classSignature);
		if ( classData == null ){
			classData = new ClassData(classSignature, classSignatureRename);
			classDataMap.put(classSignature, classData);
		}
		return classData;
	}
	SparseArray m;
	public static MappingData getMappingData(int mappingDataFlag){
		
		return null;
	}
	
	
	String mappingPath;
	//反转规则
	private final boolean reverse;
	
	private MappingData(){
		this(null, false);
	}
	
	private MappingData(String mappingPath){
		this(mappingPath, false);
	}
	
	private MappingData(String mappingPath, boolean reverse){
		this.mappingPath = mappingPath;
		this.reverse = reverse;
		parser();
	}
	
	/**
	 * 解析重命名规则
	 */
	private void parser(){
		if ( this.mappingPath == null ){
			//空实现
			return;
		}
		List<String> lines = OpenFile.open(this.mappingPath).list();

		ClassData classData = null;

		for ( int index = 0, size = lines.size(); index < size; index++ ){
			String line = lines.get(index);
			int lineLength = line.length();

			//a->b字符串至少长度为4
			if ( lineLength <= 3 ){
				continue;
			}

			//类
			if ( !isBlankSpace(line.charAt(0)) ){
				classData = parserClassData(line);
				continue;
			}

			//解析字段或方法

			// ->前后可能有空格
			int separatorPosition = line.indexOf("->");
			if ( separatorPosition <= 0 ){
				continue;
			}
			int originalStart = separatorPosition + "->".length();

			//使得original没有空格
			while ( isBlankSpace(line.charAt(originalStart)) 
				   && originalStart < lineLength ){
				originalStart++;
			}

			//原来的方法名或者字段名
			String original = line.substring(originalStart);

			int confusevtEnd = separatorPosition;
			//去除separatorPosition前的空格
			while ( isBlankSpace(line.charAt(confusevtEnd - 1)) 
				   && confusevtEnd < lineLength ){
				confusevtEnd--;
			}

			int confusevtStart = confusevtEnd;
			//向前查询，找到confusevtStart
			while ( !isBlankSpace(line.charAt(confusevtStart - 1)) 
				   && confusevtStart > 0 ){
				confusevtStart--;
			}

			boolean isMethod = line.charAt(confusevtEnd - 1) == ')';

			if ( isMethod ){
				//confusevtStart现在是(
				String confusevt = line.substring(confusevtStart, line.indexOf('(', confusevtStart));

				int parameterTypesStart = confusevtStart + confusevt.length() + 1 ;
				int parameterTypesEnd = confusevtEnd - 1;

				String parameterTypes = parameterTypesStart == parameterTypesEnd ? "" : line.substring(parameterTypesStart, parameterTypesEnd);

				//判断parameterTypes是Java样式的包名，还是类签名
				if ( parameterTypes != null
					&& parameterTypes.length() > 0
				//源码样式
					&& parameterTypes.indexOf(',') < 0
					&& parameterTypes.indexOf('.') < 0
					&& parameterTypes.indexOf(']') < 0
					&& !hasPrimitiveType(parameterTypes)
				//类签名
					|| parameterTypes.indexOf(';') > 0 ){
					//类签名 [a，Z，ZZ]等不表示源码样式
					parameterTypes = "(" + parameterTypes + ")";
				}


				if ( classData != null ){
					if ( reverse ){
						classData.addMethodData(original, parameterTypes, confusevt);
					}else{
						classData.addMethodData(confusevt, parameterTypes, original);
					}
				}

			}else{
				//字段
				String confusevt = line.substring(confusevtStart, confusevtEnd);
				confusevt.toString();
				if ( classData != null ){
					if ( reverse ){
						classData.addField(original, confusevt);
					}else{
						classData.addField(confusevt, original);
					}
				}

			}
		}
	}
	
	//解析出ClassData
	public ClassData parserClassData(String line){
		int lineLength;
		if ( line == null 
			|| (lineLength = line.length()) < 4 ){
			return null;
		}
		//分割符在line中的位置
		// separatorPosition表示'->'中'-'的位置 
		int separatorPosition = line.indexOf("->");
		if ( separatorPosition <= 0 ){
			return null;
		}
		//confusevt在line的endIndex
		int confusevtEnd = separatorPosition;
		//去除separatorPosition前的空格
		while ( isBlankSpace(line.charAt(confusevtEnd - 1)) 
			   && confusevtEnd < lineLength ){
			confusevtEnd--;
		}
		// 截取confusevt
		String confusevt = line.substring(0, confusevtEnd);
		//兼容模式，兼容Java类签名与非Java类签名
		final int confusevtLength = confusevt.length();
		if ( confusevtLength < 2
			|| confusevt.charAt(0) != 'L'
			|| confusevt.charAt(confusevtLength - 1) != ';' ){
			//兼容处理非Java类签名
			confusevt = "L" + confusevt.replace('.', '/') + ";";				 
		}
		int originalStart = separatorPosition + "->".length();
		//使得original没有空格
		while ( isBlankSpace(line.charAt(originalStart)) 
			   && originalStart < lineLength ){
			originalStart++;
		}

		// 截取original
		String original = line.substring(originalStart);
		//兼容模式，兼容Java类签名与非Java类签名
		final int originalLength = original.length();
		if ( originalLength < 2
			|| original.charAt(0) != 'L'
			|| original.charAt(originalLength - 1) != ';' ){
			//兼容处理非Java类签名
			original = "L" + original.replace('.', '/') + ";";
		}
		//使用 contrary反转转换
		return reverse ? addClassData(original, confusevt) : addClassData(confusevt, original);
	}
	
	
	/*********************************utils*********************************/
	
	//是否是Java基本类型
	public static boolean hasPrimitiveType(String type){
		String[] primitiveTypes = new String[]{"boolean","byte",
			"char","short","int","long","float","double"};
		for ( String primitiveType : primitiveTypes ){
			if ( type.contains(primitiveType) ){
				return true;
			}
		}
		return false;
	}

	// 是否是空格
	public static  boolean isBlankSpace(char charAt){
		return charAt == ' ' || charAt == '\t';
	}
}
