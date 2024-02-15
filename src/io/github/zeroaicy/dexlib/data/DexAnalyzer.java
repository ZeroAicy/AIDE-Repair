package io.github.zeroaicy.dexlib.data;

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.iface.MultiDexContainer;
import java.util.ArrayList;
import io.github.zeroaicy.dexlib.data.MappingData;
import java.util.Map;
import java.util.HashMap;
import org.jf.dexlib2.iface.Method;
import io.github.zeroaicy.dexlib.data.ClassData;
import io.github.zeroaicy.dexlib.data.MethodData;

public class DexAnalyzer{

	MultiDexContainer<? extends DexFile> dexContainer;
	MappingData mapping;

	private final boolean androidSdkDex;
	public DexAnalyzer(MultiDexContainer<? extends DexFile> dexContainer, MappingData mapping) throws IOException{
		this(dexContainer, mapping, false);
	}
	
	public DexAnalyzer(MultiDexContainer<? extends DexFile> dexContainer, MappingData mapping, boolean androidSdkDex) throws IOException{
		this.dexContainer = dexContainer;
		this.mapping = mapping;
		this.androidSdkDex = false;
		init();
	}
	
	
	/**
	 * 根据类签名查找ClassDef
	 */
	private final Map<String, ClassDef> typeClassDefMap = new HashMap<>();
	public ClassDef getClassDef(String type){
		return typeClassDefMap.get(type);
	}
	
	
	/**
	 * 初始化
	 */
	private void init() throws IOException{
		List<String> dexEntryNames = new ArrayList<>();
		dexEntryNames.addAll(dexContainer.getDexEntryNames());
		//排序
		Collections.sort(dexEntryNames);

		for ( String dexEntryName : dexEntryNames ){
			DexFile inputDexFile = dexContainer.getEntry(dexEntryName).getDexFile();
			//遍历dex中所有ClassDef，构建查询
			for ( ClassDef classDef : inputDexFile.getClasses() ){
				String type = classDef.getType();
				if ( !typeClassDefMap.containsKey(type) ){
					typeClassDefMap.put(type, classDef);
				}
			}
		}

		// 填充 MappingData中的方法
		for ( ClassDef classDef : typeClassDefMap.values() ){
			//填充类属性[父类，接口，方法]
			fullClassData(classDef);
		}
	}

	/**
	 * 填充类
	 */
	private ClassData fullClassData(String classType){
		return fullClassData(getClassDef(classType));
	}
	/**
	 * 填充类
	 */
	private ClassData fullClassData(ClassDef classDef){
		ClassData classData = this.mapping.addClassData(classDef.getType());
		//已填充
		if ( classData.isFulled() ){
			return classData;
		}
		
		//directMethod不会继承
		for ( Method directMethod : classDef.getDirectMethods() ){
			putDirectMethodData(classData, directMethod);
		}
		
		List<ClassData> parentClassDatas = new ArrayList<>();
		//父类
		ClassData superClassData = fullClassData(classDef.getSuperclass());
		parentClassDatas.add(superClassData);
		
		//接口
		for ( String interfaceType : classDef.getInterfaces() ){
			parentClassDatas.add(fullClassData(interfaceType));
		}

		//虚方法，需要考虑继承
		//需要复用父类的，并把相同的方法与父类中的统一
		//如果父类不存在则直接用接口的
		//但是需要把接口间相同的方法统一
		//填充虚方法，若复用父类的MethodData则对父类和接口的MethodData统一
		for ( Method virtualMethod : classDef.getVirtualMethods() ){
			
			String methodSignature = getMethodSignature(virtualMethod, true);
			//查找所有有此方法签名的类
			//查找可以复用的MethodData(finaled)优先
			for ( ClassData parentClassData : parentClassDatas ){
				parentClassData.containsMethodData(methodSignature);
			}
			
			MethodData oldMethodData = null;
			for ( ClassData parentClassData : parentClassDatas ){
				if ( oldMethodData == null ){
					if ( parentClassData.containsMethodData(methodSignature) ){
						//复用parentClassData的MethodData
						oldMethodData = parentClassData.getMethodData(methodSignature);
						//此parentClassData不用处理
						continue;
					}
				}else{
					//此时oldMethodData不为null，可以尝试统一MethodData
					unifyVirtualMethod(parentClassData, oldMethodData);
				}
			}
		}

		//classData必然引用了父类中的某些方法
		for ( ClassData parentClassData : parentClassDatas ){
			parentClassData.addSubClassData(classData);
		}

		return classData;
	}
	
	/**
	 * 统一虚拟方法
	 */
	private void unifyVirtualMethod(ClassData parentClassData, MethodData oldMethodData){
		parentClassData.unifyVirtualMethod(oldMethodData);
	}
	
	/*
	 * 向类添加Direct方法
	 */
	private void putDirectMethodData(ClassData classData, Method directMethod){
		MethodData methodData = new MethodData(directMethod.getName(), getMethodParameters(directMethod), false);
		classData.addMethodData(methodData);

	}
	
	
	
	/*
	 * 计算方法签名
	 */
	public static String getMethodSignature(Method method, boolean virtualMethod){
		StringBuilder methodSignature = new StringBuilder("(");
		for ( CharSequence parameterType : method.getParameterTypes() ){
			methodSignature.append(parameterType);
		}
		methodSignature.append(")");
		methodSignature.append(virtualMethod);

		return method.getName() + methodSignature.toString();
	}
	/*
	 * 计算方法参数签名
	 */
	public static String getMethodParameters(Method method){
		StringBuilder methodSignature = new StringBuilder("(");
		for ( CharSequence parameterType : method.getParameterTypes() ){
			methodSignature.append(parameterType);
		}
		methodSignature.append(")");

		return methodSignature.toString();
	}
}
