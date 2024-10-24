package io.github.zeroaicy.dexlib.aidePlus.合并规则;
import io.github.zeroaicy.dexlib.analysis.RevertDexFromMappingText;
import io.github.zeroaicy.dexlib.analysis.RevertMappingData;
import io.github.zeroaicy.dexlib.analysis.RewriterClassData;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class 合并RevertMappingData {
	public static void main9(String[] args) {
		//sort();
		System.out.println("结束");
	}


	/**
	 * 排序
	 */
	private static void sort() {

		String v = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2.2/aide+_mapping_2.2.txt";
		//v = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_1/备份[封存]/aide+_mapping_output_1.txt";
		RevertDexFromMappingText.writeRevertMappingData(v, new RevertMappingData(v));

	}
	public static void main(String[] args) {

		List<String> mappingList = new ArrayList<>();
		
		
		/*
		mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_1.txt");
		mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_2.0.txt");
		mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_2.1.txt");
		mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_2.2.txt");
		mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_2.3.txt");
		*/
		String mergeOutput = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_合并测试/aide+_mapping_output_0.txt";
		
		mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2.3.1/合并规则/aide+_mapping_1.txt");
		mappingList.add("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2.3.1/合并规则/aide+_mapping_2.0.txt");
		mergeOutput = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2.3.1/合并规则/aide+_mapping_merge.txt";
		// 必须顺序合并
		// Collections.reverse(mappingList);

		List<RevertMappingData> revertMappingDataList = new ArrayList<>();
		for (String mapping : mappingList) {
			revertMappingDataList.add(new RevertMappingData(mapping));
		}

		RevertMappingData mainRevertMappingData = new RevertMappingData();

		//主RewriterClassDataMap，所有改变都集中在此
		mainRevertMappingData.merge(revertMappingDataList);

		//移除无效或未修改的RewriterClassData
		shrink(mainRevertMappingData);
		checkRevertMappingData(mainRevertMappingData);
		RevertDexFromMappingText.writeRevertMappingData(mergeOutput, mainRevertMappingData);
	}

	public static void checkRevertMappingData(RevertMappingData revertMappingData) {
		Map<String, RewriterClassData> rewriterClassDataMap = revertMappingData.getRewriterClassDataMap();
		Set<String> reClassNamedSet = new HashSet<>();
		for (Map.Entry<String, RewriterClassData> entry : rewriterClassDataMap.entrySet()) {

			RewriterClassData rewriterClassData = entry.getValue();
			// 重命名后
			String renamed = rewriterClassData.getRenamed();
			// 检查参数中，类签名是否使用了，重命名后的类签名
			if (!rewriterClassData.notChangeClassName()) {
				reClassNamedSet.add(renamed);
			}
		}

		// 检查方法签名中是否使用重命名后的类名

		// 效率非常低
		for (RewriterClassData rewriterClassData : rewriterClassDataMap.values()) {
			String confusevt = rewriterClassData.getConfusevt();
			Map < String, RewriterClassData.MethodData > methodDataMap = rewriterClassData.getMethodDataMap();
			if (methodDataMap == null) continue;

			for (RewriterClassData.MethodData methodData : methodDataMap.values()) {
				if (methodData.renamed.indexOf('(') >= 0
					|| methodData.renamed.indexOf(')') >= 0) {
					System.out.println(methodData + " 错误");
				}
				String parametersSignature =  methodData.getParametersSignature();
				for (String reClassNamed : reClassNamedSet) {
					if (parametersSignature.contains(reClassNamed)) {
						System.out.println(String.format("警告⚠️:使用修改后的类名%s 类%s -> 方法 -> %s", reClassNamed, confusevt, methodData.getMethodSignature()));
					}
				}
			}
		}

		// 检查方法是否重命名相同的名字
		for (RewriterClassData rewriterClassData : rewriterClassDataMap.values()) {

			Map < String, RewriterClassData.MethodData > methodDataMap = rewriterClassData.getMethodDataMap();
			if (methodDataMap == null) continue;

			String confusevt = rewriterClassData.getConfusevt();

			Collection<RewriterClassData.MethodData> values = methodDataMap.values();
			for (RewriterClassData.MethodData methodData : values) {
				for (RewriterClassData.MethodData methodData2 : values) {

					if (methodData == methodData2) {
						continue;
					}
					if (methodData.renamed.equals(methodData2.renamed)
						&& methodData.getParametersSignature().equals(methodData2.getParametersSignature())) {
						System.out.println(String.format("严重警告⚠️: 重载冲突 %s %s %s", confusevt, methodData, methodData2));
					}
				}
			}
		}

	}
	public static void shrink(RevertMappingData revertMappingData) {
		List<RewriterClassData> rewriterClassDataList = new ArrayList<RewriterClassData>(
			revertMappingData.getRewriterClassDataMap().values());

		for (RewriterClassData rewriterClassData : rewriterClassDataList) {
			shrink(revertMappingData, rewriterClassData);
		}
	}
	public static void shrink(RevertMappingData revertMappingData, RewriterClassData rewriterClassData) {
		if (rewriterClassData != null) {
			if (rewriterClassData.notChange()) {
				//空的移除
				revertMappingData.getRewriterClassDataMap().remove(rewriterClassData.getConfusevt());
			}
			else {
				rewriterClassData.shrink();
			}
		}

	}


}
