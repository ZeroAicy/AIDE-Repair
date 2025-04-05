package io.github.zeroaicy.dexlib.aidePlus;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.ReferenceType;
import org.jf.dexlib2.dexbacked.DexBackedClassDef;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.Field;
import org.jf.dexlib2.iface.Method;
import org.jf.dexlib2.iface.MethodImplementation;
import org.jf.dexlib2.iface.MultiDexContainer;
import org.jf.dexlib2.iface.instruction.Instruction;
import org.jf.dexlib2.iface.instruction.ReferenceInstruction;
import org.jf.dexlib2.iface.reference.FieldReference;
import org.jf.dexlib2.iface.reference.MethodReference;
import org.jf.dexlib2.iface.reference.StringReference;
import org.jf.dexlib2.iface.reference.TypeReference;

public class 分析依赖引用 {

	public static interface ClassDefTypeFilter {
		public boolean accept( String classDefType );
	}
	/**
	 * 在dex中，从不满足filter包名条件的类中 ->  搜索是否引用了 非filter2包名条件下的类
	 * 遍历A包下的类 有无引用 B包下的类
	 */
	public static void main33( String[] args ) throws Exception {
		final Set<String> references = new HashSet<>();

		args = new String[]{};

		for ( String type : args ) {
			references.add(type);
		}

		String inputDexs = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2.4/AIDE+_2.4.zip";

		final Map<String, ClassDef> typeClassDefMap = new HashMap<>();
		File inputDexFiles = new File(inputDexs);

		initTypesMap(inputDexFiles, typeClassDefMap);
		// 
		ClassDefTypeFilter filterA = new ClassDefTypeFilter(){
			@Override
			public boolean accept( String classDefType ) {
				if ( classDefType.startsWith("Labcd/")
					|| references.contains(classDefType) ) {
					return false;
				}
				return true;
			}
		};

		ClassDefTypeFilter filterB = new ClassDefTypeFilter(){
			@Override
			public boolean accept( String classDefType ) {
				// 搜索
				if ( classDefType.startsWith("Lorg/eclipse/jgit/") 
					|| references.contains(classDefType) ) {
					return false;
				}
				return true;
			}
		};


		Set<String> handled = new HashSet<>();

		int oldSize = 0;
		int count = 0;
		while ( references.size() != oldSize || count < 2 ) {
			// 从A -> B 遍历所有类
			handled.clear();
			for ( String classDefType : typeClassDefMap.keySet() ) {
				handleType(classDefType, filterA, filterB, typeClassDefMap, references, handled);			
			}

			// 从B -> A 遍历所有类
			handled.clear();
			for ( String classDefType : typeClassDefMap.keySet() ) {
				handleType(classDefType, filterB, filterA, typeClassDefMap, references, handled);			
			}

			oldSize = references.size();
			count++;
		}

		List<String> arrayList = new ArrayList<String>(references);
		Collections.sort(arrayList);

		System.out.println("{");
		for ( String type : arrayList ) {
			if ( !type.startsWith("Labcd/") ) {
				continue;
			}
			System.out.printf("\"%s\",\n", type);
		}
		System.out.println("}");

		System.out.println();

		for ( String type : arrayList ) {
			if ( !type.startsWith("Labcd/") ) {
				continue;
			}
			System.out.printf("%s -> %s\n", type, type.replace("Labcd/", "Lorg/eclipse/jgit/"));
		}

		System.out.println("完成");
	}


	// Dx.jar
	public static void main( String[] args ) throws Exception {
		String inputDexs = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2.4/AIDE+_2.4.zip";

		// findDx(inputDexs);
		findJGit(inputDexs);

		// findGsch(inputDexs);
		// findZipsignerLib(inputDexs); // OK

		// findBouncyCastleLib(inputDexs); // 完成 -> spongycastle

		// findProbelytics(inputDexs);

		System.out.println("完成");
	}

	private static void findProbelytics( String inputDexs ) throws IOException {
		// 从 "Lcom/jcraft/jsch/" 查找 "Labcd/"
		final String[] filterAPrefixs = new String[]{
			"Lcom/probelytics/",
			// "",
		};

		final String[] filterBPrefixs = new String[]{"Labcd/"};

		List<String> arrayList = findTypeReferences(inputDexs, filterAPrefixs, filterBPrefixs, false, 20);
		System.out.println();
		System.out.printf("references size %s\n", arrayList.size());

		for ( String type : arrayList ) {
			if ( !type.startsWith(filterBPrefixs[0]) ) {
				continue;
			}
			System.out.printf("%s -> %s\n", type, type.replace(filterBPrefixs[0], filterAPrefixs[0]));
		}

	}
	private static void findBouncyCastleLib( String inputDexs ) throws IOException {
		// 从 "Lcom/jcraft/jsch/" 查找 "Labcd/"
		final String[] filterAPrefixs = new String[]{
			"Lorg/spongycastle/",
			// "",
		};

		final String[] filterBPrefixs = new String[]{"Labcd/"};

		List<String> arrayList = findTypeReferences(inputDexs, filterAPrefixs, filterBPrefixs, true, 20);
		System.out.println();
		System.out.printf("references size %s\n", arrayList.size());

		for ( String type : arrayList ) {
			if ( !type.startsWith(filterBPrefixs[0]) ) {
				continue;
			}
			System.out.printf("%s -> %s\n", type, type.replace(filterBPrefixs[0], filterAPrefixs[0]));
		}

	}
	private static void findZipsignerLib( String inputDexs ) throws IOException {
		// 从 "Lcom/jcraft/jsch/" 查找 "Labcd/"
		final String[] filterAPrefixs = new String[]{
			"Lkellinwood/security/zipsigner/"

		};

		final String[] filterBPrefixs = new String[]{"Labcd/"};

		List<String> arrayList = findTypeReferences(inputDexs, filterAPrefixs, filterBPrefixs, false, 1);
		System.out.println();
		System.out.printf("references size %s\n", arrayList.size());

		for ( String type : arrayList ) {
			if ( !type.startsWith(filterBPrefixs[0]) ) {
				continue;
			}
			System.out.printf("%s -> %s\n", type, type.replace(filterBPrefixs[0], filterAPrefixs[0]));
		}

	}
	private static void findGsch( String inputDexs ) throws IOException {
		// 从 "Lcom/jcraft/jsch/" 查找 "Labcd/"
		final String[] filterAPrefixs = new String[]{"Lcom/jcraft/jsch/"};
		final String[] filterBPrefixs = new String[]{"Labcd/"};

		List<String> arrayList = findTypeReferences(inputDexs, filterAPrefixs, filterBPrefixs, false, 20);
		System.out.println();
		System.out.printf("references size %s\n", arrayList.size());

		for ( String type : arrayList ) {
			if ( !type.startsWith(filterBPrefixs[0]) ) {
				continue;
			}
			System.out.printf("%s -> %s\n", type, type.replace(filterBPrefixs[0], filterAPrefixs[0]));
		}
	}

	private static void findJGit( String inputDexs ) throws IOException {

		final String[] filterAPrefixs = new String[]{
			// "Lorg/eclipse/jgit/",
			"Lorg/eclipse/jgit/"
		};

		final String[] filterBPrefixs = new String[]{"Labcd/"};

		List<String> arrayList = findTypeReferences(inputDexs, filterAPrefixs, filterBPrefixs, false, 1);
		System.out.println();
		System.out.printf("references size %s\n", arrayList.size());

		for ( String type : arrayList ) {
			if ( !type.startsWith(filterBPrefixs[0]) ) {
				continue;
			}
			System.out.printf("%s -> %s\n", type, type.replace(filterBPrefixs[0], filterAPrefixs[0]));
		}
	}

	private static void findDx( String inputDexs ) throws IOException {
		final String[] filterAPrefixs = new String[]{"Labcd/"};
		final String[] filterBPrefixs = new String[]{"Lcom/android/dx/"};

		List<String> arrayList = findTypeReferences(inputDexs, filterAPrefixs, filterBPrefixs);
		System.out.println();
		for ( String type : arrayList ) {
			if ( !type.startsWith("Labcd/") ) {
				continue;
			}
			System.out.printf("%s -> %s\n", type, type.replace("Labcd/", "Lcom/android/dx/"));
		}
	}
	private static List<String> findTypeReferences( String inputDexs, final String[] filterAPrefixs, final String[] filterBPrefixs ) throws IOException {
		return findTypeReferences(inputDexs, filterAPrefixs, filterBPrefixs, true, 20);
	}

	private static List<String> findTypeReferences( String inputDexs, final String[] filterAPrefixs, final String[] filterBPrefixs, boolean mutual ) throws IOException {
		return findTypeReferences(inputDexs, filterAPrefixs, filterBPrefixs, mutual, 20);
	}
	private static List<String> findTypeReferences( String inputDexs, final String[] filterAPrefixs, final String[] filterBPrefixs, int level ) throws IOException {
		return findTypeReferences(inputDexs, filterAPrefixs, filterBPrefixs, true, 20);
	}

	private static List<String> findTypeReferences( String inputDexs, final String[] filterAPrefixs, final String[] filterBPrefixs , boolean mutual, int level ) throws IOException {
		final Set<String> references = new HashSet<>();

		ClassDefTypeFilter filterA = new ClassDefTypeFilter(){
			@Override
			public boolean accept( String classDefType ) {
				for ( String prefix : filterAPrefixs ) {
					if ( classDefType.startsWith(prefix) ) {
						return false;
					}
				}
				return !references.contains(classDefType);
			}
		};

		ClassDefTypeFilter filterB = new ClassDefTypeFilter(){
			@Override
			public boolean accept( String classDefType ) {
				// 搜索
				for ( String prefix : filterBPrefixs ) {
					if ( classDefType.startsWith(prefix) ) {
						return false;
					}
				}

				return !references.contains(classDefType);
			}
		};
		final Map<String, ClassDef> typeClassDefMap = new HashMap<>();
		File inputDexFiles = new File(inputDexs);

		initTypesMap(inputDexFiles, typeClassDefMap);

		// 从B -> A 遍历所有类
		Set<String> handled = new HashSet<>();

		int oldSize = 0;
		int count = 0;
		while ( references.size() != oldSize || count < level ) {
			// 从A -> B 遍历所有类
			handled.clear();
			for ( String classDefType : typeClassDefMap.keySet() ) {
				handleType(classDefType, filterA, filterB, typeClassDefMap, references, handled);			
			}

			if ( mutual ) {
				handled.clear();
				for ( String classDefType : typeClassDefMap.keySet() ) {
					handleType(classDefType, filterB, filterA, typeClassDefMap, references, handled);			
				}				
			}

			oldSize = references.size();
			count++;
		}

		List<String> arrayList = new ArrayList<String>(references);
		Collections.sort(arrayList);



		/*
		 System.out.println("{");
		 for ( String type : arrayList ) {
		 if ( !type.startsWith("Labcd/") ) {
		 continue;
		 }
		 System.out.printf("\"%s\",\n", type);
		 }
		 System.out.println("}");
		 */


		return arrayList;
	}

	private static void handleType( String classDefType, 
								   ClassDefTypeFilter filterA, ClassDefTypeFilter filterB, 
								   Map<String, ClassDef> typeClassDefMap, 
								   Set<String> references, Set<String> handled ) {
		if ( handled.contains(classDefType) ) {
			return;
		}
		// 标记已处理
		handled.add(classDefType);

		if ( filterA.accept(classDefType) ) {
			return;
		}

		ClassDef classDef = typeClassDefMap.get(classDefType);
		if ( classDef == null ) {
			return;
		}

		// 处理父类
		String superclass = classDef.getSuperclass();

		// 搜索是否引用 filterB 未过滤的类
		if ( filterB.accept(superclass) ) {
			// 优先递归处理父类
			handleType(superclass, filterA, filterB, typeClassDefMap, references, handled);
		} else {
			handleType(superclass, filterA, filterB, typeClassDefMap, references, handled);

			// 此类继承 filterB 未过滤的类
			references.add(classDefType);
			references.add(superclass);

			// return;
		}

		// 接口
		for ( String interfaceType : classDef.getInterfaces() ) {
			if ( filterB.accept(interfaceType) ) {
				// 优先递归处理父类
				handleType(interfaceType, filterA, filterB, typeClassDefMap, references, handled);
				continue;
			}


			handleType(interfaceType, filterA, filterB, typeClassDefMap, references, handled);
			// 此类继承 filterB 未过滤的类
			references.add(classDefType);
			references.add(interfaceType);

			// return;
		}

		// 字段
		for ( Field field : classDef.getFields() ) {
			String fieldType = field.getType();

			// 字段类型 若过滤但不排除其父类自己其未被处理过
			if ( filterB.accept(fieldType) ) {
				handleType(fieldType, filterA, filterB, typeClassDefMap, references, handled);
				continue;
			}

			handleType(fieldType, filterA, filterB, typeClassDefMap, references, handled);

			references.add(classDefType);
			references.add(fieldType);
			// return;
		}
		
		for ( Method method : classDef.getMethods() ) {
			// 返回类型
			String returnType = method.getReturnType();
			if ( filterB.accept(returnType) ) {
				handleType(returnType, filterA, filterB, typeClassDefMap, references, handled);
			} else {
				references.add(classDefType);
				references.add(returnType);
				// return;
			}

			// 参数类型
			for ( CharSequence parameterTypeCharSequence : method.getParameterTypes() ) {

				String parameterType = parameterTypeCharSequence.toString();
				if ( filterB.accept(parameterType) ) {
					handleType(parameterType, filterA, filterB, typeClassDefMap, references, handled);
				} else {
					references.add(classDefType);
					references.add(parameterType);
					// return;
				}
			}

			MethodImplementation implementation = method.getImplementation();
			if ( implementation == null ) {
				continue;
			}

			for ( Instruction instruction : implementation.getInstructions() ) {
				if ( ! ( instruction instanceof ReferenceInstruction ) ) {
					continue;
				}

				ReferenceInstruction referenceInstruction = (ReferenceInstruction)instruction;


				switch ( referenceInstruction.getReferenceType() ) {
					case ReferenceType.TYPE:
						TypeReference reference = ( (TypeReference) referenceInstruction.getReference() );
						String type = reference.getType();
						if ( filterB.accept(type) ) {
							handleType(type, filterA, filterB, typeClassDefMap, references, handled);
						} else {
							references.add(classDefType);
							references.add(type);
							// return;
						}
						break;
					case ReferenceType.FIELD:
						FieldReference fieldReference = ( (FieldReference) referenceInstruction.getReference() );
						String type2 = fieldReference.getType();
						String definingClass2 = fieldReference.getDefiningClass();
						if ( filterB.accept(type2) ) {
							handleType(type2, filterA, filterB, typeClassDefMap, references, handled);
						} else {
							references.add(classDefType);
							references.add(definingClass2);
							// return;
						}

						if ( filterB.accept(definingClass2) ) {
							handleType(definingClass2, filterA, filterB, typeClassDefMap, references, handled);
						} else {
							references.add(classDefType);
							references.add(definingClass2);
							// return;
						}

						break;
					case ReferenceType.METHOD:
						MethodReference methodReference = ( (MethodReference) referenceInstruction.getReference() );
						// 处理方法所在类
						String definingClass3 = methodReference.getDefiningClass();
						if ( filterB.accept(definingClass3) ) {
							handleType(definingClass3, filterA, filterB, typeClassDefMap, references, handled);
						} else {
							references.add(classDefType);
							references.add(definingClass3);
							// return;
						}
						break;
						/*case ReferenceType.METHOD_PROTO:
						 handleClassType(((MethodProtoReference)(referenceInstruction.getReference())).getString(), filter, references, typeClassDefMap);
						 break;*/
					case ReferenceType.STRING:
						String string = ( (StringReference)( referenceInstruction.getReference() ) ).getString();
						if ( filterB.accept(string) ) {
							handleType(string, filterA, filterB, typeClassDefMap, references, handled);
						} else {
							references.add(classDefType);
							references.add(string);
							// return;
						}
						break;
					default:
						// System.out.println(referenceInstruction.getReference().getClass());
						break;
				}
			}
		}

	}



	private static void initTypesMap( File inputDexFiles, Map<String, ClassDef> typeClassDefMap ) throws IOException {
		MultiDexContainer<? extends DexBackedDexFile> loadDexContainer = DexFileFactory.loadDexContainer(inputDexFiles, null);
		for ( String dexName : loadDexContainer.getDexEntryNames() ) {
			final DexBackedDexFile dexFile = loadDexContainer.getEntry(dexName).getDexFile();
			Set<? extends DexBackedClassDef> classes = dexFile.getClasses();
			for ( ClassDef classDef : classes ) {
				String classDefType = classDef.getType();
				if ( !typeClassDefMap.containsKey(classDefType) ) {
					typeClassDefMap.put(classDefType, classDef);
				}
			}
		}
	}


	/**
	 * 搜索 从filter中使用 filter2的类
	 */


	public static interface PrefixFilter {
		public boolean filter( String classType );
	}



	private static void handleClassType( String classDefType, PrefixFilter filter, Set<String> references, Map<String, ClassDef> typeClassDefMap ) {
		if ( references.contains(classDefType) ) {
			return;
		}
		if ( filter.filter(classDefType) ) {
			return;
		}

		ClassDef classDef = typeClassDefMap.get(classDefType);
		// 标记已处理
		references.add(classDefType);

		// 父类
		String superclass = classDef.getSuperclass();

		handleClassType(superclass, filter, references, typeClassDefMap);

		// 接口
		for ( String interfaceType : classDef.getInterfaces() ) {
			handleClassType(interfaceType, filter, references, typeClassDefMap);
		}

		// 注解 
		//classDef.getAnnotations()

		// 字段
		for ( Field field : classDef.getFields() ) {
			handleClassType(field.getType(), filter, references, typeClassDefMap);
		}

		// 方法
		for ( Method method : classDef.getMethods() ) {
			// 返回类型
			handleMethodType(method, filter, references, typeClassDefMap);
		}
	}
	private static void handleMethodType2( Method method, PrefixFilter filter, Set<String> references, Map<String, ClassDef> typeClassDefMap ) {
		String definingClass = method.getDefiningClass();


		if ( references.contains(method.getReturnType()) ) {
			// 添加自己
			handleClassType(definingClass, filter, references, typeClassDefMap);
		}

		// 参数类型
		for ( CharSequence parameterType : method.getParameterTypes() ) {

			if ( references.contains(parameterType) ) {
				// 添加自己
				handleClassType(definingClass, filter, references, typeClassDefMap);
			}
		}

		MethodImplementation implementation = method.getImplementation();
		if ( implementation == null ) {
			return;
		}


		for ( Instruction instruction : implementation.getInstructions() ) {
			if ( ! ( instruction instanceof ReferenceInstruction ) ) {
				continue;
			}
			ReferenceInstruction referenceInstruction = (ReferenceInstruction)instruction;

			switch ( referenceInstruction.getReferenceType() ) {
				case ReferenceType.TYPE:
					TypeReference reference = ( (TypeReference) referenceInstruction.getReference() );
					String type = reference.getType();					
					if ( references.contains(type) ) {
						// 添加自己
						handleClassType(definingClass, filter, references, typeClassDefMap);
					}
					break;
				case ReferenceType.FIELD:
					FieldReference fieldReference = ( (FieldReference) referenceInstruction.getReference() );
					String type2 = fieldReference.getType();
					String definingClass2 = fieldReference.getDefiningClass();
					if ( references.contains(type2) ) {
						// 添加自己
						handleClassType(definingClass, filter, references, typeClassDefMap);
					}
					if ( references.contains(definingClass2) ) {
						// 添加自己
						handleClassType(definingClass, filter, references, typeClassDefMap);
					}

					break;
				case ReferenceType.METHOD:
					MethodReference methodReference = ( (MethodReference) referenceInstruction.getReference() );
					// 处理方法所在类
					String definingClass3 = methodReference.getDefiningClass();
					if ( references.contains(definingClass3) ) {
						// 添加自己
						handleClassType(definingClass, filter, references, typeClassDefMap);
					}
					handleClassType(definingClass, filter, references, typeClassDefMap);
					break;
					/*case ReferenceType.METHOD_PROTO:
					 handleClassType(((MethodProtoReference)(referenceInstruction.getReference())).getString(), filter, references, typeClassDefMap);
					 break;*/
				case ReferenceType.STRING:
					String string = ( (StringReference)( referenceInstruction.getReference() ) ).getString();
					if ( references.contains(string) ) {
						// 添加自己
						handleClassType(definingClass, filter, references, typeClassDefMap);
					}

					handleClassType(string, filter, references, typeClassDefMap);
					break;
				default:
					System.out.println(referenceInstruction.getReference().getClass());
					break;
			}
		}
	}

	private static void handleMethodType( Method method, PrefixFilter filter, Set<String> references, Map<String, ClassDef> typeClassDefMap ) {

		handleClassType(method.getDefiningClass(), filter, references, typeClassDefMap);
		handleClassType(method.getReturnType(), filter, references, typeClassDefMap);
		// 参数类型
		for ( CharSequence parameterType : method.getParameterTypes() ) {
			handleClassType(parameterType.toString(), filter, references, typeClassDefMap);
		}
		MethodImplementation implementation = method.getImplementation();
		if ( implementation == null ) {
			return;
		}


		for ( Instruction instruction : implementation.getInstructions() ) {
			if ( ! ( instruction instanceof ReferenceInstruction ) ) {
				continue;
			}
			ReferenceInstruction referenceInstruction = (ReferenceInstruction)instruction;

			switch ( referenceInstruction.getReferenceType() ) {
				case ReferenceType.TYPE:
					TypeReference reference = ( (TypeReference) referenceInstruction.getReference() );
					handleClassType(reference.getType(), filter, references, typeClassDefMap);
					break;
				case ReferenceType.FIELD:
					FieldReference fieldReference = ( (FieldReference) referenceInstruction.getReference() );
					handleClassType(fieldReference.getType(), filter, references, typeClassDefMap);
					handleClassType(fieldReference.getDefiningClass(), filter, references, typeClassDefMap);
					break;
				case ReferenceType.METHOD:
					MethodReference methodReference = ( (MethodReference) referenceInstruction.getReference() );
					// 处理方法所在类
					handleClassType(methodReference.getDefiningClass(), filter, references, typeClassDefMap);
					break;
					/*case ReferenceType.METHOD_PROTO:
					 handleClassType(((MethodProtoReference)(referenceInstruction.getReference())).getString(), filter, references, typeClassDefMap);
					 break;*/
				case ReferenceType.STRING:
					handleClassType(( (StringReference)( referenceInstruction.getReference() ) ).getString(), filter, references, typeClassDefMap);
					break;
				default:
					System.out.println(referenceInstruction.getReference().getClass());
					break;
			}
		}
	}
}
