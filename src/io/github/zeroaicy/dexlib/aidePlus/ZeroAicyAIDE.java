package io.github.zeroaicy.dexlib.aidePlus;
import io.github.zeroaicy.dexlib.analysis.DexFileAnalyzer;
import io.github.zeroaicy.dexlib.analysis.RevertDexFromMappingText;
import io.github.zeroaicy.dexlib.analysis.RevertMappingData;
import io.github.zeroaicy.dexlib.analysis.RewriterClassData;
import io.github.zeroaicy.dexlib.rewriter2.RewriteDexFileContainer;
import io.github.zeroaicy.tools.files.OpenFile;
import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.iface.Method;
import org.jf.dexlib2.iface.MultiDexContainer;
import io.github.zeroaicy.util.ContextUtil;
import android.view.WindowManager;
import java.util.Scanner;
import android.view.Window;
import android.app.Activity;

public class ZeroAicyAIDE{


	private static void aide_plus() throws IOException{
		//修复分析
		aide_plus aide_plus = 
		aide_plus_tools.getAidePlus("2.2");
		aide_plus.run();
		System.out.println("完成");
	}
	
	public static void main(String[] args) throws IOException{

		//method2();

		//sort();
		aide_plus();

		//method();
		//还原();
	}

	/******************************************************************/
	public void 清除无用类() throws IOException{
		/**
		 aide_plus_2 aide_plus_2 = new aide_plus_2();
		 AIDERepairAnalysis.analysis(aide_plus_2.getInputDexsPath(), aide_plus_2.getOutputMappingPath() + "_.txt");
		 /*/
		删除();
		//*/
	}

	private static void sort(){

		String v = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2/aide+_mapping_2.txt";
		//v = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_1/备份[封存]/aide+_mapping_output_1.txt";
		RevertDexFromMappingText.writeRevertMappingData(v, new RevertMappingData(v));


	}

	private static void 删除() throws IOException{
		OpenFile open = OpenFile.open("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/test/dx-lib类.txt");

		String inputDexs = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/test/classes3.zip";

		File inputDexFiles = new File(inputDexs);
		final HashSet<String> hashSet = new HashSet<String>(open.list());
		MultiDexContainer<? extends DexBackedDexFile> loadDexContainer = DexFileFactory.loadDexContainer(inputDexFiles, null);

		RewriteDexFileContainer rewriteDexContainer = new RewriteDexFileContainer();
		for ( String dexName : loadDexContainer.getDexEntryNames() ){

			final DexBackedDexFile dexFile = loadDexContainer.getEntry(dexName).getDexFile();
			rewriteDexContainer.putEntry(dexName, new DexFile(){
					Set<ClassDef> classes = new HashSet<>();
					{
						for ( ClassDef classDef : dexFile.getClasses() ){
							if ( !hashSet.contains(classDef.getType()) ){
								classes.add(classDef);
							}
						}
					}
					@Override
					public Set<? extends ClassDef> getClasses(){
						return classes;
					}
					@Override
					public Opcodes getOpcodes(){
						return dexFile.getOpcodes();
					}
				});
		}
		String outputDexs = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/test/classes3-删除.zip";
		File dexsZipOutFile = new File(outputDexs);
		//将重写后DexFile写入zip文件
		RevertDexFromMappingText.writeDexToZip(dexsZipOutFile, rewriteDexContainer);

	}
	/*
	 * 还原模式
	 */
	public static void 还原() throws IOException{
		String mappingFilePath = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/还原/aide+_mapping_output_1.txt";

		String inputDexs = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/还原/还原.zip";
		String outputDexs = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/还原/还原_out.zip";

		RevertDexFromMappingText.revert(inputDexs, outputDexs, false, true, mappingFilePath);

	}

	private static void method() throws IOException{
		String inputDexs = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2/AIDE+_1.zip";
		File inputDexFiles = new File(inputDexs);
		MultiDexContainer<? extends DexBackedDexFile> loadDexContainer = DexFileFactory.loadDexContainer(inputDexFiles, null);

		String mappingFilePath = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2/aide+_mapping_2.txt";

		RevertMappingData revertMappingData = new RevertMappingData(mappingFilePath);

		new DexFileAnalyzer(loadDexContainer, revertMappingData){

			@Override
			public void analysis(){
				for ( ClassDef classDef : typeClassDefMap.values() ){
					Method input_store = null;
					Method output_store = null;

					boolean needAdd = true;
					loop: for ( Method method : classDef.getVirtualMethods() ){
						List<? extends CharSequence> parameterTypes = method.getParameterTypes();
						if ( parameterTypes.size() != 1 ){
							continue;
						}
						CharSequence parameterType = parameterTypes.get(0);
						if ( parameterType.equals("Labcd/z3;") ){
							if ( input_store != null ){
								needAdd = false;
								System.out.println(classDef.getType() + "重复");
								break loop;
							}
							input_store = method;
						}

						if ( parameterType.equals("Labcd/a4;") ){
							if ( output_store != null ){
								needAdd = false;
								System.out.println(classDef.getType() + "[重复]");
								break loop;
							}
							output_store = method;
						}
					}

					if ( needAdd && (input_store != null || output_store != null) ){
						String type = classDef.getType();
						RewriterClassData rewriterClassData = revertMappingData.getRewriterClassData(type);
						if ( rewriterClassData == null ){
							rewriterClassData = revertMappingData.addRewriterClassData(type, type);
						}
						if ( input_store != null ){
							rewriterClassData.addMethodData(input_store.getName(), getParameterTypesSignature(input_store), "store");							
						}
						if ( output_store != null ){
							rewriterClassData.addMethodData(output_store.getName(), getParameterTypesSignature(output_store), "store");							
						}
					}
				}
			}
		};
		RevertDexFromMappingText.writeRevertMappingData("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2/aide+_mapping_2_特征规则生成.txt", revertMappingData);
	}

	private static void method2(){
		final Activity activity = ContextUtil.getActivity();
		activity.runOnUiThread(new Runnable(){
				@Override
				public void run(){
					Window window = activity.getWindow();
					window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);

				}
			});

		new Scanner(System.in).nextLine();
		System.out.println("End");
	}
}