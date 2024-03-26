package io.github.zeroaicy.dexlib.analysis;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jf.dexlib2.AccessFlags;
import org.jf.dexlib2.Opcode;
import org.jf.dexlib2.ReferenceType;
import org.jf.dexlib2.ValueType;
import org.jf.dexlib2.iface.Annotation;
import org.jf.dexlib2.iface.AnnotationElement;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.iface.Method;
import org.jf.dexlib2.iface.MultiDexContainer;
import org.jf.dexlib2.iface.instruction.Instruction;
import org.jf.dexlib2.iface.instruction.ReferenceInstruction;
import org.jf.dexlib2.iface.instruction.formats.Instruction21c;
import org.jf.dexlib2.iface.reference.FieldReference;
import org.jf.dexlib2.iface.reference.StringReference;
import org.jf.dexlib2.iface.reference.TypeReference;
import org.jf.dexlib2.iface.value.MethodEncodedValue;
import org.jf.dexlib2.iface.value.TypeEncodedValue;
import io.github.zeroaicy.dexlib.analysis.RewriterClassData.MethodData;

//DexFile分析器，用于构造出DexFile一些信息

//方便查询
public class DexFileAnalyzer{

	//DexFile容器
	final MultiDexContainer<? extends DexFile> dexContainer;

	//mapping.txt规则文件
	protected final RevertMappingData revertMappingData;

	//已排序的dex名称，类加载有优先级
	final List<String> dexEntryNames = new ArrayList<>();

	//所有dex的ClassDef[过滤同名ClassDef]
	// 类签名与ClassDef，并过滤同名ClassDef
	protected final Map<String, ClassDef> typeClassDefMap = new HashMap<>();

	//启用修复分析[aidl类和枚举]
	private final boolean repairAnalysis;
	// 类签名 与 方法签名对应关系
	protected final Map<String, Set<String>> classMethods = new HashMap<>();

	public DexFileAnalyzer(MultiDexContainer<? extends DexFile> dexContainer) throws IOException{
		this(dexContainer, false);
	}

	private DexFileAnalyzer(MultiDexContainer<? extends DexFile> dexContainer, boolean repairAnalysis) throws IOException{
		this(dexContainer, new RevertMappingData(), repairAnalysis);
	}

	public DexFileAnalyzer(MultiDexContainer<? extends DexFile> dexContainer, RevertMappingData revertMapping) throws IOException{
		this(dexContainer, revertMapping, false);
	}

	/**
	 * dexContainer dex容器
	 * revertMapping 规则文件
	 * 启用修复分析repairAnalysis
	 */
	public DexFileAnalyzer(MultiDexContainer<? extends DexFile> dexContainer, RevertMappingData revertMapping, boolean repairAnalysis) throws IOException{
		this.dexContainer = dexContainer;
		this.revertMappingData = revertMapping;

		if ( this.revertMappingData.isContrary() ){
			//反转模式不启用修复分析
			this.repairAnalysis = false;
		}else{
			this.repairAnalysis = repairAnalysis;	
		}

		this.dexEntryNames.addAll(dexContainer.getDexEntryNames());
		//排序
		Collections.sort(this.dexEntryNames);

		//初始化
		init();
	}

	public boolean isRepairAnalysis(){
		return repairAnalysis;
	}


	/*
	 * 初始化
	 * 1.查找直接子类
	 * 2.类的虚拟方法签名
	 */
	private void init() throws IOException{
		//分析并提取信息

		//遍历所有dex
		for ( String dexEntryName : this.dexEntryNames ){

			DexFile dexBackedOdexFile = dexContainer.getEntry(dexEntryName).getDexFile();

			//遍历dex中所有ClassDef
			for ( ClassDef classDef : dexBackedOdexFile.getClasses() ){
				//添加类的子类信息
				putChildClass(classDef.getSuperclass(), classDef);

				//添加此类的虚方法
				putMethodSignature(this.typeVirtualMethodSignatureMap, classDef.getType(), classDef.getVirtualMethods());

				//添加接口的子类
				for ( String interfaceType : classDef.getInterfaces() ){
					putChildClass(interfaceType, classDef);
				}

				//通过类签名查找ClassDef
				String classDefType = classDef.getType();
				//过滤类名重复的ClassDef
				if ( !typeClassDefMap.containsKey(classDefType) ){
					typeClassDefMap.put(classDefType, classDef);
				}

				fillClassMethods(classDef);
			}
		}

		checkRevertMappingData();
	}

	private void checkRevertMappingData(){
		Map<String, RewriterClassData> rewriterClassDataMap = getRevertMappingData().getRewriterClassDataMap();
		for ( Map.Entry<String, RewriterClassData> entry : rewriterClassDataMap.entrySet() ){
			RewriterClassData rewriterClassData = entry.getValue();

			String confusevt = rewriterClassData.getConfusevt();

			String renamed = rewriterClassData.getRenamed();

			// 有无重名成已有的类
			if ( this.classMethods.containsKey(renamed) ){

				RewriterClassData rewriterClassData2 = rewriterClassDataMap.get(renamed);
				// 不存在，冲突类名的重写规则或规则未改变名称
				if ( !confusevt.equals(renamed) && 
					(rewriterClassData2 == null 
					|| renamed.equals(rewriterClassData2.getRenamed())) ){
					System.out.println(String.format("警告⚠️:  %s将重命名为%s，但dex中已存在", confusevt, renamed));					
				}
			}


			// 当前类的所有方法签名
			Set<String> methods = classMethods.get(confusevt);
			if ( methods == null ){
				continue;
			}

			// 方法规则
			Map<String, RewriterClassData.MethodData> methodDataMap = rewriterClassData.getMethodDataMap();
			if ( methodDataMap == null ){
				continue;
			}

			for ( Map.Entry<String, RewriterClassData.MethodData> entry2 : methodDataMap.entrySet() ){
				RewriterClassData.MethodData methodData = entry2.getValue();
				String renamedMethodSignature = methodData.getRenamedMethodSignature();
				if ( methods.contains(renamedMethodSignature) ){
					//存在方法名冲突
					RewriterClassData.MethodData methodData2 = methodDataMap.get(renamedMethodSignature);
					// 不存在冲突方法名的重写规则或规则未改变名称
					if ( methodData2 == null || renamedMethodSignature.equals(methodData2.getRenamedMethodSignature()) ){
						System.out.println(String.format("警告⚠️: 类%s方法%s将重命名为%s，但已存在", confusevt, methodData.methodSignature, renamedMethodSignature));					
					}
				}
			}

		}
	}

	private void fillClassMethods(ClassDef classDef){
		//添加此类的虚方法
		putMethodSignature(this.classMethods, classDef.getType(), classDef.getVirtualMethods());
		// 私有方法
		putMethodSignature(this.classMethods, classDef.getType(), classDef.getDirectMethods());
		//System.out.println(this.classMethods.get(classDef.getType()));
	}
	/**
	 * 用于查找类的所有子类签名，返回Set，
	 */
	private final Map<String, Set<String>> childClassSetMap = new HashMap<>();
	public Map<String, Set<String>> getChildClassSetMap(){
		return this.childClassSetMap;
	}
	/*
	 * 添加类的子类信息(直接的而非间接的)
	 *
	 */
	public void putChildClass(String superclassType, ClassDef childClassDef){
		Set<String> childClassSet = childClassSetMap.get(superclassType);
		if ( childClassSet == null ){
			childClassSet = new HashSet<>();
			childClassSetMap.put(superclassType, childClassSet);
		}
		childClassSet.add(childClassDef.getType());
	}


	/*
	 * set
	 * get
	 */
	//重写规则数据
	public RevertMappingData getRevertMappingData(){
		return revertMappingData;
	}
	//封装revertMapping的api
	public RewriterClassData getRewriterClassData(String className){
		return revertMappingData.getRewriterClassData(className);
	}
	public RewriterClassData addRewriterClassData(String confusevt, String original){
		return revertMappingData.addRewriterClassData(confusevt, original);
	}


	/**
	 * DexFileAnalyzer分析后产生的数据
	 */

	//类原始的虚拟方法签名
	private final Map<String, Set<String>> typeVirtualMethodSignatureMap = new HashMap<>();
	/*
	 * 添加类的方法签名
	 */
	private static void putMethodSignature(Map<String, Set<String>> typeMethodsMap, String type, Iterable<? extends Method> methods){
		Set<String> methodSignatureSet = typeMethodsMap.get(type);

		if ( methodSignatureSet == null ){
			methodSignatureSet = new HashSet<>();
			typeMethodsMap.put(type, methodSignatureSet);
		}
		for ( Method virtualMethod : methods ){
			methodSignatureSet.add(getMethodSignature(virtualMethod));
		}
	}





	/*
	 * 分析并统一父子类的虚方法(即继承的方法)
	 * 重新此方法，根据是否需要统一父类，子类的虚方法
	 * 而决定super.analysis()顺序
	 */
	public void analysis(){
		//缺省规则的实现，统一父类，子类虚方法重命名
		unifyVirtualMethodName();

		if ( repairAnalysis ){
			//修复aidl类
			repairAIDL();
		}
		//内部类跟随最后处理
		//实现内部类跟随外部类
		followExternalClasses();

		//包名重命名必须要所有规则之后且不覆盖之前的规则
		revertPackageName();
		//必须在包名后
		if ( repairAnalysis ){
			//修复枚举类字段
			for ( ClassDef classDef : typeClassDefMap.values() ){
				//修改的是字段，不受followExternalClasses影响
				repairEnum(classDef);
				//收集classDef这个内部类的外部类信息
				repairLdalviMemberClassesAnnotation(classDef);
			}
		}

		//移除无效或未修改的RewriterClassData
		shrink();
	}

	protected void shrink(){
		List<RewriterClassData> rewriterClassDataList = new ArrayList<RewriterClassData>(getRevertMappingData().getRewriterClassDataMap().values());
		for ( RewriterClassData rewriterClassData : rewriterClassDataList ){
			shrink(rewriterClassData);
		}
	}
	protected void shrink(RewriterClassData rewriterClassData){
		if ( rewriterClassData != null 
			&& rewriterClassData.notChange() ){
			//空的移除
			getRevertMappingData().getRewriterClassDataMap().remove(rewriterClassData.getConfusevt());
		}
	}

	//内部类跟随最后处理
	protected void followExternalClasses(){
		// 遍历全部类并跟随外部类重命名
		for ( ClassDef classDef : typeClassDefMap.values() ){
			followExternalClasses(classDef);
		}
	}
	/*
	 * 外部类重命名，内部类跟随
	 */
	private void followExternalClasses(ClassDef classDef){
		String classDefType = classDef.getType();
		//外部类的endIndex
		int externalClassEnd = classDefType.indexOf('/');
		if ( externalClassEnd < 0 ){
			externalClassEnd = 0;
		}
		//外部类名称
		String externalClassName = classDefType;
		RewriterClassData externalRewriterClassData = null;

		while ( externalRewriterClassData == null 
		//看看有没有$
			   && (externalClassEnd = externalClassName.lastIndexOf('$')) > 0 ){
			//是一个内部类，查找外部类
			externalClassName = externalClassName.substring(0, externalClassEnd);
			externalRewriterClassData = getRewriterClassData(externalClassName + ";");
		}

		if ( externalRewriterClassData != null ){
			String externalClassNameNow = externalRewriterClassData.getRenamed();
			//外部类现在的名称
			externalClassNameNow = externalClassNameNow.substring(0, externalClassNameNow.length() - 1);
			//此类的现在名称
			String typeNow = externalClassNameNow + classDefType.substring(externalClassEnd);
			addRewriterClassData(classDefType, typeNow);
		}
	}
	private void revertPackageName(){
		Map<String, RewriterPackageNameData> rewriterPackageDataMap = revertMappingData.getRewriterPackageDataMap();

		//遍历所有类
		for ( ClassDef classDef : typeClassDefMap.values() ){
			revertPackageName(classDef, rewriterPackageDataMap);
		}
	}

	private void revertPackageName(ClassDef classDef, Map<String, RewriterPackageNameData> rewriterPackageDataMap){
		String classDefType = classDef.getType();

		for ( String packageConfusevt : rewriterPackageDataMap.keySet() ){

			if ( !classDefType.startsWith(packageConfusevt) ){
				//不匹配
				continue;
			}

			RewriterPackageNameData rewriterPackageNameData = rewriterPackageDataMap.get(packageConfusevt);
			//是否匹配子包
			if ( !rewriterPackageNameData.isReAll 
				&& classDefType.indexOf('/', packageConfusevt.length() + 1) >= 0 ){
				//不匹配子包
				continue;
			}

			String classDefTypeRenamed = rewriterPackageNameData.packageNameRenamed + classDefType.substring(packageConfusevt.length());
			//只有没有类重命名规则才修改
			if ( getRewriterClassData(classDefType) == null ){
				//替换
				addRewriterClassData(classDefType, classDefTypeRenamed);
			}
		}
	}

	//MemberClasses注解
	private Map<String, Set<String>> memberClassesAnnotationSetMap = new HashMap<>();
	public Set<String> getMemberClassesAnnotationSet(String enclosingClass){
		Set<String> memberClassesAnnotationSet = memberClassesAnnotationSetMap.get(enclosingClass);
		if ( memberClassesAnnotationSet == null ){
			return Collections.emptySet();
		}
		return memberClassesAnnotationSet;
	}
	//添加内部类信息
	public void putMemberClassesAnnotation(String enclosingClass, String innerClassDefType){
		Set<String> memberClassesAnnotationSet = memberClassesAnnotationSetMap.get(enclosingClass);
		if ( memberClassesAnnotationSet == null ){
			memberClassesAnnotationSet = new HashSet<>();
			memberClassesAnnotationSetMap.put(enclosingClass, memberClassesAnnotationSet);
		}
		memberClassesAnnotationSet.add(innerClassDefType);
	}
	/**
	 * 修复类的内部类
	 */
	private void repairLdalviMemberClassesAnnotation(ClassDef classDef){
		for ( Annotation annotation : classDef.getAnnotations() ){
			String annotationType = annotation.getType();

			if ( "Ldalvik/annotation/EnclosingClass;".equals(annotationType) ){
				for ( final AnnotationElement annotationElement : annotation.getElements() ){
					if ( annotationElement == null ){
						continue;
					}
					//"内部类注解与当前类名(最小类名)统一
					if ( "value".equals(annotationElement.getName()) 
						&& (annotationElement.getValue().getValueType() == ValueType.TYPE) ){

						TypeEncodedValue typeEncodedValue = (TypeEncodedValue)annotationElement.getValue();
						putMemberClassesAnnotation(typeEncodedValue.getValue(), classDef.getType());
					}
				}
			}else if ( "Ldalvik/annotation/EnclosingMethod;".equals(annotationType) ){
				for ( final AnnotationElement annotationElement : annotation.getElements() ){
					if ( annotationElement == null ){
						continue;
					}
					//"内部类注解与当前类名(最小类名)统一
					if ( "value".equals(annotationElement.getName()) 
						&& (annotationElement.getValue().getValueType() == ValueType.METHOD) ){
						MethodEncodedValue methodEncodedValue = (MethodEncodedValue)annotationElement.getValue();
						putMemberClassesAnnotation(methodEncodedValue.getValue().getDefiningClass(), classDef.getType());
					}
				}
			}
		}
	}


	/*
	 * 检查标识符合法性
	 */
	public static boolean checkIdentifier(String str){  
        // 使用正则表达式判断字符串是否符合Java标识符的命名规则  
        return str.matches("[a-zA-Z_$][a-zA-Z\\d_$]*");  
    }

	/*
	 * 修复枚举字段
	 */
	private void repairEnum(ClassDef classDef){
		String classDefType = classDef.getType();
		if ( "Ljava/lang/Enum;".equals(classDef.getSuperclass()) ){
			//当前类是枚举
			for ( Method directMethod : classDef.getDirectMethods() ){
				if ( !"<clinit>".equals(directMethod.getName()) ){
					continue;
				}
				String enumFieldName = null;
				boolean lastNewInstanceFromEnum = false;
				for ( Instruction instruction : directMethod.getImplementation().getInstructions() ){
					Opcode opcode = instruction.getOpcode();
					if ( opcode == Opcode.NEW_INSTANCE ){
						Instruction21c instruction21c = (Instruction21c) instruction;
						TypeReference referenceType = (TypeReference)(instruction21c.getReference());
						if ( classDefType.equals(referenceType.getType()) ){
							lastNewInstanceFromEnum = true;
						}
					}
					if ( lastNewInstanceFromEnum 
						&& ReferenceType.STRING == opcode.referenceType 
						&& enumFieldName == null ){
						ReferenceInstruction referenceInstruction = (ReferenceInstruction)instruction;
						enumFieldName = ((StringReference) referenceInstruction.getReference()).getString();
						if ( !checkIdentifier(enumFieldName) ){
							//不是标识符，丢弃
							enumFieldName = null;
						}
						// const-string指令
						continue;
					}

					if ( opcode == Opcode.SPUT_OBJECT &&  enumFieldName != null ){
						//sput-object指令
						FieldReference fieldReference = (FieldReference) ((Instruction21c)instruction).getReference();
						String fieldDefiningClass = fieldReference.getDefiningClass();
						RewriterClassData fieldRewriterClassData = getRewriterClassData(fieldDefiningClass);
						if ( fieldRewriterClassData == null ){
							fieldRewriterClassData = addRewriterClassData(fieldDefiningClass, fieldDefiningClass);
						}
						fieldRewriterClassData.addField(fieldReference.getName(), enumFieldName);
						//已使用弃用并重置
						enumFieldName = null;
					}
				}
			}
		}
	}

	private void unifyVirtualMethodName(){
		//类重名规则
		Collection<RewriterClassData> values = revertMappingData.getRewriterClassDataMap().values();

		for ( RewriterClassData rewriterClassData : new ArrayList<RewriterClassData>(values) ){
			if ( !rewriterClassData.hasMethodData() ){
				//此类中没有方法重命名规则
				continue;
			}

			//类签名
			String classDefType = rewriterClassData.getConfusevt();

			//根据类签名获得ClassDef
			ClassDef classDef = getClassDef(classDefType);
			if ( classDef == null ){
				//可能是安卓sdk的类
				//此类在dex中不存在，无法计算
				continue;
			}

			// rewriterClassData需要同步虚拟方法 父类和自己的的子类
			Map<String, RewriterClassData.MethodData> virtualMethodDataMap = new HashMap<String, RewriterClassData.MethodData>();
			// 遍历虚方法，找出是虚方法的规则
			for ( Method virtualMethod : classDef.getVirtualMethods() ){
				String methodSignature = getMethodSignature(virtualMethod);
				RewriterClassData.MethodData virtualMethodData = rewriterClassData.getMethodData(methodSignature);
				//此虚方法有重命名规则
				if ( virtualMethodData != null ){
					//属于虚拟方法
					virtualMethodDataMap.put(virtualMethodData.methodSignature, virtualMethodData);
				}
			}

			//
			for ( String methodSignature : virtualMethodDataMap.keySet() ){
				//查找具有此签名方法的父类，并且最接近根节点的
				//递归查找
				Set<String> virtualMethodSignTypes = new HashSet<>();

				//查找父类中有此方法签名的类
				fillHasVirtualMethodType(classDefType, methodSignature, virtualMethodSignTypes);

				if ( virtualMethodSignTypes.isEmpty() ){
					continue;
				}

				//从这些类向下遍历
				for ( String virtualMethodSignType : virtualMethodSignTypes ){
					addChildClassMethodData(virtualMethodSignType, virtualMethodDataMap.get(methodSignature));
				}
			}
			//若虚方法与其它方法冲突，移除私有方法的修改
		}
	}

	/**
	 * 递归向子类添加
	 */
	private void addChildClassMethodData(String virtualMethodSignType, RewriterClassData.MethodData methodData){
		//为自己添加
		RewriterClassData virtualMethodSignTypeData = getRewriterClassData(virtualMethodSignType);
		if ( virtualMethodSignTypeData == null ){
			virtualMethodSignTypeData = addRewriterClassData(virtualMethodSignType, virtualMethodSignType);
		}
		virtualMethodSignTypeData.addMethodData(methodData);

		//查找子类
		Set<String> childClassSet = childClassSetMap.get(virtualMethodSignType);
		if ( childClassSet == null || childClassSet.isEmpty() ){
			return;
		}
		for ( String childClassType : childClassSet ){
			RewriterClassData childClassRewriterClassData = getRewriterClassData(childClassType);
			if ( childClassRewriterClassData == null ){
				childClassRewriterClassData = addRewriterClassData(childClassType, childClassType);
			}
			//为子类添加规则
			childClassRewriterClassData.addMethodData(methodData);
			//为子类的子类添加虚方法规则
			addChildClassMethodData(childClassType, methodData);
		}

	}

	//填充有虚拟方法签名的顶层类[父类和众多接口]
	public boolean fillHasVirtualMethodType(String type, String methodSignature, Set<String> virtualMethodSignTypes){
		boolean isAdded = false;
		//深度优先
		ClassDef classDef = getClassDef(type);
		if ( classDef == null ){
			//没有找到类
			return isAdded;
		}

		String superClassType = classDef.getSuperclass();
		//判断父类是否是Object超类
		if ( !"Ljava/lang/Object;".equals(superClassType) ){
			//查找父类
			isAdded |= fillHasVirtualMethodType(superClassType, methodSignature, virtualMethodSignTypes);
		}
		//查找接口
		for ( String interfaceType : classDef.getInterfaces() ){
			isAdded |= fillHasVirtualMethodType(interfaceType, methodSignature, virtualMethodSignTypes);

		}
		if ( !isAdded ){
			//只有自己的父类，和父接口没有找到才判断自己有没有
			Set<String> virtualMethodSignatureSet = typeVirtualMethodSignatureMap.get(type);
			if ( virtualMethodSignatureSet != null ){
				if ( virtualMethodSignatureSet.contains(methodSignature) ){
					virtualMethodSignTypes.add(type);
					isAdded = true;
				}
			}
		}

		return isAdded;
	}

	//修复aidl类结构
	//修复aidl生成的类
	// 继承 Landroid/os/Binder;的是 xxx$Stub
	// Stub构造器中第一个 const-string 或 const-string/jumbo指令的值为 Stub的外部类
	// 在Stub类注解 Ldalvik/annotation/MemberClasses;中有Stub$Proxy
	// 或者是继承 Stub外部类

	private void repairAIDL(){

		//测试
		for ( String classDefType : childClassSetMap.get("Landroid/os/Binder;") ){
			ClassDef classDef = getClassDef(classDefType);
			if ( classDef == null ){
				continue;
			}
			//接口就是父类，只有一个
			List<String> interfaces = classDef.getInterfaces();
			if ( interfaces.size() != 1 ){
				continue;
			}
			//Stub外部类
			String externalClassConfusevt = interfaces.get(0);
			String externalClassRenamed = null;

			//含有描述符的方法
			for ( Method directMethod : classDef.getDirectMethods() ){
				//无参构造器
				if ( "<init>".equals(directMethod.getName()) 
					&& directMethod.getParameterTypes().isEmpty() ){
					externalClassRenamed = getDescriptor(directMethod);
					break;
				}
			}
			for ( Method directMethod : classDef.getDirectMethods() ){
				//无参构造器
				List<? extends CharSequence> parameterTypes = null;
				if ( AccessFlags.STATIC.isSet(directMethod.getAccessFlags()) 
					&& externalClassConfusevt.equals(directMethod.getReturnType()) 
				//只能有一个参数
					&& (parameterTypes = directMethod.getParameterTypes()).size() == 1
				//必须是IBinder
					&& parameterTypes.contains("Landroid/os/IBinder;") ){
					//若构造器中找不到，asInterface也有但是会被混淆
					if ( externalClassRenamed == null ){
						externalClassRenamed = getDescriptor(directMethod);
					}
					String type = classDef.getType();
					RewriterClassData rewriterClassData = getRewriterClassData(type);
					if ( rewriterClassData == null ){
						rewriterClassData = addRewriterClassData(type, type);
					}
					//添加方法修改规则
					RewriterClassData.MethodData addMethodData = rewriterClassData.addMethodData(directMethod.getName(), "(Landroid/os/IBinder;)", "asInterface");
					//设置一个静态方法
					addMethodData.isVirtual = false;
					break;
				}
			}

			if ( externalClassRenamed == null ){
				continue;
			}
			//修复aidl接口名称
			RewriterClassData externalRewriterClassData = addRewriterClassData(externalClassConfusevt, externalClassRenamed);
			//强制覆盖original
			externalRewriterClassData.setRenamed(externalClassRenamed);

			//修复Stub
			String stubConfusevt = classDef.getType();
			//方便拼接$Sub$Proxy
			String stubOriginalPrefix = externalClassRenamed.substring(0, externalClassRenamed.length() - 1) + "$Sub";
			String stubRenamed = stubOriginalPrefix + ";";
			RewriterClassData stubRewriterClassData = addRewriterClassData(stubConfusevt, stubRenamed);
			//强制覆盖original
			stubRewriterClassData.setRenamed(stubRenamed);

			childClassSetMap.get(externalClassRenamed);

			//修复$Stub$Proxy

			//方便查询$Sub$Proxy
			String proxyPrefix = stubConfusevt.substring(0, stubConfusevt.length() - 1) + "$";
			//proxy当前类签名
			String proxyConfusevt = null;

			Set<String> childClassSet = childClassSetMap.get(externalClassConfusevt);
			if ( childClassSet != null ){
				for ( String proxyClassDefType : childClassSet ){
					ClassDef proxyClassDef = getClassDef(proxyClassDefType);
					if ( proxyClassDef == null ){
						continue;
					}
					String proxyType = proxyClassDef.getType();
					if ( proxyType.startsWith(proxyPrefix) ){
						proxyConfusevt = proxyType;
						break;
					}
				}
			}

			if ( proxyConfusevt != null ){
				String proxyRenamed = stubOriginalPrefix + "$Proxy;";

				RewriterClassData proxyRewriterClassData = addRewriterClassData(proxyConfusevt, proxyRenamed);
				//强制覆盖original
				proxyRewriterClassData.setRenamed(proxyRenamed);
			}
		}
	}

	// 类名 -> ClassDef，有类名相同时和类加载器逻辑一致
	// 已添加的优先
	public ClassDef getClassDef(String type){
		return typeClassDefMap.get(type);
	}

	/****静态方法****/

	//从RewriterClassData计算方法签名(不包含返回值类型)-> 方法名(参数签名)
	public static String getMethodSignature(Method method){
		return method.getName() + getParameterTypesSignature(method);
	}

	public static String getParameterTypesSignature(Method method){
		StringBuilder methodSignature = new StringBuilder("(");
		for ( CharSequence parameterType : method.getParameterTypes() ){
			methodSignature.append(parameterType);
		}
		methodSignature.append(")");
		return methodSignature.toString();
	}

	/*
	 * 查找方法体第一个字符串并返回[主要是找aidl生成的类的描述字符串]
	 */
	public static String getDescriptor(Method hasDescriptorMethod){
		for ( Instruction instruction : hasDescriptorMethod.getImplementation().getInstructions() ){
			if ( instruction.getOpcode().referenceType == ReferenceType.STRING ){
				StringReference referenceType = (StringReference)((ReferenceInstruction)instruction).getReference();
				return "L" + referenceType.getString().replace('.', '/') + ";";

			}
		}
		return null;
	}
}
