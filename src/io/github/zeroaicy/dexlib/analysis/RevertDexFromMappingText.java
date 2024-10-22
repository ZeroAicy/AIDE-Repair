
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
import java.util.Set;
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


//通过Mapping.txt还原dex
public class RevertDexFromMappingText{
	/** 
	 * 多dex文件兼容
	 * dex是分开用重写器重写方法
	 * 分析 ClassDef的字段及方法构造出数据库用于查找
	 * 数据库应该是全局的或者说是一组dex共用的
	 * ClassDef暂时不考虑冲突问题里不考虑类名相同的ClassDef
	 * 
	 *
	 *
	 */


	/**
	 * inputDexs 输入dex集合，单个dex或多个zip
	 * outputDexs 输出dex集合, 输出zip文件，即使输入单个dex
	 * mappingFilePath mapping规则文件路径
	 * contrary 与mapping规则相反，即逆规则文件
	 */


	public static void revert(String inputDexs, String outputDexs, Map<String, String> switchMap) throws IOException{
		if ( switchMap == null ){
			switchMap = Collections.<String, String>emptyMap();
		}

		String mappingFilePath = switchMap.get(SwitchNameConstants.mappingFilePath);
		if ( mappingFilePath == null || mappingFilePath.isEmpty() ){
			throw new Error(SwitchNameConstants.mappingFilePath + " 未设置");
		}

		RevertMappingData revertMapping = new RevertMappingData(mappingFilePath, switchMap.containsKey(SwitchNameConstants.contrary));

		File inputDexFiles = new File(inputDexs);
		MultiDexContainer<? extends DexBackedDexFile> loadDexContainer = DexFileFactory.loadDexContainer(inputDexFiles, null);

		// 启用修复分析[aidl Enum 内部类信息]
		System.out.println("分析缺省规则...");
		DexFileAnalyzer dexFileAnalyzer = new DexFileAnalyzer(loadDexContainer, revertMapping, switchMap);
		dexFileAnalyzer.analysis();

		// 获取设置的输出路径
		String outputMappingPath = switchMap.get(SwitchNameConstants.outputMappingPath);
		if ( outputMappingPath == null || outputMappingPath.isEmpty() ){
			throw new Error(SwitchNameConstants.outputMappingPath + " 未设置");
		}
		// 写入修补好的规则[全量]
		writeRevertMappingData(outputMappingPath, revertMapping);
		// 检查是否only 输出全量规则
		if ( switchMap.containsKey(SwitchNameConstants.onlyOutputMapping) ){
			//仅输出Mapping规则文件
			return;
		}
		//重写
		RewriterModule ruleRewriterModule = new RevertRewriterModule(dexFileAnalyzer);
		DexRewriter rewriter = new DexRewriter(ruleRewriterModule);

		System.out.println("开始重写");

		//重写后的Dex容器
		RewriteDexFileContainer rewriteDexContainer = new RewriteDexFileContainer();

		for ( String dexEntryName : loadDexContainer.getDexEntryNames() ){
			DexBackedDexFile loadDexFile = loadDexContainer.getEntry(dexEntryName).getDexFile();
			//使用重写器重写Dex
			DexFile rewriteDexFile = rewriter.getDexFileRewriter().rewrite(loadDexFile);
			
			//向容器中添加
			rewriteDexContainer.putEntry(dexEntryName, rewriteDexFile);
		}

		File dexsZipOutFile = new File(outputDexs);
		//将重写后DexFile写入zip文件
		writeDexToZip(dexsZipOutFile, rewriteDexContainer);



		System.out.println("重写完成");

	}

	public static void writeRevertMappingData(String outputMappingPath, RevertMappingData revertMapping){
		if ( outputMappingPath != null
			&& outputMappingPath.length() > 0 ){
			try{
				System.out.println("输出修改后的规则");
				Map<String, RewriterClassData> confusevtClassDataMap = revertMapping.getRewriterClassDataMap();
				List<RewriterClassData> rewriterClassDataList = new ArrayList<RewriterClassData>(confusevtClassDataMap.values());
				//排序
				Collections.sort(rewriterClassDataList);
				File file = new File(outputMappingPath);
				file.createNewFile();
				PrintStream ruleOutputStream = new PrintStream(file);

				for ( RewriterClassData rewriterClassData : rewriterClassDataList ){
					ruleOutputStream.println(rewriterClassData.toString());
				}
				ruleOutputStream.close();
				System.out.println("规则写入完成");
			}
			catch (Exception e){
				System.out.println("规则写入失败 -> " + e.getMessage());
			}
		}
	}



	public static void writeDexToZip(File dexsZipOutFile, MultiDexContainer<DexFile> rewriteDexContainer) throws IOException{

		FileOutputStream dexsFileOutput = new FileOutputStream(dexsZipOutFile);
		ZipOutputStream zipOutput = new ZipOutputStream(dexsFileOutput);

		for ( String dexEntryName : rewriteDexContainer.getDexEntryNames() ){

			System.out.printf("\n重写%s...\n", dexEntryName);
			
			DexFile inputDexFile = rewriteDexContainer.getEntry(dexEntryName).getDexFile();

			DexPool dexPool = new DexPool(inputDexFile.getOpcodes());

			for ( ClassDef classDef: inputDexFile.getClasses() ){
				try{
					dexPool.internClass(classDef);
				}
				catch (Throwable e){
					throw new Error("dexEntryName: " + dexEntryName + " -> classDef: " + classDef.getType(), e);
				}
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
