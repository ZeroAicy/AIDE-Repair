package io.github.zeroaicy.dexlib.analysis;

import io.github.zeroaicy.dexlib.rewriter.RevertRewriterModule;
import io.github.zeroaicy.dexlib.rewriter2.RewriteDexFileContainer;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.iface.MultiDexContainer;
import org.jf.dexlib2.rewriter.DexRewriter;
import org.jf.dexlib2.rewriter.RewriterModule;
import org.jf.dexlib2.writer.io.MemoryDataStore;
import org.jf.dexlib2.writer.pool.DexPool;

public class 修复内部类信息{

	public static void main_5(String[] args) throws Exception{
		testDexRewriter("/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/AIDE+/appBase2/libs/classes-3.dex", new RevertMappingData(), "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/AIDE+/appBase2/libs/classes-4-修复内部类.dex");
	}

	private static void testDexRewriter(String dexsZipFilePath, RevertMappingData revertMapping, String outputDexZipFilePath) throws IOException{
		File dexsZipFile = new File(dexsZipFilePath);

		MultiDexContainer<? extends DexBackedDexFile> loadDexContainer = DexFileFactory.loadDexContainer(dexsZipFile, null);
		//启用修复分析
		boolean repairAnalysis = false;
		DexFileAnalyzer dexFileAnalyzer = new DexFileAnalyzer(loadDexContainer, revertMapping, repairAnalysis);
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
		//将重写后DexFile写入zip文件
		writeDexToZip(dexsZipOutFile, rewriteDexContainer);

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
	private static void writeDexToZip(File dexsZipOutFile, MultiDexContainer<DexFile> rewriteDexContainer) throws IOException{

		FileOutputStream dexsFileOutput = new FileOutputStream(dexsZipOutFile);
		ZipOutputStream zipOutput = new ZipOutputStream(dexsFileOutput);

		for ( String dexEntryName : rewriteDexContainer.getDexEntryNames() ){
			DexFile inputDexFile = rewriteDexContainer.getEntry(dexEntryName).getDexFile();
			DexPool dexPool = new DexPool(inputDexFile.getOpcodes());
			for ( ClassDef classDef: inputDexFile.getClasses() ){
				dexPool.internClass(classDef);
			}

			MemoryDataStore memoryDataStore = new MemoryDataStore(1024 * 100);
			dexPool.writeTo(memoryDataStore);

			ZipEntry zipEntry = new ZipEntry(dexEntryName);
			zipEntry.setSize(memoryDataStore.getSize());
			zipOutput.putNextEntry(zipEntry);
			zipOutput.write(memoryDataStore.getBuffer(), 0, memoryDataStore.getSize());
			zipOutput.closeEntry();
		}
		//关闭压缩包
		zipOutput.close();
		dexsFileOutput.close();
	}
}
