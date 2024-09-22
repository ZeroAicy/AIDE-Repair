package io.github.zeroaicy.dexlib.aidePlus.合并规则;
import io.github.zeroaicy.dexlib.analysis.RevertDexFromMappingText;
import io.github.zeroaicy.dexlib.analysis.RevertMappingData;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import io.github.zeroaicy.dexlib.analysis.RewriterClassData;

public class 合并RevertMappingData{
	public static void main9(String[] args){
		//sort();
		System.out.println("结束");
	}


	/**
	 * 排序
	 */
	private static void sort(){

		String v = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2.2/aide+_mapping_2.2.txt";
		//v = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_1/备份[封存]/aide+_mapping_output_1.txt";
		RevertDexFromMappingText.writeRevertMappingData(v, new RevertMappingData(v));

	}
	public static void main(String[] args){

		List<String> mappingList = new ArrayList<>();
		mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_1.txt");
		mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_2.0.txt");
		// mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_2.1.txt");
		mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_2.2.txt");


		List<RevertMappingData> revertMappingDataList = new ArrayList<>();
		for ( String mapping : mappingList ){
			revertMappingDataList.add(new RevertMappingData(mapping));
		}

		RevertMappingData mainRevertMappingData = new RevertMappingData();

		//主RewriterClassDataMap，所有改变都集中在此
		mainRevertMappingData.merge(revertMappingDataList);

		//移除无效或未修改的RewriterClassData
		shrink(mainRevertMappingData);


		RevertDexFromMappingText.writeRevertMappingData("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_0.txt", mainRevertMappingData);
	}

	public static void shrink(RevertMappingData revertMappingData){
		List<RewriterClassData> rewriterClassDataList = new ArrayList<RewriterClassData>(
			revertMappingData.getRewriterClassDataMap().values());

		for ( RewriterClassData rewriterClassData : rewriterClassDataList ){
			shrink(revertMappingData, rewriterClassData);
		}
	}
	public static void shrink(RevertMappingData revertMappingData, RewriterClassData rewriterClassData){
		if ( rewriterClassData != null ){
			if( rewriterClassData.notChange() ){
				//空的移除
				revertMappingData.getRewriterClassDataMap().remove(rewriterClassData.getConfusevt());
			}else{
				rewriterClassData.shrink();
			}
		}
			
	}


}
