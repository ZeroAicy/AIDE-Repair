package io.github.zeroaicy.dexlib.analysis;

import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jf.dexlib2.AccessFlags;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.iface.Method;
import org.jf.dexlib2.iface.MultiDexContainer;
import org.jf.dexlib2.iface.Field;
import org.jf.dexlib2.iface.instruction.Instruction;
import org.jf.dexlib2.iface.reference.TypeReference;
import org.jf.dexlib2.ReferenceType;
import org.jf.dexlib2.Opcode;
import org.jf.dexlib2.iface.instruction.formats.Instruction35mi;
import org.jf.dexlib2.iface.instruction.ReferenceInstruction;
import org.jf.dexlib2.iface.reference.FieldReference;
import org.jf.dexlib2.iface.reference.Reference;
import org.jf.dexlib2.iface.reference.MethodReference;
import org.jf.dexlib2.iface.MethodImplementation;
import org.jf.dexlib2.iface.Annotation;

/*
 * 用于分析AIDE混淆修复的
 */
public class AIDERepairAnalysis extends DexFileAnalyzer{

	/*
	 * 分析后输出规则
	 */
	public static void analysis(String inputDexs, String outputMappingPath) throws IOException{
		File inputDexFiles = new File(inputDexs);
		MultiDexContainer<? extends DexBackedDexFile> loadDexContainer = DexFileFactory.loadDexContainer(inputDexFiles, null);

		try{
			AIDERepairAnalysis aIDERepairAnalysis = new AIDERepairAnalysis(loadDexContainer);
			PrintStream ruleOutputStream = new PrintStream(new File(outputMappingPath));

			Map<String, RewriterClassData> confusevtClassDataMap = aIDERepairAnalysis.getRevertMappingData().getRewriterClassDataMap();
			List<RewriterClassData> rewriterClassDataList = new ArrayList<RewriterClassData>(confusevtClassDataMap.values());
			//排序
			Collections.sort(rewriterClassDataList);

			System.out.println("开始写入规则");
			for ( RewriterClassData rewriterClassData : rewriterClassDataList ){
				ruleOutputStream.println(rewriterClassData.toString());
			}
			ruleOutputStream.close();
			System.out.println("规则写入完成");

		}
		catch (IOException e){
			e.printStackTrace();
		}
	}

	/*
	 * 不使用--Mapping文件
	 * 不使用--通用混修复分析
	 */
	public AIDERepairAnalysis(MultiDexContainer<? extends DexFile> dexContainer) throws IOException{
		super(dexContainer);
	}

	@Override
	public void analysis(){
		//super.analysis();

		// 类依赖分析
		Set<String> keySet = typeClassDefMap.keySet();
		List<String> allClassTypes = new ArrayList<String>(keySet);

		//需要查找的搜索类
		Set<String> classTypeRefSet =  new HashSet<String>();

		String findPackageName = "Lcom/google/";
		/*for ( String classType : allClassTypes ){
		 if ( classType.startsWith(findPackageName) ){
		 classTypeRefSet.add(classType);
		 }
		 }*/
		findPackageName = "dx-lib";
		classTypeRefSet.add("Labcd/km;");
		classTypeRefSet.add("Labcd/kj;");
		classTypeRefSet.add("Labcd/po;");
		Set<String> filter = new HashSet<String>();
		filter.add("Lcom/aide/ui/build/packagingservice/ExternalPackagingService$a;");
		filter.add("Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$Task;");

		//遍历除classTypeRefSet有无引用
		allClassTypes.removeAll(classTypeRefSet);

		method(allClassTypes, classTypeRefSet, filter);

		Set<String> abcdClassTypeRefSet =  new HashSet<String>();
		for ( String classType : classTypeRefSet ){
			if ( classType.startsWith("Labcd/") ){
				abcdClassTypeRefSet.add(classType);
			}
		}
		System.out.println("直接引用:: " + findPackageName);
		for ( String classType : abcdClassTypeRefSet ){
			System.out.println(classType);
		}

		Set<String> allRefSet = new HashSet<String>(abcdClassTypeRefSet);
		int size;
		//当 hashSet不在增加说明找不到了
		do{
			size = allRefSet.size();
			loop: for ( String classType : allClassTypes ){
				String classType2 = classType;
				int lastIndexOf = classType2.lastIndexOf('$');
				while ( lastIndexOf > 0 ){
					classType2 = classType2.substring(0, lastIndexOf);
					if ( allRefSet.contains(classType2 + ";") ){
						allRefSet.add(classType);
						continue loop;
					}
					lastIndexOf = classType2.lastIndexOf('$');
				}
			}
			method(allClassTypes, allRefSet, filter);

		}while( size != allRefSet.size());


		System.out.println("全部引用:: " + findPackageName);
		List<String> arrayList = new ArrayList<String>(allRefSet);
		Collections.sort(arrayList);

		//*
		for ( String classType : arrayList ){
			System.out.println(classType);
		}//*/

		System.out.println("命令");
	}

	private void method(List<String> allClassTypes, Set<String> classTypeRefSet, Set<String> filter){
		HashSet<String> hashSet = new HashSet<String>(allClassTypes);
		loop: for ( String classType : hashSet ){
			classTypeRefSet.removeAll(filter);

			ClassDef classDef = typeClassDefMap.get(classType);

			if ( classTypeRefSet.contains(classType) ){
				allClassTypes.remove(classType);

				//自己
				// 除了java以及javax
				{
					String superclass = classDef.getSuperclass();
					method(superclass, classTypeRefSet);
				}
				
				List<String> interfaces = classDef.getInterfaces();
				for ( String s : interfaces ){
					method(s, classTypeRefSet);
				}
				
				for ( Field field : classDef.getFields() ){
					String type = field.getType();
					method(type, classTypeRefSet);
				}
				
				for ( Method method : classDef.getMethods() ){
					{
						String returnType = method.getReturnType();
						method(returnType, classTypeRefSet);
					}

					MethodImplementation implementation = method.getImplementation();
					if ( implementation == null ){
						continue;
					}

					Iterable<? extends Instruction> instructions = implementation.getInstructions();
					if ( instructions == null ){
						continue;
					}

					for ( Instruction instruction : instructions ){
						Opcode opcode = instruction.getOpcode();
						int referenceType = opcode.referenceType;
						if ( referenceType == ReferenceType.FIELD ){
							Reference reference = ((ReferenceInstruction)instruction).getReference();
							FieldReference fieldReference = (FieldReference) reference;

							String definingClass = fieldReference.getDefiningClass();
							method(definingClass, classTypeRefSet);
							String type = fieldReference.getType();
							method(type, classTypeRefSet);
						}
						else if ( referenceType == ReferenceType.TYPE ){
							Reference reference = ((ReferenceInstruction)instruction).getReference();
							TypeReference fieldReference = (TypeReference) reference;
							String type = fieldReference.getType();
							method(type, classTypeRefSet);
						}
						else if (  referenceType == ReferenceType.METHOD ){
							Reference reference = ((ReferenceInstruction)instruction).getReference();
							MethodReference fieldReference = (MethodReference) reference;
							String definingClass = fieldReference.getDefiningClass();
							method(definingClass, classTypeRefSet);

							String returnType = fieldReference.getReturnType();
							method(returnType, classTypeRefSet);
							List<? extends CharSequence> parameterTypes = fieldReference.getParameterTypes();
							for ( CharSequence parameterType : parameterTypes ){
								method(parameterType.toString(), classTypeRefSet);

							}
						}
					}
				}

				continue;
			}

			String superclass = classDef.getSuperclass();

			if ( classTypeRefSet.contains(superclass) ){
				classTypeRefSet.add(classType);
				continue;
			}
			for ( Field field : classDef.getFields() ){
				if ( classTypeRefSet.contains(field.getType()) ){
					classTypeRefSet.add(classType);
					continue loop;
				}
			}

			List<String> interfaces = classDef.getInterfaces();
			for ( String interfaceType : interfaces ){
				if ( classTypeRefSet.contains(interfaceType) ){
					classTypeRefSet.add(classType);
					continue loop;
				}				
			}


			for ( Method method : classDef.getMethods() ){
				if ( classTypeRefSet.contains(method.getReturnType()) ){
					classTypeRefSet.add(classType);

					continue loop;
				}
				MethodImplementation implementation = method.getImplementation();
				if ( implementation == null ){
					continue loop;
				}
				Iterable<? extends Instruction> instructions = implementation.getInstructions();
				if ( instructions == null ){
					continue loop;
				}

				for ( Instruction instruction : instructions ){
					Opcode opcode = instruction.getOpcode();
					int referenceType = opcode.referenceType;
					if ( referenceType == ReferenceType.FIELD ){
						Reference reference = ((ReferenceInstruction)instruction).getReference();
						FieldReference fieldReference = (FieldReference) reference;
						if ( classTypeRefSet.contains(fieldReference.getDefiningClass()) ){
							classTypeRefSet.add(classType);
							continue loop;							
						}
						if ( classTypeRefSet.contains(fieldReference.getType()) ){
							classTypeRefSet.add(classType);
							continue loop;							
						}
					}
					else if ( referenceType == ReferenceType.TYPE ){
						Reference reference = ((ReferenceInstruction)instruction).getReference();
						TypeReference fieldReference = (TypeReference) reference;
						if ( classTypeRefSet.contains(fieldReference.getType()) ){
							classTypeRefSet.add(classType);
							continue loop;							
						}
					}
					else if (  referenceType == ReferenceType.METHOD ){
						Reference reference = ((ReferenceInstruction)instruction).getReference();
						MethodReference fieldReference = (MethodReference) reference;
						if ( classTypeRefSet.contains(fieldReference.getDefiningClass()) ){
							classTypeRefSet.add(classType);
							continue loop;							
						}
						if ( classTypeRefSet.contains(fieldReference.getReturnType()) ){
							classTypeRefSet.add(classType);
							continue loop;							
						}
						List<? extends CharSequence> parameterTypes = fieldReference.getParameterTypes();
						
						for ( CharSequence parameterType : parameterTypes ){
							
							if ( classTypeRefSet.contains(parameterType.toString()) ){
								classTypeRefSet.add(classType);
								continue loop;							
							}
						}
					}
				}
			}
		}
	}

	private void method(String superclass, Set<String> classTypeRefSet){
		superclass = superclass.replace("[", "");
		
		if ( superclass.length() > 2
			&& !superclass.startsWith("[") 
			&& !superclass.startsWith("Ljava") 
			&& !classTypeRefSet.contains(superclass) ){
			classTypeRefSet.add(superclass);
			System.out.println("添加: " + superclass);
		}
	}


	public static String getMethodParameters(Method method){
		StringBuilder methodSignature = new StringBuilder("(");
		for ( CharSequence parameterType : method.getParameterTypes() ){
			methodSignature.append(parameterType);
		}
		methodSignature.append(")");

		return methodSignature.toString();
	}

	public static String getMethodSignature(String newMethodName, Method method){
		StringBuilder methodSignature = new StringBuilder("(");
		for ( CharSequence parameterType : method.getParameterTypes() ){
			methodSignature.append(parameterType);
		}
		methodSignature.append(")");
		return newMethodName + methodSignature.toString();
	}


}
