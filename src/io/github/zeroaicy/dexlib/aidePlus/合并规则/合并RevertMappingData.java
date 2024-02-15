package io.github.zeroaicy.dexlib.aidePlus.合并规则;
import io.github.zeroaicy.dexlib.analysis.RevertDexFromMappingText;
import io.github.zeroaicy.dexlib.analysis.RevertMappingData;
import io.github.zeroaicy.dexlib.analysis.RewriterClassData;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class 合并RevertMappingData{
	public static void main3(String[] args){
		
		List<String> mappingList = new ArrayList<>();
		mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_2.txt");
		mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_3.txt");


		List<RevertMappingData> revertMappingDataList = new ArrayList<>();
		for ( String mapping : mappingList ){
			revertMappingDataList.add(new RevertMappingData(mapping));
		}

		RevertMappingData mainRevertMappingData = revertMappingDataList.get(0);
		revertMappingDataList.remove(0);

		//主RewriterClassDataMap，所有改变都集中在此
		mainRevertMappingData.merge(revertMappingDataList);
		
		RevertDexFromMappingText.writeRevertMappingData("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_合并测试.txt", mainRevertMappingData);
	}
	
	
}
