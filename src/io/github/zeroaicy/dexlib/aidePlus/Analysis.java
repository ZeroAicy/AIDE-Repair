package io.github.zeroaicy.dexlib.aidePlus;

import io.github.zeroaicy.dexlib.analysis.DexFileAnalyzer;
import io.github.zeroaicy.dexlib.analysis.RevertMappingData;
import io.github.zeroaicy.dexlib.analysis.RewriterClassData;
import io.github.zeroaicy.dexlib.analysis.SwitchNameConstants;
import io.github.zeroaicy.dexlib.rewriter.RevertRewriterModule;
import io.github.zeroaicy.dexlib.rewriter2.RewriteDexFileContainer;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.iface.MultiDexContainer;
import org.jf.dexlib2.rewriter.DexRewriter;
import org.jf.dexlib2.rewriter.RewriterModule;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.Field;
import org.jf.dexlib2.iface.Annotation;

public class Analysis{
	public static void main(String[] args) throws IOException{
		String dexsZipFilePath = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2.3/AIDE+_2.2.zip";
		testDexRewriter(dexsZipFilePath, new RevertMappingData(), "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2.3/AIDE+_2.2.zip");
	}
	private static void testDexRewriter(String dexsZipFilePath, RevertMappingData revertMapping, String outputDexZipFilePath) throws IOException{
		File dexsZipFile = new File(dexsZipFilePath);

		MultiDexContainer<? extends DexBackedDexFile> loadDexContainer = DexFileFactory.loadDexContainer(dexsZipFile, null);
		Map<String, String> switchMap = new HashMap<>();
		//启用修复分析
		switchMap.put(SwitchNameConstants.repairAnalysis, null);

		DexFileAnalyzer dexFileAnalyzer = new DexFileAnalyzer(loadDexContainer, revertMapping, switchMap){
			public void analysis(){
				for ( ClassDef classDef : typeClassDefMap.values() ){
					String type = classDef.getType();
					for ( Field field : classDef.getStaticFields() ){
						//我需要修改"Ldalvik/annotation/InnerClass;注解的name的值

						for ( Annotation annotation : field.getAnnotations() ){
							String annotationType = annotation.getType();

							if ( "Labcd/gy;".equals(annotationType) ){
								RewriterClassData rewriterClassData = addRewriterClassData(type, type);
								rewriterClassData.addField(field.getName(), "exceptionEnabled");
								continue;
							}
							if ( "Labcd/fy;".equals(annotationType) ){
								RewriterClassData rewriterClassData = addRewriterClassData(type, type);
								rewriterClassData.addField(field.getName(), "parametersEnabled");
								continue;
							}
						}
					}
				}
			}
		};
		dexFileAnalyzer.analysis();



		RewriterModule ruleRewriterModule = new RevertRewriterModule(dexFileAnalyzer);
		DexRewriter rewriter = new DexRewriter(ruleRewriterModule);

		System.out.println("开始重写dex");
		//dex重写后的Dex容器
		RewriteDexFileContainer rewriteDexContainer = new RewriteDexFileContainer();
		for ( String dexEntryName : loadDexContainer.getDexEntryNames() ){
			DexBackedDexFile loadDexFile = loadDexContainer.getEntry(dexEntryName).getDexFile();
			//使用dex重写器重写Dex
			DexFile rewriteDexFile = rewriter.getDexFileRewriter().rewrite(loadDexFile);
			//向容器中添加
			rewriteDexContainer.putEntry(dexEntryName, rewriteDexFile);
		}

		File dexsZipOutFile = new File(outputDexZipFilePath);

		PrintStream ruleOutputStream = new PrintStream(new File(dexsZipOutFile.getParentFile(), "rule_changer.txt"));

		Map<String, RewriterClassData> confusevtClassDataMap = revertMapping.getRewriterClassDataMap();
		List<RewriterClassData> rewriterClassDataList = new ArrayList<RewriterClassData>(confusevtClassDataMap.values());
		//排序
		Collections.sort(rewriterClassDataList);

		System.out.println("开始写入规则");
		for ( RewriterClassData rewriterClassData : rewriterClassDataList ){
			ruleOutputStream.println(rewriterClassData.toString());
		}

		ruleOutputStream.close();
		System.out.println("规则写入完成");
		System.out.println("dex写入完成");

	}
}
