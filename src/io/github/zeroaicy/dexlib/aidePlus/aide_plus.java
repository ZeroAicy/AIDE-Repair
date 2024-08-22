package io.github.zeroaicy.dexlib.aidePlus;
import io.github.zeroaicy.dexlib.analysis.RevertDexFromMappingText;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import io.github.zeroaicy.dexlib.analysis.SwitchNameConstants;
import java.util.Collections;

public abstract class aide_plus{
	String rootDataDirPath = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus";

	//当前版本数据路径
	private String dataDirPath;
	//输入dexs路径
	private String inputdexsPath;

	private String outputdexsPath;

	private String mappingPath;

	private String outputMappingPath;

	private final Map<String, String> switchMap = new HashMap<>();

	public Map<String, String>  getSwitchMap(){
		return switchMap;
	}

	public abstract String getLastVersion();

	// 当前底包版本号
	public abstract String getVersion();

	public boolean getRepairAnalysis(){
		return false;
	}

	public boolean getContrary(){
		return false;
	}

	protected boolean getOnlyOutputMapping(){
		return false;
	}

	public String getDataDirName(){
		return "aide_plus_" + getVersion();
	}

	public String getInputFileName(){
		return "AIDE+_"  + getLastVersion() + ".zip";
	}

	public String getOutputFileName(){
		return "AIDE+_"  + getVersion() + ".zip";
	}

	public String getMappingName(){
		return "aide+_mapping_" + getVersion() + ".txt";
	}

	public String getOutputMappingName(){
		return "aide+_mapping_output_" + getVersion() + ".txt";
	}

	public String getDataDirPath(){
		if ( this.dataDirPath == null ){
			this.dataDirPath = rootDataDirPath + "/" + getDataDirName();			
		}
		return this.dataDirPath;
	}


	public String getInputDexsPath(){
		if ( this.inputdexsPath == null ){
			this.inputdexsPath = getDataDirPath() + "/" + getInputFileName();
		}
		return this.inputdexsPath;
	}

	public String getOutputDexsPath(){
		if ( this.outputdexsPath == null ){
			this.outputdexsPath = getDataDirPath() + "/" + getOutputFileName();
		}
		return this.outputdexsPath;
	}

	public String getMappingPath(){
		if ( this.mappingPath == null ){
			this.mappingPath = getDataDirPath() + "/" + getMappingName();
		}
		return this.mappingPath;
	}
	public String getOutputMappingPath(){
		if ( this.outputMappingPath == null ){
			this.outputMappingPath = getDataDirPath() + "/" + getOutputMappingName();
		}
		return this.outputMappingPath;
	}

	public aide_plus(){}


	public void configure(){
		configure(Collections.<String, String>emptyMap());
	}
	
	public void configure(Map<String, String> configure){
		String mappingFilePath = getMappingPath();

		boolean repairAnalysis = getRepairAnalysis();
		boolean contrary = getContrary();
		String outputMappingPath = getOutputMappingPath();
		boolean onlyOutputMapping = getOnlyOutputMapping();


		Map<String, String> switchMap = this.switchMap;
		if ( repairAnalysis ) switchMap.put(SwitchNameConstants.repairAnalysis, null);
		if ( contrary ) switchMap.put(SwitchNameConstants.contrary, null);

		switchMap.put(SwitchNameConstants.mappingFilePath, mappingFilePath);
		switchMap.put(SwitchNameConstants.outputMappingPath, outputMappingPath);
		if ( onlyOutputMapping ) switchMap.put(SwitchNameConstants.onlyOutputMapping, null);
		
		switchMap.putAll(configure);
	}


	public void run() throws IOException{
		//重写
		String inputDexs = getInputDexsPath();
		String outputDexs = getOutputDexsPath();

		RevertDexFromMappingText.revert(inputDexs, outputDexs, getSwitchMap());
	}

}
