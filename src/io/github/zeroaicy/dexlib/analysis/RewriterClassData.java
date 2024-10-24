package io.github.zeroaicy.dexlib.analysis;

import java.util.HashMap;
import java.util.Map;
import io.github.zeroaicy.dexlib.analysis.RewriterClassData.MethodData;
import java.util.Collections;
import java.util.Collection;
import io.github.zeroaicy.dexlib.analysis.RewriterClassData.FieldData;
import java.util.List;
import java.util.ArrayList;
import java.util.*;

/*
 * 越来越像代码重构，不过是dex的类方法及字段的重命名
 * 注意事项
 * 1.类名重命名只考虑直接继承，最简单，
 * 2.字段连进程都复用考虑，因为字段不能重写
 * 3.方法最为麻烦，需要考虑
 *   1.方法名冲突(准确来说是方法签名冲突)
 *   2.改动任一方法名都应该同步
 */
public class RewriterClassData implements Comparable<RewriterClassData>{

	public boolean shrink(){
		if( fieldDatas != null){
			shrinkFieldData(fieldDatas);
		}
		if( methodDataMap != null){
			shrinkMethodData(methodDataMap);
		}
		return false;
	}

	private void shrinkFieldData(Map<String, FieldData> rewriterClassDataMap){
		Set<String> removeKeys = new HashSet<>();
		for ( Map.Entry<String, FieldData> entry : rewriterClassDataMap.entrySet() ){
			FieldData fieldData  = entry.getValue();
			if ( fieldData.notChange() ){
				removeKeys.add(entry.getKey());
			}
		}

		//移除
		for ( String key : removeKeys ){
			rewriterClassDataMap.remove(key);
		}
	}
	private void shrinkMethodData(Map<String, MethodData> rewriterClassDataMap){
		Set<String> removeKeys = new HashSet<>();
		for ( Map.Entry<String, MethodData> entry : rewriterClassDataMap.entrySet() ){
			MethodData methodData  = entry.getValue();
			if ( methodData.notChange() ){
				removeKeys.add(entry.getKey());
			}
		}

		//移除
		for ( String key : removeKeys ){
			rewriterClassDataMap.remove(key);
		}
	}

	/**
	 * sets | gets
	 */
	public void setConfusevt(String confusevt){
		this.confusevt = confusevt;
	}
	public String getConfusevt(){
		return confusevt;
	}
	public void setRenamed(String renamed){
		this.renamed = renamed;
	}
	public String getRenamed(){
		return renamed;
	}
	@Override
	public int compareTo(RewriterClassData o){
		return renamed.compareTo(o.renamed);
	}
	@Override
	public String toString(){
		StringBuilder  sb = new StringBuilder(confusevt + " -> " + renamed);

		if ( fieldDatas != null ){
			List<RewriterClassData.FieldData> fields = new ArrayList<FieldData>(this.fieldDatas.values());
			Collections.sort(fields);
			for ( FieldData fieldData :  fields){
				sb.append("\n");
				sb.append("\t");
				sb.append(fieldData);
			}
		}
		if ( this.methodDataMap != null ){
			List<MethodData> methods = new ArrayList<MethodData>(this.methodDataMap.values());
			Collections.sort(methods);
			for ( MethodData methodData : methods ){
				sb.append("\n");
				sb.append("\t");
				sb.append(methodData);
			}
		}

		return sb.toString();
	}

	//混淆的类名
	private String confusevt;
	//原始的类名
	private String renamed;

	//类的字段
	private Map<String, FieldData> fieldDatas;
	//类的方法
	private Map<String, MethodData> methodDataMap;
	

	//public RewriterClassData(){}

	public RewriterClassData(String confusevt, String renamed){
		this.confusevt = confusevt;
		this.renamed = renamed;
	}

	//类名相同且没有字段及方法
	public boolean notChange(){
		return notChangeClassName() 
			&& !hasFieldData()
			&& !hasMethodData();
	}

	public boolean notChangeClassName(){
		return this.confusevt.equals(this.renamed);
	}

	public Map<String, FieldData> getFieldDatas(){
		return fieldDatas;
	}
	public Map<String, MethodData> getMethodDataMap(){
		return methodDataMap;
	}

	public FieldData getFieldData(String name){
		if ( fieldDatas == null ){
			return null;
		}
		return fieldDatas.get(name);
	}
	public FieldData removeFieldData(String name){
		if ( fieldDatas == null ){
			return null;
		}
		return fieldDatas.remove(name);
	}
	
	public MethodData getMethodData(String methodSignature){
		if ( methodDataMap == null ){
			return null;
		}
		return methodDataMap.get(methodSignature);
	}

	public void addField(String confusevt, String renamed){
		if ( fieldDatas == null ){
			fieldDatas = new HashMap<>();
		}
		if ( !fieldDatas.containsKey(confusevt) ){
			fieldDatas.put(confusevt, new FieldData(confusevt, renamed));
		}
	}

	public boolean hasMethodData(){
		return this.methodDataMap != null 
			&& !this.methodDataMap.isEmpty();
	}
	public boolean hasFieldData(){
		return fieldDatas != null 
			&& !fieldDatas.isEmpty();
	}

	public MethodData removeMethodData(MethodData methodData){
		if ( methodData == null ) return null;
		if ( this.methodDataMap == null ){
			return null;
		}
		String methodSignature = methodData.getMethodSignature();
		return this.methodDataMap.remove(methodSignature);
	}
	public MethodData addMethodData(MethodData methodData){
		if ( methodData == null ) return null;

		if ( this.methodDataMap == null ){
			this.methodDataMap = new HashMap<>();
		}

		//待添加方法签名
		String methodSignature = methodData.getMethodSignature();
		MethodData methodDataCache = this.methodDataMap.get(methodSignature);

		if ( methodDataCache != null ){
			return methodDataCache;
		}
		//key: 重命名后的签名 ，value:MethodData
		methodDataMap.put(methodSignature, methodData);

		return methodData;
	}

	public MethodData addMethodData(String confusevt, String parameters, String renamed){
		if ( this.methodDataMap == null ){
			this.methodDataMap = new HashMap<>();
		}
		//方法参数签名
		String methodParametersSignature = getMethodParametersSignature(parameters);
		RewriterClassData.MethodData methodData = methodDataMap.get(methodParametersSignature);
		if ( methodData == null ){
			methodData = new MethodData(confusevt, methodParametersSignature, renamed);
			return addMethodData(methodData);
		}
		//添加失败
		return null;
	}

	public static String getMethodParametersSignature(String parameters){
		String methodParametersSignature;
		if ( parameters == null || parameters.length() == 0 ){
			methodParametersSignature = "()";
		}
		else if ( parameters.charAt(0) == '(' && parameters.charAt(parameters.length() - 1) == ')' ){
			//smali样式
			methodParametersSignature = parameters;
		}
		else{
			//r8等mapping.txt样式
			StringBuilder parameterTypeSb = new StringBuilder("(");
			for ( String type : parameters.split(",") ){
				int baseTypeEnd = type.indexOf('[');
				String baseType;
				if ( baseTypeEnd < 0 ){
					baseType = getWrapper(type);
				}
				else{
					baseType = getWrapper(type.substring(0, baseTypeEnd));
					//数组前缀
					baseType = type.substring(baseTypeEnd).replace("[]", "[") + baseType;
				}
				parameterTypeSb.append(baseType);
			}
			parameterTypeSb.append(')');

			methodParametersSignature = parameterTypeSb.toString();
		}
		return methodParametersSignature;
	}


	/*
	 V-void，Z-boolean，B-byte C-char，
	 S-short，I-int J-long，F-float，D-double
	 */
	public static String getWrapper(String type){
		switch ( type ){
			case "boolean":
				return "Z";
			case "byte":
				return "B";
			case "char":
				return "C";
			case "short":
				return "S";
			case "int":
				return "I";
			case "long":
				return "J";
			case "float":
				return "F";
			case "double":
				return "D";
			default:
				return "L" + type.replace('.', '/') + ";";
		}
	}
	//字段数据
	public static class FieldData implements Comparable<FieldData>{
		//混淆的字段名
		public String confusevt;
		//原始的字段名
		public String renamed;

		public FieldData(String confusevt, String renamed){
			this.confusevt = confusevt;
			this.renamed = renamed;
		}

		public boolean notChange(){
			return this.confusevt.equals(this.renamed);
		}

		@Override
		public String toString(){
			return confusevt + " -> " + renamed;
		}

		@Override
		public int compareTo(FieldData o){
			return renamed.compareTo(o.renamed);
		}

	}

	/*
	 * 因虚方法可以继承方法签名不可冲突
	 * 当前类最终方法签名
	 * 1.此类所有的方法签名，包括父类的虚方法(即继承的方法)
	 * 2.此类重命名后的方法签名，重命名前应当移除
	 */
	//方法数据
	public static class MethodData implements Comparable<MethodData>{
		public boolean isVirtual;

		//混淆的方法名[重命前的方法名]
		public final String confusevt;
		//原始的方法名[重命名后的方法名]
		public String renamed;

		//方法签名，作为key不能变
		private final String methodSignature;

		private final String parametersSignature;

		public MethodData(String confusevt, String parametersSignature, String renamed){
			this.confusevt = confusevt;
			this.parametersSignature = parametersSignature;
			this.renamed = renamed;
			
			this.methodSignature = updateMethodSignature();
			
		}

		private String updateMethodSignature() {
			return this.confusevt + this.parametersSignature;
		}

		public String getMethodSignature() {
			return this.methodSignature;
		}

		/*public void setParametersSignature(String parametersSignature) {
			this.parametersSignature = parametersSignature;
			this.methodSignature = updateMethodSignature();
		}*/

		public String getParametersSignature() {
			return this.parametersSignature;
		}

		public boolean notChange(){
			return this.confusevt.equals(this.renamed);
		}

		@Override
		public boolean equals(Object obj){
			if ( obj instanceof MethodData ){
				MethodData o2 = (MethodData)obj;
				return o2.equals(this.methodSignature);
			}
			return super.equals(obj);
		}
		
		@Override
		public String toString(){
			return this.methodSignature + " -> " + this.renamed;
		}
		/**
		 * 重命名后的方法签名
		 */
		public String getRenamedMethodSignature(){
			return this.renamed + this.parametersSignature;
		}
		
		@Override
		public int compareTo(MethodData o){
			return this.getRenamedMethodSignature().compareTo(o.getRenamedMethodSignature());
		}
	}
}
