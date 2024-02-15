package io.github.zeroaicy.dexlib.analysis;

import io.github.zeroaicy.dexlib.rewriter.*;
import io.github.zeroaicy.dexlib.rewriter2.*;
import java.io.*;
import java.util.*;
import java.util.zip.*;
import org.jf.dexlib2.*;
import org.jf.dexlib2.dexbacked.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.rewriter.*;
import org.jf.dexlib2.writer.io.*;
import org.jf.dexlib2.writer.pool.*;

public class 修复标识符 extends DexFileAnalyzer{
	public static void main(String[] args) throws IOException{
		testDexRewriter("/storage/emulated/0/AppProjects1/.ZeroAicy/git/AIDE+/build/r8/r8-r8-8.2.42.dex.zip","/storage/emulated/0/AppProjects1/.ZeroAicy/git/AIDE+/build/r8/r8-r8-8.2.42-修复标识符.dex.zip");
	}
	
	private static void testDexRewriter(String dexsZipFilePath, String outputDexZipFilePath) throws IOException{
		File dexsZipFile = new File(dexsZipFilePath);

		MultiDexContainer<? extends DexBackedDexFile> loadDexContainer = DexFileFactory.loadDexContainer(dexsZipFile, null);
		DexFileAnalyzer dexFileAnalyzer = new 修复标识符(loadDexContainer);
		dexFileAnalyzer.analysis();
		
		RevertMappingData revertMapping = dexFileAnalyzer.getRevertMappingData();

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
	public 修复标识符(MultiDexContainer<? extends DexFile> dexContainer) throws IOException{
		super(dexContainer);
	}

	@Override
	public void analysis(){
		for ( ClassDef classDef : typeClassDefMap.values() ){
			String type = classDef.getType();
			String replace;
			/*if( type.startsWith("Lj$/")){
				replace = type.replace("Lj$/", "Ljj_/");
			}else {
				replace = type.replace('-', '_');
			}*/
			replace = type.replace('-', '_');
			RewriterClassData addRewriterClassData = addRewriterClassData(type, replace);
			for( Method method : classDef.getMethods()){
				String name = method.getName();
				addRewriterClassData.addMethodData(name, getParameterTypesSignature(method), name.replace('-', '_'));
			}
			for( Field field : classDef.getFields()){
				String name = field.getName();
				addRewriterClassData.addField(name, name.replace('-', '_'));
			}
		}
		revertMappingData.shrink();
	}
	
}
