package io.github.zeroaicy.dexlib.aidePlus.extend;

public abstract class aide_plus_extend{
	
	String rootDataDirPath = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus_extend";
	
	// 当前底包版本号
	public abstract String getVersion();
	
	public abstract String getLastVersion();
	
	
	public void run(){
		String input_src_dir = getInputSrcDirPath();
		String output_src_dir = getOutputSrcDirPath();
		String mappingFilePath = getMappingPath();
		RewriterSmali.rewriter(input_src_dir, output_src_dir, mappingFilePath);
	}
//当前版本数据路径
	private String dataDirPath;
	//输入dexs路径
	private String input_src_dir;

	private String output_src_dir;

	private String mappingPath;


	public String getDataDirName(){
		return "aide_plus_extend_" + getVersion();
	}

	public String getInputSrcDirName(){
		return "src_"  + getLastVersion();
	}

	public String getOutputSrcDirName(){
		return "src_"  + getVersion();
	}

	public String getMappingName(){
		return "aide+_mapping_output_" + getVersion() + ".txt";
	}
	
	public String getDataDirPath(){
		if ( this.dataDirPath == null ){
			this.dataDirPath = rootDataDirPath + "/" + getDataDirName();			
		}
		return this.dataDirPath;
	}
	
	public String getMappingPath(){
		if ( this.mappingPath == null ){
			this.mappingPath = getDataDirPath() + "/" + getMappingName();
		}
		return this.mappingPath;
	}
	public String getInputSrcDirPath(){
		if ( this.input_src_dir == null ){
			this.input_src_dir = getDataDirPath() + "/" + getInputSrcDirName();
		}
		return this.input_src_dir;
	}

	public String getOutputSrcDirPath(){
		if ( this.output_src_dir == null ){
			this.output_src_dir = getDataDirPath() + "/" + getOutputSrcDirName();
		}
		return this.output_src_dir;
	}
}
