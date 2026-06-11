package io.github.zeroaicy.dexlib.analysis;

import io.github.zeroaicy.dexlib.analysis.RewriterClassData.MethodData;
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
import org.jf.dexlib2.iface.Field;
import com.google.common.collect.HashBiMap;
import java.util.Objects;
import org.jf.dexlib2.DexFileFactory;
import java.io.File;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.MultiDexContainer.DexEntry;

//DexFile分析器，用于构造出DexFile一些信息

//方便查询
public class DexFileAnalyzer {

	//DexFile容器
	final MultiDexContainer<? extends DexFile> dexContainer;

	//mapping.txt规则文件
	protected final RevertMappingData revertMappingData;

	//已排序的dex名称，类加载有优先级
	final List<String> dexEntryNames = new ArrayList<>();

	//所有dex的ClassDef[过滤同名ClassDef]
	// 类签名与ClassDef，并过滤同名ClassDef
	private final Map<String, ClassDef> classDefMap = new HashMap<>();

	//启用修复分析[aidl类和枚举]
	private final boolean repairAnalysis;

	//启用修复分析[枚举]
	private final boolean repairEnumAnalysis;

	// followExternalClasses
	private final boolean repairAIDLAnalysis;

	// 禁用跟随
	private final boolean disableFollowExternalClasses;
	// 禁用跟随方法
	private final boolean disableUnifyVirtualMethodName;

	// 检查规则文件
	private final boolean checkRevertMapping;
	// 类签名 与 字段对应关系
	protected final Map<String, Set<String>> classField = new HashMap<>();

	// 类签名 与 方法签名对应关系
	protected final Map<String, Set<String>> classMethods = new HashMap<>();
	// 类 与 虚字段 的映射
	private final Map<String, Set<String>> classVirtualFieldMap = new HashMap<>();
	//类原始的虚拟方法签名
	private final Map<String, Set<String>> classVirtualMethodMap = new HashMap<>();

	/**
	 * 用于查找类的所有子类签名，返回Set，
	 * 父类 -> 子类集合
	 */
	private final Map<String, Set<String>> childClassSetMap = new HashMap<>();

	// 开关 Set
	private final Map<String, String> switchMap = new HashMap<>();


	// 安卓 sdk 类 -> 方法签名
	protected final Map<String, Set<String>> androidSdkClassMethods = new HashMap<>();

	// 用于纯分析
	public DexFileAnalyzer(MultiDexContainer<? extends DexFile> dexContainer) throws IOException {
		this(dexContainer, Collections.<String, String>emptyMap());
	}

	private DexFileAnalyzer(MultiDexContainer<? extends DexFile> dexContainer, Map<String, String> switchMap)
	throws IOException {
		this(dexContainer, new RevertMappingData(), switchMap);
	}

	public DexFileAnalyzer(MultiDexContainer<? extends DexFile> dexContainer, RevertMappingData revertMapping)
	throws IOException {
		this(dexContainer, revertMapping, Collections.<String, String>emptyMap());
	}

	/**
	 * dexContainer dex容器
	 * revertMapping 规则文件
	 * 启用修复分析repairAnalysis
	 */
	public DexFileAnalyzer(MultiDexContainer<? extends DexFile> dexContainer, RevertMappingData revertMapping,
						   Map<String, String> switchMap) throws IOException {

		this.dexContainer = dexContainer;
		this.revertMappingData = revertMapping;
		this.switchMap.putAll(switchMap);

		if (this.revertMappingData.isContrary()) {
			//反转模式不启用修复分析
			this.repairAnalysis = false;
			this.repairEnumAnalysis = false;
			this.repairAIDLAnalysis = false;
			this.disableFollowExternalClasses = true;
			// 二次开发需要 不能默认 true
			this.disableUnifyVirtualMethodName = hasSwitch(SwitchNameConstants.disableUnifyVirtualMethodName);

		}
		else {
			// 修复分析[ 注解 , ... ]
			this.repairAnalysis = hasSwitch(SwitchNameConstants.repairAnalysis);
			// 修复 枚举
			this.repairEnumAnalysis = hasSwitch(SwitchNameConstants.repairEnumAnalysis);
			// 修复 aidl
			this.repairAIDLAnalysis = hasSwitch(SwitchNameConstants.repairAIDLAnalysis);

			this.disableFollowExternalClasses = hasSwitch(SwitchNameConstants.disableFollowExternalClasses);

			this.disableUnifyVirtualMethodName = hasSwitch(SwitchNameConstants.disableUnifyVirtualMethodName);
		}

		this.checkRevertMapping = hasSwitch(SwitchNameConstants.checkRevertMapping);

		this.dexEntryNames.addAll(dexContainer.getDexEntryNames());

		//排序
		Collections.sort(this.dexEntryNames);
		//初始化
		init();
	}

	public Map<String, ClassDef> getClassDefMap() {
		return this.classDefMap;
	}

	private boolean hasSwitch(String repairAnalysis) {
		return this.switchMap.containsKey(repairAnalysis);
	}

	public boolean isRepairAnalysis() {
		return repairAnalysis;
	}

	/*
	 * 初始化
	 * 1.查找直接子类
	 * 2.类的虚拟方法签名
	 */
	private void init() throws IOException {
		//分析并提取信息
		initAndroidSdk();
		//遍历所有dex
		for (String dexEntryName : this.dexEntryNames) {

			DexFile dexBackedOdexFile = this.dexContainer.getEntry(dexEntryName).getDexFile();
			//遍历dex中所有ClassDef
			init(dexBackedOdexFile, false);
		}

		checkRevertMappingData();
	}

	private void initAndroidSdk() {
		if( this.switchMap.containsKey(SwitchNameConstants.androidSdkDexPath)){
			String androidSdkDexPath = this.switchMap.get(SwitchNameConstants.androidSdkDexPath);
			if( androidSdkDexPath == null ){
				return;
			}
			File androidSdkDexFile = new File(androidSdkDexPath);
			if( !androidSdkDexFile.exists()){
				return;
			}
			System.out.println("initAndroidSdk");
			try {
				MultiDexContainer<? extends DexBackedDexFile> androidSdkDexContainer = DexFileFactory.loadDexContainer(androidSdkDexFile, null);
				for(String dexEntryName : androidSdkDexContainer.getDexEntryNames()){
					MultiDexContainer.DexEntry<? extends DexBackedDexFile> entry = androidSdkDexContainer.getEntry(dexEntryName);
					DexFile dexBackedOdexFile = entry.getDexFile();
					//遍历dex中所有ClassDef
					init(dexBackedOdexFile, true);
				}
			}
			catch (Throwable e) {
				e.printStackTrace();
			}

		}
	}

	/*
	 * 遍历 DexFile 添加 信息
	 */
	private void init(DexFile dexBackedOdexFile, boolean androidSdk) {
		for (ClassDef classDef : dexBackedOdexFile.getClasses()) {
			//添加类的子类信息
			putChildClass(classDef.getSuperclass(), classDef);

			String type = classDef.getType();
			Iterable<? extends Field> fields = classDef.getFields();
			putFieldName(this.classVirtualFieldMap, type, fields);

			//添加此类的虚方法
			Iterable<? extends Method> virtualMethods = classDef.getVirtualMethods();
			if( androidSdk){
				// 提前给 androidSdk 添加规则
				for (Method virtualMethod : virtualMethods) {
					String parameterTypesSignature = getParameterTypesSignature(virtualMethod);
					RevertMappingData revertMappingData = getRevertMappingData();
					RewriterClassData andAddRewriterClassData = revertMappingData.getAndAddRewriterClassData(type, type);
					String name = virtualMethod.getName();
					// 提前 添加 androidSdk的 方法规则
					andAddRewriterClassData.addMethodData(name,parameterTypesSignature,name);
				}
			}

			putMethodSignature(this.classVirtualMethodMap, type, virtualMethods);

			//添加接口的子类
			for (String interfaceType : classDef.getInterfaces()) {
				putChildClass(interfaceType, classDef);
			}

			//通过类签名查找ClassDef
			String classDefType = classDef.getType();
			//过滤类名重复的ClassDef
			if (!classDefMap.containsKey(classDefType)) {
				classDefMap.put(classDefType, classDef);
			}
			fillClassMembers(classDef);
		}
	}

	/**
	 * 通过向上查找 父类 父接口 有无虚方法签名
	 */
	public boolean hasVirtualMethodFromSuper(String type, String methodSignature) {
		ClassDef classDef = getClassDef(type);
		if( classDef == null ){
			return false;
		}
		// 广度优先标记
		for (String interfaces : classDef.getInterfaces()) {
			Set<String> virtualMethodSignatureSet = this.classVirtualMethodMap.get(interfaces);
			if (virtualMethodSignatureSet == null) {
				// 递归处理父接口
				boolean hasVirtualMethodFromSuper = hasVirtualMethodFromSuper(interfaces, methodSignature);
				if (hasVirtualMethodFromSuper) {
					return true;
				}
				continue;
			}
			if (virtualMethodSignatureSet.contains(methodSignature)) {
				return true;
			}
		}

		// 查询 父类有没有
		String superclass = classDef.getSuperclass();
		Set<String> virtualMethodSignatureSet = this.classVirtualMethodMap.get(superclass);
		if (virtualMethodSignatureSet == null) {
			// 递归父类的父类及接口
			boolean hasVirtualMethodFromSuper = hasVirtualMethodFromSuper(superclass, methodSignature);
			if (hasVirtualMethodFromSuper) {
				return true;
			}
		}
		else if (virtualMethodSignatureSet.contains(methodSignature)) {
			return true;
		}
		return false;
	}
	private void checkRevertMappingData() {
		if (!isCheckRevertMapping()) {
			return;
		}

		Map<String, RewriterClassData> rewriterClassDataMap = getRevertMappingData().getRewriterClassDataMap();
		Set<String> reClassNamedSet = new HashSet<>();
		// 遍历类规则
		// 检查 新类名，检查旧类名是否存在，检查类规则 下方法规则的 方法是否存在
		for (Map.Entry<String, RewriterClassData> entry : rewriterClassDataMap.entrySet()) {

			RewriterClassData rewriterClassData = entry.getValue();

			// 重命名前
			String confusevt = rewriterClassData.getConfusevt();
			// 重命名后
			String renamed = rewriterClassData.getRenamed();
			// 检查 重命名后名称是否正确
			if (renamed.charAt(0) != 'L' || renamed.charAt(renamed.length() - 1) != ';' || renamed.startsWith("LL")) {
				System.out.println(String.format("警告⚠️: 重名后的类名可能有误 -> %s -> %s", confusevt, renamed));
			}
			// 检查规则中声明的类是否在dex集合中
			if (!this.classMethods.containsKey(confusevt)) {
				System.out.println(String.format("警告⚠️:  所有dex中没有规则声明的类 -> %s -> %s", confusevt, renamed));
			}

			// 检查参数中，类签名是否使用了，重命名后的类签名
			if (!rewriterClassData.notChangeClassName()) {
				reClassNamedSet.add(renamed);
			}

			// 重命名后的类名称是否已存在
			if (this.classMethods.containsKey(renamed)) {
				RewriterClassData rewriterClassData2 = rewriterClassDataMap.get(renamed);
				// 不存在，冲突类名的重写规则或规则未改变名称
				if (!confusevt.equals(renamed)
					&& (rewriterClassData2 == null || renamed.equals(rewriterClassData2.getRenamed()))) {
					System.out.println(String.format("警告⚠️:存在重命名后的类，%s将重命名为%s", confusevt, renamed));
				}
			}
			// 当前类的所有字段签名
			Set<String> fields = classField.get(confusevt);
			// 字段规则
			Map<String, RewriterClassData.FieldData> fieldDataMap = rewriterClassData.getFieldDatas();
			if (fields != null) {
				// 此类规则中没有方法规则
				if (fieldDataMap != null) {
					for (Map.Entry<String, RewriterClassData.FieldData> entry2 : fieldDataMap.entrySet()) {
						RewriterClassData.FieldData fieldData = entry2.getValue();

						if (!fields.contains(fieldData.confusevt)) {
							// 规则中声明了dex中不存在的方法规则
							System.out.println(String.format("警告⚠️:没有字段: %s ->  %s", confusevt, fieldData));

						}
						// 
						if (fields.contains(fieldData.renamed)) {
							//存在方法名冲突
							RewriterClassData.FieldData fieldData2 = fieldDataMap.get(fieldData.renamed);
							// 不存在冲突方法名的重写规则或规则未改变名称
							if (fieldData2 == null || fieldData.renamed.equals(fieldData2.renamed)) {
								System.out.println(String.format("警告⚠️:已存在重命名后的字段，类%s -> 字段 -> %s将重命名为 -> %s", confusevt,
																 fieldData.renamed, renamed));
							}
						}
					}
				}

			}

			// 当前类的所有方法签名
			Set<String> methods = classMethods.get(confusevt);
			// 方法规则
			Map<String, RewriterClassData.MethodData> methodDataMap = rewriterClassData.getMethodDataMap();
			if (methods != null && methodDataMap != null) {
				// 此类规则中没有方法规则
				for (Map.Entry<String, RewriterClassData.MethodData> methodDataEntry : methodDataMap.entrySet()) {
					RewriterClassData.MethodData methodData = methodDataEntry.getValue();
					// 需要重命名的 方法签名
					String methodSignature = methodData.getMethodSignature();

					if (!methods.contains(methodSignature)) {
						// 当前类不存在 需要父类及接口是否存在
						if (hasVirtualMethodFromSuper(confusevt, methodSignature)) {
							System.out.println(
								String.format("弱警告⚠️:虽然此类没有方法，但是父类(接口)有此虚方法，-> %s : %s", confusevt, methodData));
							continue;
						}
						// 规则中声明了dex中不存在的方法规则
						System.out.println(String.format("警告⚠️:没有方法，所有dex中类-> %s : %s", confusevt, methodData));
					}

					// 方法重命名后签名
					String renamedMethodSignature = methodData.getRenamedMethodSignature();

					// 将要重命名的方法名 此类已存在的方法
					if (!Objects.equals(methodSignature, renamedMethodSignature) && methods.contains(renamedMethodSignature)) {
						// 查询 这个已存在的 方法是否也要改名
						RewriterClassData.MethodData methodData2 = methodDataMap.get(renamedMethodSignature);
						// 没有 腾出 原名
						boolean isConflict =
							// methodData2 不存在 说明 不存在 a->b b->c 或者 b->a的情况
							methodData2 == null ||
							// 说明没有改名
							renamedMethodSignature.equals(methodData2.getRenamedMethodSignature());

						// 不存在冲突方法名的重写规则或规则未改变名称
						if (isConflict) {
							ClassDef classDef = getClassDef(confusevt);
							boolean isBridgeSyntheticMethod = false;

							for(Method virtualMethod : classDef.getVirtualMethods() ){
								int accessFlags = virtualMethod.getAccessFlags();
								boolean isBridgeSynthetic = AccessFlags.BRIDGE.isSet(accessFlags) && AccessFlags.SYNTHETIC.isSet(accessFlags);
								if( !isBridgeSynthetic ){
									continue;
								}

								String virtualMethodSignature = getMethodSignature(virtualMethod);
								boolean isCurMethod = methodSignature.equals(virtualMethodSignature);
								if (isCurMethod ) {
									isBridgeSyntheticMethod = true;
									break;
								}

								boolean isRenamedMethod = renamedMethodSignature.equals(virtualMethodSignature);
								if (isRenamedMethod ) {
									isBridgeSyntheticMethod = true;
									break;
								}
							}

							if( isBridgeSyntheticMethod ){
								System.out.println(String.format("弱警告⚠️:存在重命名的泛型方法，类%s -> 泛型方法(bridge synthetic Method， 注意观察) -> %s将重命名为 -> %s", confusevt,
																 methodSignature, renamedMethodSignature));

							}
							else{
								System.out.println(String.format("警告⚠️:已存在重命名后的方法，类%s -> %s将重命名为 -> %s",
																 methodSignature, renamedMethodSignature));

							}
						}
					}
					// 查找有无 重名为 父类的虚方法
					else if( !Objects.equals(methodSignature, renamedMethodSignature) ){
						// 在父类及接口中 查找 声明类 
						String findSuperDeclaringClass = findSuperDeclaringClassForMethod(confusevt, renamedMethodSignature);
						if( findSuperDeclaringClass != null ){
							// 将方法重命名为了 父类中存在的虚方法
							String v = "严重警告⚠️:存在从类%s->%s 重写为 父类%s -> %s ";
							String format = String.format(v, confusevt, methodSignature,
														  findSuperDeclaringClass, renamedMethodSignature);
							System.out.println(format);
						}
						else{
							// 检查子类是否有此 虚方法，
							String findChildDeclaringClass = findChildDeclaringClassForMethod(confusevt, renamedMethodSignature);
							if( findChildDeclaringClass != null ){
								// 将方法重命名为了 父类中存在的虚方法
								String v = "严重警告⚠️:存在从类%s->%s 重写为 子类或者继承虚方法的接口类%s -> %s ";
								String format = String.format(v, confusevt, methodSignature,
															  findChildDeclaringClass, renamedMethodSignature);
								System.out.println(format);
							}
						}

					}
				}
			}
		}

		// 检查方法签名中是否使用重命名后的类名
		// 效率非常低
		findUseRemandClassName(rewriterClassDataMap, reClassNamedSet);

		// 检查方法是否重命名相同的名字
		for (RewriterClassData rewriterClassData : rewriterClassDataMap.values()) {

			Map<String, RewriterClassData.MethodData> methodDataMap = rewriterClassData.getMethodDataMap();
			if (methodDataMap == null)
				continue;

			String confusevt = rewriterClassData.getConfusevt();

			Collection<MethodData> values = methodDataMap.values();
			for (MethodData methodData : values) {
				for (MethodData methodData2 : values) {

					if (methodData == methodData2) {
						continue;
					}

					String parametersSignature = methodData.getParametersSignature();
					String parametersSignature2 = methodData2.getParametersSignature();

					if (methodData.renamed.equals(methodData2.renamed)
						&& parametersSignature.equals(parametersSignature2)) {
						boolean matchBridgeMethod = false;

						Set<String> methodSignatures = classMethods.get(confusevt);
						if (methodSignatures == null) {
							continue;
						}
						if (!methodSignatures.contains(parametersSignature)
							&& !methodSignatures.contains(parametersSignature2)) {
							continue;
						}

						for (Method virtualMethod : classDefMap.get(confusevt).getVirtualMethods()) {
							// 签名一致
							if (methodData.getParametersSignature().equals(getMethodSignature(virtualMethod))) {
								matchBridgeMethod = AccessFlags.BRIDGE.isSet(virtualMethod.getAccessFlags());
								break;
							}
						}

						if (matchBridgeMethod) {
							continue;
						}
						System.out.println(String.format("严重警告⚠️: 重载冲突① %s %s %s", confusevt, methodData, methodData2));
					}
				}
			}
		}

	}

	/**
	 * 查询父类之中是否有 声明此方法签名
	 * 没有返回 null, 如果有 则返回哪个类声明的
	 * 可以用于判断 新方法签名是否 重命名为 父类的虚方法 容易 死循环 以及 逻辑错误
	 */
	public String findSuperDeclaringClassForMethod(String className, String virtualMethodSignature){
		ClassDef classDef = getClassDef(className);
		if( classDef == null ){
			return null;
		}
		String superclass = classDef.getSuperclass();

		if( superclass != null ){
			ClassDef superClassDef = getClassDef(superclass);
			if( superClassDef == null ){
				return null;
			}
			Set<String> vrtualMethods = classVirtualMethodMap.get(superclass);
			if( vrtualMethods != null && vrtualMethods.contains(virtualMethodSignature) ){
				return superclass;
			}
			String declaringClass = findSuperDeclaringClassForMethod(superclass, virtualMethodSignature);
			if( declaringClass != null ){
				return declaringClass;
			}
		}

		List<String> interfaces = classDef.getInterfaces();

		if( interfaces == null ){
			return null;
		}

		for( String interfaceName : interfaces ){
			if( interfaceName == null ){
				continue;
			}
			ClassDef interfaceClassDef = getClassDef(interfaceName);
			if( interfaceClassDef == null ){
				return null;
			}
			Set<String> interfaceVrtualMethods = classVirtualMethodMap.get(interfaceName);
			if( interfaceVrtualMethods.contains(virtualMethodSignature) ){
				return interfaceName;
			}
			String declaringInterface = findSuperDeclaringClassForMethod(interfaceName, virtualMethodSignature);
			if( declaringInterface != null ){
				return declaringInterface;
			}
		}

		return null;
	}
	public String findChildDeclaringClassForMethod(String className, String virtualMethodSignature){
		Set<String> childClassSet = childClassSetMap.get(className);
		if( childClassSet == null ){
			return null;
		}
		for( String childClass : childClassSet){
			Set<String> classVirtualMethods = classVirtualMethodMap.get(childClass);
			if( classVirtualMethods != null && classVirtualMethods.contains(virtualMethodSignature) ){
				return childClass;
			}else{
				String childDeclaringClass = findChildDeclaringClassForMethod(childClass, virtualMethodSignature);
				if(childDeclaringClass != null){
					return childDeclaringClass;
				}
			}
			
			// 查找 是否继承了接口的 虚方法
			ClassDef childClassDef =  getClassDef(childClass);
			if( childClassDef == null ){
				return null;
			}
			List<String> interfaces = childClassDef.getInterfaces();
			if( interfaces == null){
				return null;
			}
			for( String interfaceName : interfaces ){
				// 接口是否有 比方法声明
				Set<String> interfaceVirtualMethods = classVirtualMethodMap.get(interfaceName);
				if( interfaceVirtualMethods != null && interfaceVirtualMethods.contains(virtualMethodSignature) ){
					return interfaceName;
				}
				// 向上查找 接口有无声明，接口也影响着子类
				String superDeclaringClassForMethod = findSuperDeclaringClassForMethod(interfaceName, virtualMethodSignature);
				if( superDeclaringClassForMethod != null ){
					return superDeclaringClassForMethod;
				}
				// 接口的子类 有无 比方法声明都不影响 className 类
			}
		}
		return null;
	}
	

	private void findUseRemandClassName(Map<String, RewriterClassData> rewriterClassDataMap, Set<String> reClassNamedSet) {
		for (RewriterClassData rewriterClassData : rewriterClassDataMap.values()) {
			String confusevt = rewriterClassData.getConfusevt();
			Map<String, RewriterClassData.MethodData> methodDataMap = rewriterClassData.getMethodDataMap();
			if (methodDataMap == null)
				continue;

			for (MethodData methodData : methodDataMap.values()) {
				if (methodData.renamed.indexOf('(') >= 0 || methodData.renamed.indexOf(')') >= 0) {
					System.out.println(methodData + " 错误");
				}
				String parametersSignature = methodData.getParametersSignature();
				for (String reClassNamed : reClassNamedSet) {
					if (parametersSignature.contains(reClassNamed)) {
						System.out.println(String.format("警告⚠️:使用修改后的类名%s 类%s -> 方法 -> %s", reClassNamed, confusevt,
														 methodData.getMethodSignature()));
					}
				}
			}
		}
	}

	private boolean isCheckRevertMapping() {
		return this.checkRevertMapping;
	}

	// 
	private void fillClassMembers(ClassDef classDef) {
		//添加此类的虚方法
		String type = classDef.getType();
		// 虚方法
		putMethodSignature(this.classMethods, type, classDef.getVirtualMethods());
		// 私有方法
		putMethodSignature(this.classMethods, type, classDef.getDirectMethods());
		// 添加字段
		putFieldSignature(this.classField, type, classDef.getFields());

	}
	public Map<String, Set<String>> getChildClassSetMap() {
		return this.childClassSetMap;
	}
	/*
	 * 添加类的子类信息(直接的而非间接的)
	 *
	 */
	public void putChildClass(String superclassType, ClassDef childClassDef) {
		Set<String> childClassSet = childClassSetMap.get(superclassType);
		if (childClassSet == null) {
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
	public RevertMappingData getRevertMappingData() {
		return revertMappingData;
	}
	//封装revertMapping的api
	public RewriterClassData getRewriterClassData(String className) {
		return revertMappingData.getRewriterClassData(className);
	}
	public RewriterClassData getAndAddRewriterClassData(String confusevt, String original) {
		return revertMappingData.getAndAddRewriterClassData(confusevt, original);
	}

	/**
	 * DexFileAnalyzer分析后产生的数据
	 */

	private static void putFieldName(Map<String, Set<String>> typeFieldsMap, String type,
									 Iterable<? extends Field> fields) {
		Set<String> fieldName = typeFieldsMap.get(type);

		if (fieldName == null) {
			fieldName = new HashSet<>();
			typeFieldsMap.put(type, fieldName);
		}

		for (Field virtualField : fields) {

			int accessFlags = virtualField.getAccessFlags();
			if (AccessFlags.PRIVATE.isSet(accessFlags)) {
				continue;
			}
			fieldName.add(virtualField.getName());
		}
	}

	/*
	 * 添加类的方法签名
	 */
	private static void putMethodSignature(Map<String, Set<String>> typeMethodsMap, String type,
										   Iterable<? extends Method> methods) {
		putMethodSignature(typeMethodsMap, type, methods, false);
	}

	private static void putMethodSignature(Map<String, Set<String>> typeMethodsMap, String type,
										   Iterable<? extends Method> methods, boolean filterBridgeMethod) {
		Set<String> methodSignatureSet = typeMethodsMap.get(type);

		if (methodSignatureSet == null) {
			methodSignatureSet = new HashSet<>();
			typeMethodsMap.put(type, methodSignatureSet);
		}

		for (Method virtualMethod : methods) {
			methodSignatureSet.add(getMethodSignature(virtualMethod));
		}
	}

	/*
	 * 添加类的字段签名
	 */
	private static void putFieldSignature(Map<String, Set<String>> classFieldMap, String type,
										  Iterable<? extends Field> fields) {
		Set<String> fieldSignatureSet = classFieldMap.get(type);

		if (fieldSignatureSet == null) {
			fieldSignatureSet = new HashSet<>();
			classFieldMap.put(type, fieldSignatureSet);
		}
		for (Field field : fields) {
			fieldSignatureSet.add(field.getName());
		}
	}

	/*
	 * 分析并统一父子类的虚方法(即继承的方法)
	 * 重新此方法，根据是否需要统一父类，子类的虚方法
	 * 而决定super.analysis()顺序
	 */
	public void analysis() {

		//内部类跟随最后处理
		//实现内部类跟随外部类
		if (!this.disableFollowExternalClasses) {
			followExternalClasses();
		}

		if (this.repairAIDLAnalysis) {
			//修复aidl类
			repairAIDL();
		}

		if (this.repairAnalysis) {
			// 修复内部类注解
			for (ClassDef classDef : classDefMap.values()) {
				//收集classDef这个内部类的外部类信息
				repairLdalviMemberClassesAnnotation(classDef);
			}
		}
		// 修复字段 必须在包名后
		if (this.repairEnumAnalysis) {
			//修复枚举类字段
			for (ClassDef classDef : classDefMap.values()) {
				//修改的是字段，不受followExternalClasses影响
				repairEnum(classDef);
			}
		}

		//包名重命名必须要所有规则之后且不覆盖之前的规则
		// 重命名包名
		revertPackageName();

		//缺省规则的实现，统一父类，子类虚方法重命名
		if (!this.disableUnifyVirtualMethodName) {
			unifyVirtualFieldName();
			// 必须等待其它类名不在更改后在执行
			unifyVirtualMethodName();
		}

		//移除无效或未修改的RewriterClassData
		shrink();
		// 再次检查规则文件
		checkRevertMappingData2();
	}

	private void checkRevertMappingData2() {
		Map<String, RewriterClassData> rewriterClassDataMap = getRevertMappingData().getRewriterClassDataMap();

		// 检查方法是否重命名相同的名字
		for (RewriterClassData rewriterClassData : rewriterClassDataMap.values()) {

			Map<String, RewriterClassData.MethodData> methodDataMap = rewriterClassData.getMethodDataMap();
			if (methodDataMap == null)
				continue;

			String confusevt = rewriterClassData.getConfusevt();

			Collection<MethodData> values = methodDataMap.values();
			for (MethodData methodData : values) {
				for (MethodData methodData2 : values) {

					if (methodData == methodData2) {
						continue;
					}
					String parametersSignature = methodData.getParametersSignature();
					String parametersSignature2 = methodData2.getParametersSignature();

					if (methodData.renamed.equals(methodData2.renamed)
						&& parametersSignature.equals(parametersSignature2)) {
						boolean matchBridgeMethod = false;

						Set<String> methodSignatures = classMethods.get(confusevt);
						if (methodSignatures == null) {
							continue;
						}
						if (!methodSignatures.contains(parametersSignature)
							&& !methodSignatures.contains(parametersSignature2)) {
							continue;
						}

						for (Method virtualMethod : classDefMap.get(confusevt).getVirtualMethods()) {
							// 签名一致
							if (methodData.getParametersSignature().equals(getMethodSignature(virtualMethod))) {
								matchBridgeMethod = AccessFlags.BRIDGE.isSet(virtualMethod.getAccessFlags());
								break;
							}
						}

						if (matchBridgeMethod) {
							continue;
						}
						System.out.println(String.format("严重警告⚠️: 重载冲突② %s %s %s", confusevt, methodData, methodData2));
					}
				}
			}
		}
	}

	protected void shrink() {
		getRevertMappingData().shrink();
	}

	private void shrink2() {
		List<RewriterClassData> rewriterClassDataList = new ArrayList<RewriterClassData>(
			getRevertMappingData().getRewriterClassDataMap().values());
		for (RewriterClassData rewriterClassData : rewriterClassDataList) {
			shrink(rewriterClassData);
		}
	}
	private void shrink(RewriterClassData rewriterClassData) {
		if (rewriterClassData != null && rewriterClassData.notChange()) {
			//空的移除
			getRevertMappingData().getRewriterClassDataMap().remove(rewriterClassData.getConfusevt());
		}
	}

	//内部类跟随最后处理
	protected void followExternalClasses() {
		// 遍历全部类并跟随外部类重命名
		for (ClassDef classDef : classDefMap.values()) {
			followExternalClasses(classDef);
		}
	}
	/*
	 * 外部类重命名，内部类跟随
	 */
	private void followExternalClasses(ClassDef classDef) {
		String classDefType = classDef.getType();

		//外部类的endIndex
		int externalClassEnd = classDefType.indexOf('/');
		if (externalClassEnd < 0) {
			externalClassEnd = 0;
		}
		//外部类名称
		String externalClassName = classDefType;

		RewriterClassData externalRewriterClassData = null;
		
		int count = 0;
		// 逆序查找外部类的规则
		while (externalRewriterClassData == null
			//看看有没有$
			   && (externalClassEnd = externalClassName.lastIndexOf('$')) > 0) {
			// 这是一个内部类，查找外部类
			externalClassName = externalClassName.substring(0, externalClassEnd);
			// 补全 ";"
			externalClassName += ";";
			externalRewriterClassData = getRewriterClassData(externalClassName);
			count++;
		}

		if (externalRewriterClassData != null ) {
			// 外部类的新名
			String externalClassNameNow = externalRewriterClassData.getRenamed();
			// 去掉 ";"
			externalClassNameNow = externalClassNameNow.substring(0, externalClassNameNow.length() - 1);
			
			//内部类的新名
			String typeNow = externalClassNameNow + classDefType.substring(externalClassEnd);
			
			// Labcd/test; ->  Labcd/Now;
			// Labcd/test$mini$a; -> Labcd/test$min$type;
			// Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent$Builder; 
			// Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent$Builder; 
			// Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent 
			// Landroid/view/textclassifier/TextClassifierEvent
			
			RewriterClassData memberRewriterClassData = getRewriterClassData(classDefType);
			String memberClassRenamed = null;
			// 没有 外部类且与预期不符时
			if(count == 1 && memberRewriterClassData != null && !typeNow.equals(memberClassRenamed = memberRewriterClassData.getRenamed())){
				// classDefType 的新名(Labcd/test$min$type;)
				int memberExternalClassNameEnd;
				if( memberClassRenamed != null && ( memberExternalClassNameEnd = memberClassRenamed.lastIndexOf('$')) > 0){
					// classDefTypeRenamed中包含的 直接外部类新名
					String memberDirectExternalClassName = memberClassRenamed.substring(0, memberExternalClassNameEnd);
					
					// 直接外部新类
					String externalClassNameRenamed = externalRewriterClassData.getRenamed();
					
					// 外部类的 新名 去掉";"
					int directExternalClassNameEnd = externalClassNameRenamed.length() - 1;
					String directExternalClassName = externalClassNameRenamed.substring(0, directExternalClassNameEnd);
					// 直接
					if( !directExternalClassName.equals(memberDirectExternalClassName)){
						System.out.println( String.format("内部类- 弱警告⚠️-新名未跟随外部类\n%s -> %s\n%s\n%s\n", classDef, memberClassRenamed, memberDirectExternalClassName, directExternalClassName));
					}
					
				}
			}
			
			getAndAddRewriterClassData(classDefType, typeNow);
			
		}else if( externalClassEnd > 0 ){
			System.out.println( String.format("弱警告⚠️ 内部类%s 没有外部类", classDef));
		}
	}
	private void revertPackageName() {
		Map<String, RewriterPackageNameData> rewriterPackageDataMap = revertMappingData.getRewriterPackageDataMap();

		//遍历所有类
		for (ClassDef classDef : classDefMap.values()) {
			revertPackageName(classDef, rewriterPackageDataMap);
		}
	}

	private void revertPackageName(ClassDef classDef, Map<String, RewriterPackageNameData> rewriterPackageDataMap) {
		String classDefType = classDef.getType();

		for (String packageConfusevt : rewriterPackageDataMap.keySet()) {

			if (!classDefType.startsWith(packageConfusevt)) {
				//不匹配
				continue;
			}

			RewriterPackageNameData rewriterPackageNameData = rewriterPackageDataMap.get(packageConfusevt);
			//是否匹配子包
			if (!rewriterPackageNameData.isReAll && classDefType.indexOf('/', packageConfusevt.length() + 1) >= 0) {
				//不匹配子包
				continue;
			}

			String classDefTypeRenamed = rewriterPackageNameData.packageNameRenamed
				+ classDefType.substring(packageConfusevt.length());
			//只有没有类重命名规则才修改
			if (getRewriterClassData(classDefType) == null) {
				//替换
				getAndAddRewriterClassData(classDefType, classDefTypeRenamed);
			}
		}
	}

	//MemberClasses注解
	private Map<String, Set<String>> memberClassesAnnotationSetMap = new HashMap<>();
	public Set<String> getMemberClassesAnnotationSet(String enclosingClass) {
		Set<String> memberClassesAnnotationSet = memberClassesAnnotationSetMap.get(enclosingClass);
		if (memberClassesAnnotationSet == null) {
			return Collections.emptySet();
		}
		return memberClassesAnnotationSet;
	}
	//添加内部类信息
	public void putMemberClassesAnnotation(String enclosingClass, String innerClassDefType) {
		Set<String> memberClassesAnnotationSet = memberClassesAnnotationSetMap.get(enclosingClass);
		if (memberClassesAnnotationSet == null) {
			memberClassesAnnotationSet = new HashSet<>();
			memberClassesAnnotationSetMap.put(enclosingClass, memberClassesAnnotationSet);
		}
		memberClassesAnnotationSet.add(innerClassDefType);
	}
	/**
	 * 修复类的内部类
	 */
	private void repairLdalviMemberClassesAnnotation(ClassDef classDef) {
		for (Annotation annotation : classDef.getAnnotations()) {
			String annotationType = annotation.getType();

			if ("Ldalvik/annotation/EnclosingClass;".equals(annotationType)) {
				for (final AnnotationElement annotationElement : annotation.getElements()) {
					if (annotationElement == null) {
						continue;
					}
					//"内部类注解与当前类名(最小类名)统一
					if ("value".equals(annotationElement.getName())
						&& (annotationElement.getValue().getValueType() == ValueType.TYPE)) {

						TypeEncodedValue typeEncodedValue = (TypeEncodedValue) annotationElement.getValue();
						putMemberClassesAnnotation(typeEncodedValue.getValue(), classDef.getType());
					}
				}
			}
			else if ("Ldalvik/annotation/EnclosingMethod;".equals(annotationType)) {
				for (final AnnotationElement annotationElement : annotation.getElements()) {
					if (annotationElement == null) {
						continue;
					}
					//"内部类注解与当前类名(最小类名)统一
					if ("value".equals(annotationElement.getName())
						&& (annotationElement.getValue().getValueType() == ValueType.METHOD)) {
						MethodEncodedValue methodEncodedValue = (MethodEncodedValue) annotationElement.getValue();
						putMemberClassesAnnotation(methodEncodedValue.getValue().getDefiningClass(),
												   classDef.getType());
					}
				}
			}
		}
	}

	/*
	 * 检查标识符合法性
	 */
	public static boolean checkIdentifier(String str) {
		// 使用正则表达式判断字符串是否符合Java标识符的命名规则  
		return str.matches("[a-zA-Z_$][a-zA-Z\\d_$]*");
	}

	/*
	 * 修复枚举字段
	 */
	private void repairEnum(ClassDef classDef) {
		String classDefType = classDef.getType();
		if ("Ljava/lang/Enum;".equals(classDef.getSuperclass())) {
			//当前类是枚举
			for (Method directMethod : classDef.getDirectMethods()) {
				if (!"<clinit>".equals(directMethod.getName())) {
					continue;
				}
				String enumFieldName = null;
				boolean lastNewInstanceFromEnum = false;
				for (Instruction instruction : directMethod.getImplementation().getInstructions()) {
					Opcode opcode = instruction.getOpcode();
					if (opcode == Opcode.NEW_INSTANCE) {
						Instruction21c instruction21c = (Instruction21c) instruction;
						TypeReference referenceType = (TypeReference) (instruction21c.getReference());
						if (classDefType.equals(referenceType.getType())) {
							lastNewInstanceFromEnum = true;
						}
					}
					if (lastNewInstanceFromEnum && ReferenceType.STRING == opcode.referenceType
						&& enumFieldName == null) {
						ReferenceInstruction referenceInstruction = (ReferenceInstruction) instruction;
						enumFieldName = ((StringReference) referenceInstruction.getReference()).getString();
						if (!checkIdentifier(enumFieldName)) {
							//不是标识符，丢弃
							enumFieldName = null;
						}
						// const-string指令
						continue;
					}

					if (opcode == Opcode.SPUT_OBJECT && enumFieldName != null) {
						//sput-object指令
						FieldReference fieldReference = (FieldReference) ((Instruction21c) instruction).getReference();
						String fieldDefiningClass = fieldReference.getDefiningClass();
						RewriterClassData fieldRewriterClassData = getRewriterClassData(fieldDefiningClass);
						if (fieldRewriterClassData == null) {
							fieldRewriterClassData = getAndAddRewriterClassData(fieldDefiningClass, fieldDefiningClass);
						}
						fieldRewriterClassData.addField(fieldReference.getName(), enumFieldName);
						//已使用弃用并重置
						enumFieldName = null;
					}
				}
			}
		}
	}

	/**
	 * 修补字段
	 */
	private void unifyVirtualFieldName() {
		//类重名规则
		Collection<RewriterClassData> values = revertMappingData.getRewriterClassDataMap().values();

		for (RewriterClassData rewriterClassData : new ArrayList<RewriterClassData>(values)) {
			if (!rewriterClassData.hasMethodData()) {
				//此类中没有方法重命名规则
				continue;
			}

			//类签名
			String classDefType = rewriterClassData.getConfusevt();

			//根据类签名获得ClassDef
			ClassDef classDef = getClassDef(classDefType);
			if (classDef == null) {
				//可能是安卓sdk的类
				//此类在dex中不存在，无法计算
				continue;
			}

			// rewriterClassData需要同步虚拟方法 父类和自己的的子类
			Map<String, RewriterClassData.FieldData> virtualFieldDataMap = new HashMap<String, RewriterClassData.FieldData>();
			// 遍历虚方法，找出是虚方法的规则
			for (Field virtualField : classDef.getFields()) {
				String virtualFieldName = virtualField.getName();
				RewriterClassData.FieldData virtualFieldData = rewriterClassData.getFieldData(virtualFieldName);
				//此虚方法有重命名规则
				if (virtualFieldData != null) {
					//属于虚拟方法
					virtualFieldDataMap.put(virtualFieldData.confusevt, virtualFieldData);
				}
			}

			//
			for (String fieldDataName : virtualFieldDataMap.keySet()) {
				//查找具有此签名方法的父类，并且最接近根节点的
				//递归查找
				Set<String> virtualFieldNameTypes = new HashSet<>();

				//查找父类中有此方法签名的类
				fillHasVirtualFieldType(classDefType, fieldDataName, virtualFieldNameTypes);

				// 对这些顶层类的子类
				for (String childType : new HashSet<String>(virtualFieldNameTypes)) {

					Set<String> childTypes = childClassSetMap.get(childType);
					if (childTypes == null) {
						continue;
					}
					for (String childType2 : childTypes) {
						fillHasVirtualFieldType(childType2, fieldDataName, virtualFieldNameTypes);
					}
				}

				if (virtualFieldNameTypes.isEmpty()) {
					continue;
				}

				//从这些类向下遍历
				for (String virtualFieldName : virtualFieldNameTypes) {
					addChildClassFieldData(virtualFieldName, virtualFieldDataMap.get(fieldDataName));
				}
			}
			//若虚方法与其它方法冲突，移除私有方法的修改
		}
	}

	/**
	 * 递归向子类添加
	 */
	private void addChildClassFieldData(String virtualFieldNameType, RewriterClassData.FieldData fieldData) {
		//为自己添加
		RewriterClassData virtualFieldNameTypeData = getRewriterClassData(virtualFieldNameType);
		if (virtualFieldNameTypeData == null) {
			virtualFieldNameTypeData = getAndAddRewriterClassData(virtualFieldNameType, virtualFieldNameType);
		}
		virtualFieldNameTypeData.addFieldData(fieldData);

		//查找子类
		Set<String> childClassSet = childClassSetMap.get(virtualFieldNameType);
		if (childClassSet == null || childClassSet.isEmpty()) {
			return;
		}
		for (String childClassType : childClassSet) {
			RewriterClassData childClassRewriterClassData = getRewriterClassData(childClassType);
			if (childClassRewriterClassData == null) {
				childClassRewriterClassData = getAndAddRewriterClassData(childClassType, childClassType);
			}
			//为子类添加规则
			childClassRewriterClassData.addFieldData(fieldData);
			//为子类的子类添加虚方法规则
			addChildClassFieldData(childClassType, fieldData);
		}

	}

	//填充有虚拟方法签名的顶层类[父类和众多接口]
	public boolean fillHasVirtualFieldType(String type, String fieldName, Set<String> virtualFieldNameTypes) {
		boolean isAdded = false;
		//深度优先
		ClassDef classDef = getClassDef(type);
		if (classDef == null) {
			//没有找到类
			return isAdded;
		}

		String superClassType = classDef.getSuperclass();
		//判断父类是否是Object超类
		if (!"Ljava/lang/Object;".equals(superClassType)) {
			//查找父类
			isAdded |= fillHasVirtualFieldType(superClassType, fieldName, virtualFieldNameTypes);
		}
		// 不需要 查找接口

		if (!isAdded) {
			//只有自己的父类没有找到才判断自己有没有
			Set<String> virtualFieldNameSet = classVirtualFieldMap.get(type);
			if (virtualFieldNameSet == null) {
				return isAdded;
			}
			if (virtualFieldNameSet.contains(fieldName)) {
				if (virtualFieldNameTypes.contains(type)) {
					return true;
				}
				virtualFieldNameTypes.add(type);
				isAdded = true;

			}

		}

		return isAdded;
	}
	/**
	 * 修补虚方法 -- bug1 bridge synthetic 方法 在还原模式是 不应当传递
	 */
	private void unifyVirtualMethodName() {
		//类重名规则
		Collection<RewriterClassData> values = revertMappingData.getRewriterClassDataMap().values();

		for (RewriterClassData rewriterClassData : new ArrayList<RewriterClassData>(values)) {

			if (!rewriterClassData.hasMethodData()) {
				//此类中没有方法重命名规则
				continue;
			}

			//类签名
			String classDefType = rewriterClassData.getConfusevt();

			//根据类签名获得ClassDef
			ClassDef classDef = getClassDef(classDefType);
			if (classDef == null) {
				//可能是安卓sdk的类
				//此类在dex中不存在，无法计算
				continue;
			}

			// rewriterClassData需要同步虚拟方法 父类和自己的的子类
			// rewriterClassData 所对应的 类的 虚方法
			Map<String, RewriterClassData.MethodData> virtualMethodDataMap = new HashMap<String, RewriterClassData.MethodData>();
			// 遍历虚方法，找出是虚方法的规则
			for (Method virtualMethod : classDef.getVirtualMethods()) {

				String methodSignature = getMethodSignature(virtualMethod);

				RewriterClassData.MethodData virtualMethodData = rewriterClassData.getMethodData(methodSignature);
				if (virtualMethodData == null) {
					continue;
				}

//				if( AccessFlags.BRIDGE.isSet( virtualMethod.getAccessFlags())){
//					// bridge synthetic 不能参与传递
//					if( this.revertMappingData.isContrary()){
//						rewriterClassData.removeMethodData(virtualMethodData);
//					}
//					continue;
//				}

				//此虚方法有重命名规则
				//属于虚拟方法
				virtualMethodDataMap.put(virtualMethodData.getMethodSignature(), virtualMethodData);
			}

			// 遍历 rewriterClassData所代表的 类的虚方法
			for (String methodSignature : virtualMethodDataMap.keySet()) {
				//查找具有此签名方法的父类，并且最接近根节点的
				//递归查找
				Set<String> virtualMethodSignTypes = new HashSet<>();

				//查找父类中有此方法签名的类
				//  填充 具有相同 methodSignature 的 classDefType的 父类及接口
				fillHasVirtualMethodType(classDefType, methodSignature, virtualMethodSignTypes);

				// 遍历 具有相同 methodSignature 的 class 的 子类|实现
				// 然后找到 具有相同 methodSignature 类
				// 即 先找到 classDefType(当前类)的 具有 相同签名的父类(的父类)及 接口(父接口)
				for (String superType : new HashSet<String>(virtualMethodSignTypes)) {
					// 
					Set<String> childTypes = childClassSetMap.get(superType);
					if (childTypes == null) {
						continue;
					}
					// 继续根据继承关系查找 有 methodSignature 的类
					for (String childType2 : childTypes) {
						fillHasVirtualMethodType(childType2, methodSignature, virtualMethodSignTypes);
					}
				}

				// 没有找到(说明只有自己(classDefType)有，没被重写 也不是 继承来的)
				if (virtualMethodSignTypes.isEmpty()) {
					continue;
				}

				//从这些类向下遍历
				for (String virtualMethodSignType : virtualMethodSignTypes) {
					// 给类规则添加 方法规则
					addChildClassMethodData(classDefType, virtualMethodSignType, virtualMethodDataMap.get(methodSignature));
				}
			}
			//若虚方法与其它方法冲突，移除私有方法的修改
		}
	}

	/**
	 * 递归向子类添加
	 * 需要检查是否已有方法规则 且重名后的名称不一致 则报错
	 */
	Set<String> errorSet = new HashSet<>();
	private void addChildClassMethodData(String sourceType, String classType, RewriterClassData.MethodData methodData) {
		//为自己添加
		RewriterClassData virtualMethodSignTypeData = getRewriterClassData(classType);
		if (virtualMethodSignTypeData == null) {
			virtualMethodSignTypeData = getAndAddRewriterClassData(classType, classType);
		}

		// 此处也应当检查
		String methodSignature = methodData.getMethodSignature();

		// 获取要添加方法规则的类的 方法规则集合
		RewriterClassData.MethodData methodDataCache = virtualMethodSignTypeData.getMethodData(methodSignature);
		// 类 -> 虚方法签名集合
		Set<String> virtualMethodSignatureSet = this.classVirtualMethodMap.get(classType);

		// classType 必须有 才报错
		if( methodDataCache != null && virtualMethodSignatureSet != null && virtualMethodSignatureSet.contains(methodSignature)){
			// 检查是否与methodData一致，不一致说明有问题
			// 待添加的方法规则的 重命名后的 方法签名
			String renamedMethodSignature = methodData.getRenamedMethodSignature();

			// 类规则中已有的 方法规则的 重命名后的 方法签名
			String renamedMethodSignatureCache = methodDataCache.getRenamedMethodSignature();

			// 不一致 说明 虚方法重命名存在不同的类(父类，子类等等)中有不同的新方法名
			if(!Objects.equals( renamedMethodSignature, renamedMethodSignatureCache)){

				String renamed = methodData.renamed;
				String renamedCache = methodDataCache.renamed;
				String format = String.format("严重警告⚠️: 虚方法重命名冲突，类%s[ %s ] 与 类%s[ %s ] 冲突 ", sourceType, methodData.toString(), classType, methodDataCache.toString());
				if( !errorSet.contains(format)){
					errorSet.add(format);
					System.out.println(format);	
				}
				return;
			}
		}

		// 方法的 重名规则 与 待添加的 重命名一致， 没有问题
		virtualMethodSignTypeData.addMethodData(methodData);

		//查找子类
		Set<String> childClassSet = childClassSetMap.get(classType);
		if (childClassSet == null || childClassSet.isEmpty()) {
			return;
		}
		for (String childClassType : childClassSet) {
			RewriterClassData childClassRewriterClassData = getRewriterClassData(childClassType);
			if (childClassRewriterClassData == null) {
				childClassRewriterClassData = getAndAddRewriterClassData(childClassType, childClassType);
			}
			//为子类添加规则
			childClassRewriterClassData.addMethodData(methodData);
			//为子类的子类添加虚方法规则
			addChildClassMethodData(classType, childClassType, methodData);
		}

	}

	//填充有虚拟方法签名的顶层类[父类和众多接口]
	public boolean fillHasVirtualMethodType(String type, String methodSignature, Set<String> virtualMethodSignTypes) {
		boolean isAdded = false;
		//深度优先
		ClassDef classDef = getClassDef(type);
		if (classDef == null) {
			//没有找到类
			return isAdded;
		}

		String superClassType = classDef.getSuperclass();
		//判断父类是否是Object超类
		if (!"Ljava/lang/Object;".equals(superClassType)) {
			//查找父类
			isAdded |= fillHasVirtualMethodType(superClassType, methodSignature, virtualMethodSignTypes);
		}
		//查找接口
		for (String interfaceType : classDef.getInterfaces()) {
			isAdded |= fillHasVirtualMethodType(interfaceType, methodSignature, virtualMethodSignTypes);
		}

		if (!isAdded) {
			//只有自己的父类，和父接口没有找到才判断自己有没有
			Set<String> virtualMethodSignatureSet = this.classVirtualMethodMap.get(type);
			if (virtualMethodSignatureSet == null) {
				return isAdded;
			}
			if (virtualMethodSignatureSet.contains(methodSignature)) {
				if (virtualMethodSignTypes.contains(type)) {
					return true;
				}
				virtualMethodSignTypes.add(type);
				isAdded = true;

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

	private void repairAIDL() {

		//测试
		for (String classDefType : childClassSetMap.get("Landroid/os/Binder;")) {
			ClassDef classDef = getClassDef(classDefType);
			if (classDef == null) {
				continue;
			}
			//接口就是父类，只有一个
			List<String> interfaces = classDef.getInterfaces();
			if (interfaces.size() != 1) {
				continue;
			}
			//Stub外部类
			String externalClassConfusevt = interfaces.get(0);
			String externalClassRenamed = null;

			//含有描述符的方法
			for (Method directMethod : classDef.getDirectMethods()) {
				//无参构造器
				if ("<init>".equals(directMethod.getName()) && directMethod.getParameterTypes().isEmpty()) {
					externalClassRenamed = getDescriptor(directMethod);
					break;
				}
			}
			for (Method directMethod : classDef.getDirectMethods()) {
				//无参构造器
				List<? extends CharSequence> parameterTypes = null;
				if (AccessFlags.STATIC.isSet(directMethod.getAccessFlags())
					&& externalClassConfusevt.equals(directMethod.getReturnType())
				//只能有一个参数
					&& (parameterTypes = directMethod.getParameterTypes()).size() == 1
				//必须是IBinder
					&& parameterTypes.contains("Landroid/os/IBinder;")) {
					//若构造器中找不到，asInterface也有但是会被混淆
					if (externalClassRenamed == null) {
						externalClassRenamed = getDescriptor(directMethod);
					}
					String type = classDef.getType();
					RewriterClassData rewriterClassData = getRewriterClassData(type);
					if (rewriterClassData == null) {
						rewriterClassData = getAndAddRewriterClassData(type, type);
					}
					//添加方法修改规则
					RewriterClassData.MethodData addMethodData = rewriterClassData.addMethodData(directMethod.getName(),
																								 "(Landroid/os/IBinder;)", "asInterface");
					//设置一个静态方法
					addMethodData.isVirtual = false;
					break;
				}
			}

			if (externalClassRenamed == null) {
				continue;
			}
			//修复aidl接口名称
			RewriterClassData externalRewriterClassData = getAndAddRewriterClassData(externalClassConfusevt,
																					 externalClassRenamed);
			//强制覆盖original
			externalRewriterClassData.setRenamed(externalClassRenamed);

			//修复Stub
			String stubConfusevt = classDef.getType();
			//方便拼接$Stub$Proxy
			String stubOriginalPrefix = externalClassRenamed.substring(0, externalClassRenamed.length() - 1) + "$Stub";
			String stubRenamed = stubOriginalPrefix + ";";
			RewriterClassData stubRewriterClassData = getAndAddRewriterClassData(stubConfusevt, stubRenamed);
			//强制覆盖original
			stubRewriterClassData.setRenamed(stubRenamed);

			childClassSetMap.get(externalClassRenamed);

			//修复$Stub$Proxy

			//方便查询$Stub$Proxy
			String proxyPrefix = stubConfusevt.substring(0, stubConfusevt.length() - 1) + "$";
			//proxy当前类签名
			String proxyConfusevt = null;

			Set<String> childClassSet = childClassSetMap.get(externalClassConfusevt);
			if (childClassSet != null) {
				for (String proxyClassDefType : childClassSet) {
					ClassDef proxyClassDef = getClassDef(proxyClassDefType);
					if (proxyClassDef == null) {
						continue;
					}
					String proxyType = proxyClassDef.getType();
					if (proxyType.startsWith(proxyPrefix)) {
						proxyConfusevt = proxyType;
						break;
					}
				}
			}

			if (proxyConfusevt != null) {
				String proxyRenamed = stubOriginalPrefix + "$Proxy;";

				RewriterClassData proxyRewriterClassData = getAndAddRewriterClassData(proxyConfusevt, proxyRenamed);
				//强制覆盖original
				proxyRewriterClassData.setRenamed(proxyRenamed);
			}
		}
	}

	// 类名 -> ClassDef，有类名相同时和类加载器逻辑一致
	// 已添加的优先
	public ClassDef getClassDef(String type) {
		return classDefMap.get(type);
	}

	/****静态方法****/

	//从RewriterClassData计算方法签名(不包含返回值类型)-> 方法名(参数签名)
	public static String getMethodSignature(Method method) {
		return method.getName() + getParameterTypesSignature(method);
	}

	public static String getParameterTypesSignature(Method method) {
		StringBuilder methodSignature = new StringBuilder("(");
		for (CharSequence parameterType : method.getParameterTypes()) {
			methodSignature.append(parameterType);
		}
		methodSignature.append(")");
		return methodSignature.toString();
	}

	/*
	 * 查找方法体第一个字符串并返回[主要是找aidl生成的类的描述字符串]
	 */
	public static String getDescriptor(Method hasDescriptorMethod) {
		for (Instruction instruction : hasDescriptorMethod.getImplementation().getInstructions()) {
			if (instruction.getOpcode().referenceType == ReferenceType.STRING) {
				StringReference referenceType = (StringReference) ((ReferenceInstruction) instruction).getReference();
				return "L" + referenceType.getString().replace('.', '/') + ";";

			}
		}
		return null;
	}
}

