
package io.github.zeroaicy.dexlib.data;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ClassData implements Parcelable{
	//起到一个上下文的作用
	MappingData mappingData;

	/**
	 * 此ClassData是否是最终的不可变的
	 */
	protected final boolean finaled;
	//是否已填充
	private boolean filled;
	/**
	 * 类全称(class签名形式[JNI])
	 */
	protected final String classSignature;
	protected String classSignatureRename;

	//因为要先解析配置文文件
	//以此以下变量必须可以动态设置
	protected ClassData superclass;
	protected List<ClassData> interfaceClassDatas;

	protected Set<ClassData> subClassDatas = new HashSet<>();
	protected Map<String, MethodData> methodDataMap;

	protected ClassData(String classSignature, boolean finaled){
		this.classSignature = classSignature;
		this.finaled = finaled;
	}

	protected ClassData(String classSignature){
		this.classSignature = classSignature;
		this.finaled = false;
	}

	protected ClassData(String classSignature, String classSignatureRename){
		this.classSignature = classSignature;
		this.classSignatureRename = classSignatureRename;
		this.finaled = false;
	}

	protected ClassData(String classSignature, ClassData superclass, List<ClassData> interfaceClassDatas){
		this(classSignature, classSignature, superclass, interfaceClassDatas);
	}

	protected ClassData(String classSignature, String classSignatureRename, ClassData superclass, List<ClassData> interfaceClassDatas){
		this.classSignature = classSignature;
		this.classSignatureRename = classSignatureRename;

		this.superclass = superclass;
		this.interfaceClassDatas = interfaceClassDatas;
		this.finaled = false;
	}


	public void unifyVirtualMethod(MethodData oldMethodData){
		//finaled类不可修改
		String methodDataSignature = oldMethodData.getMethodDataSignature();
		//不是虚方法
		if ( !oldMethodData.isVirtual()
		//没有此方法
			|| !containsMethodData(methodDataSignature) ){
			//不用统一
			return;
		}

		//更新子类及父类，更新自己的子类，分开更新会导致死循环
		//找出除了Object的父节点后在递归更新
		Set<ClassData> parentClassDatas = new HashSet<>();
		findTopParentClassDatas(parentClassDatas, this);

		for ( ClassData parentClassData : parentClassDatas ){
			unifyVirtualMethod(parentClassData, oldMethodData);
		}
	}

	private void unifyVirtualMethod(ClassData classData, MethodData oldMethodData){
		String methodDataSignature = oldMethodData.getMethodDataSignature();
		if ( classData.containsMethodData(methodDataSignature) ){
			classData.addMethodData(oldMethodData);
			return;
		}
		for ( ClassData subClassData : classData.subClassDatas ){
			unifyVirtualMethod(subClassData, oldMethodData);
		}
	}

	public static void findTopParentClassDatas(Set<ClassData> parentClassDatas, ClassData classData){
		if ( classData != null 
			|| "Ljava/lang/Object;".equals(classData.classSignature) ){
			//自己就是Object
			return;
		}
		//父类是"Ljava/lang/Object;"
		ClassData superclass = classData.getSuperclass();
		if ( "Ljava/lang/Object;".equals(superclass.classSignature) ){
			parentClassDatas.add(classData);
		}
		else{
			//从父类查找
			findTopParentClassDatas(parentClassDatas, superclass);
			//从接口查找
			for ( ClassData interfaceClassData : classData.getInterfaceClassDatas() ){
				findTopParentClassDatas(parentClassDatas, interfaceClassData);
			}
		}

	}

	public void addSubClassData(ClassData classData){
		//添加引用此类的直接子类
		this.subClassDatas.add(classData);
	}

	public void setFilled(boolean filled){
		this.filled = filled;
	}
	public boolean isFulled(){
		return this.filled;
	}

	public void setClassSignatureRename(String classSignatureRename){
		this.classSignatureRename = classSignatureRename;
	}

	public String getClassSignatureRename(){
		return classSignatureRename;
	}

	public void setSuperclass(ClassData superclass){
		this.superclass = superclass;
	}
	public ClassData getSuperclass(){
		return superclass;
	}

	public void setInterfaceClassDatas(List<ClassData> interfaceClassDatas){
		this.interfaceClassDatas = interfaceClassDatas;
	}

	public List<ClassData> getInterfaceClassDatas(){
		if ( this.interfaceClassDatas == null ){
			return Collections.emptyList();
		}
		return this.interfaceClassDatas;
	}
	public void addField(String original, String confusevt){

	}

	public void addMethodData(String original, String parameterTypes, String confusevt){
		checkMethodDataMap();
		//addMethodData(new MethodData(original, parameterTypes, confusevt));
	}

	public MethodData addMethodData(MethodData methodData){
		checkMethodDataMap();

		//向上查询，并复用
		return methodData;
	}

	/*
	 * 
	 */
	public Map<String, MethodData> getMethodDataMap(){
		return methodDataMap;
	}

	public boolean containsMethodData(String methodSignature){

		boolean isVirtual = methodSignature.endsWith("true");
		if ( isVirtual ){

			if ( this.methodDataMap != null 
				&& this.methodDataMap.containsKey(methodSignature) ){
				return true;
			}
			
			// 当前类没找到，查询父类及接口
			ClassData superclass = getSuperclass();
			if ( superclass != null && superclass.containsMethodData(methodSignature) ){
				return true;
			}

			for ( ClassData interfaceClassData : getInterfaceClassDatas() ){
				if ( interfaceClassData != null && interfaceClassData.containsMethodData(methodSignature) ){
					return true;
				}
			}
		}
		else{
			if ( this.methodDataMap == null ){
				return false;
			}
			return this.methodDataMap.containsKey(methodSignature);
		}

		ClassData superclass;

		if ( this.methodDataMap == null ){

			superclass = getSuperclass();
			return superclass != null 
				&& superclass.containsMethodData(methodSignature);
		}

		if ( this.methodDataMap.containsKey(methodSignature) ){
			return true;
		}

		//非虚方法
		if ( methodSignature.endsWith("false") ){
			return false;
		}

		superclass = getSuperclass();
		return superclass != null 
			&& superclass.containsMethodData(methodSignature);
	}

	public MethodData getMethodData(String methodSignature){
		if ( this.methodDataMap == null ){
			return null;
		}
		return this.methodDataMap.get(methodSignature);
	}

	private void checkMethodDataMap(){
		if ( this.methodDataMap == null ){
			this.methodDataMap = new HashMap<>();
		}
	}



	public static final Parcelable.Creator<ClassData> CREATOR = new Parcelable.Creator<ClassData>(){

		@Override
		public ClassData createFromParcel(Parcel source){
			//每一个ClassData都会优先写入MappingData
			int mappingDataFlag = source.readInt();

			String classSignature = source.readString();
			boolean finaled = source.readBoolean();

			MappingData mappingData = MappingData.getMappingData(mappingDataFlag);
			return mappingData.addClassData(classSignature, finaled);
		}

		@Override
		public ClassData[] newArray(int size){
			return new ClassData[size];
		}
	};

	public static final ClassLoader classLoader = ClassData.class.getClassLoader();

	/**
	 * 序列化
	 */
	private int version = 0x10;

	@Override
	public int describeContents(){
		return version;
	}
	@Override
	public void writeToParcel(Parcel dest, int flags){

		//写入最终标志
		dest.writeBoolean(this.finaled);
		//写入填充标志
		dest.writeBoolean(this.filled);
		//写入类签名
		dest.writeString(this.classSignature);
		//
		if ( !this.finaled ){
			//非最终的才写入
			dest.writeString(this.classSignatureRename);
		}
		//写入父类
		dest.writeParcelable(this.superclass, flags);

		dest.writeList(this.interfaceClassDatas);
	}


	private ClassData(Parcel source){

		this.classSignature = source.readString();
		this.finaled = source.readBoolean();

		this.filled = source.readBoolean();
		if ( !this.finaled ){
			this.classSignatureRename = source.readString();
		}
		//父类
		this.superclass = source.readParcelable(classLoader);
		//接口
		this.interfaceClassDatas = (List<ClassData>)source.readArrayList(classLoader);
	}

}
