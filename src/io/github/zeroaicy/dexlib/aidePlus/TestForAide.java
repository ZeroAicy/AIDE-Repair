package io.github.zeroaicy.dexlib.aidePlus;

import io.github.zeroaicy.dexlib.analysis.RevertDexFromMappingText;
import io.github.zeroaicy.dexlib.analysis.SwitchNameConstants;
import java.io.IOException;
import java.util.HashMap;

public class TestForAide {

	public static void main_1(String[] args) throws IOException {
		String project = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data2/还原";
		/*
		 aide_plus_tools.setRootDataDir(project + "/data2/原版");
		aide_plus_tools.runAidePlus("2.3.1");
		/*/
		// 还原
		//revertApk( project + "/AIDE-3.2.210316-反混淆版.apk", project + "/aide+_mapping_output_0.txt", true);
		revertApk( "/storage/emulated/0/AppProjects1/.ZeroAicy/git/AIDE+/app_flavor/build/outputs/apk/release/app_flavor-release.apk", project + "/aide+_mapping_output_aide+.txt", true);
		//*/
	}
	
	
	// 默认使用合并后的  规则文件
	public static void revertApk(String apkPath, String mappingFilePath, boolean contrary) throws IOException {

		String inputDexs = apkPath;
		String outputDexs = apkPath;
		// inputDexs = "/storage/emulated/0/AppProjects1/.ZeroAicy/git/AIDE+/app_flavor/build/bin/app_flavor.apk";
		// outputDexs = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2.3/AIDE+_2.3.zip";
		HashMap<String, String> switchMap = new HashMap<String, String>();

		// 规则文件
		String outputMappingPath;
		if (contrary) {
			switchMap.put(SwitchNameConstants.contrary, null);
			outputMappingPath = mappingFilePath + "_contrary_out.txt";
			outputDexs = apkPath + "_contrary_.apk";
		}else{
			outputMappingPath = mappingFilePath + "_out.txt";
			outputDexs = apkPath + "_.apk";
		}
		// switchMap.put(SwitchNameConstants.onlyOutputMapping, "");
		
		
		// 规则文件
		switchMap.put(SwitchNameConstants.mappingFilePath, mappingFilePath);
		// 规则输出路径
		switchMap.put(SwitchNameConstants.outputMappingPath, outputMappingPath);
		// 检查规则
		// switchMap.put(SwitchNameConstants.checkRevertMapping, "");
		// 修复分析
		switchMap.put(SwitchNameConstants.repairAnalysis, "");
		// 禁用 跟随外部类
		switchMap.put(SwitchNameConstants.disableFollowExternalClasses, "");
		
		// 二改需要 修补缺省虚方法规则
		// 禁用修补缺省虚方法规则
		// switchMap.put(SwitchNameConstants.disableUnifyVirtualMethodName, "");

		// switchMap.put(SwitchNameConstants.onlyOutputMapping, "");
		
		RevertDexFromMappingText.revert(inputDexs, outputDexs, switchMap);

	}
}

