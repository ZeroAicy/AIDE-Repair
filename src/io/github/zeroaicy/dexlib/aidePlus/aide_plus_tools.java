package io.github.zeroaicy.dexlib.aidePlus;
import io.github.zeroaicy.dexlib.analysis.SwitchNameConstants;
import java.util.HashMap;
import java.util.Map;
import io.github.zeroaicy.dexlib.aidePlus.aide_plus_tools.aide_plus_info;

public class aide_plus_tools extends aide_plus{

	private String lastVersion;
	private String version;

	private boolean repairAnalysis;
	private boolean onlyOutputMapping;
	public aide_plus_tools(String lastVersion, String version){
		this.lastVersion = lastVersion;
		this.version = version;
	}
	public aide_plus_tools(String lastVersion, String version, boolean repairAnalysis){
		this.lastVersion = lastVersion;
		this.version = version;
		this.repairAnalysis = repairAnalysis;
	}

	public void setRepairAnalysis(boolean repairAnalysis){
		this.repairAnalysis = repairAnalysis;
	}
	@Override
	public boolean getRepairAnalysis(){
		return this.repairAnalysis;
	}
	public void setOnlyOutputMapping(boolean onlyOutputMapping){
		this.onlyOutputMapping = onlyOutputMapping;
	}
	@Override
	protected boolean getOnlyOutputMapping(){
		return this.onlyOutputMapping;
	}

	@Override
	public String getLastVersion(){
		return this.lastVersion;
	}

	@Override
	public String getVersion(){
		return this.version;
	}

	public static class aide_plus_info{
		public final String lastVersion;
		public final String version;
		public final boolean repairAnalysis;
		final Map<String, String>  switchMap = new HashMap<>();
		public aide_plus_info(String lastVersion, String version, boolean repairAnalysis){
			this.lastVersion = lastVersion;
			this.version = version;
			this.repairAnalysis = repairAnalysis;
		}

		public Map<String, String> getSwitchMap(){
			return switchMap;
		}
	}

	static Map<String, aide_plus_info> aide_plus_info_map;
	static{
		aide_plus_info_map = new HashMap<>();
		init();
	}


	private static void init(){
		aide_plus_info aide_plus_info = new aide_plus_info("0", "1", true);
		aide_plus_info_map.put(aide_plus_info.version, aide_plus_info);

		aide_plus_info = new aide_plus_info("1", "2.0", false);
		put(aide_plus_info.version, aide_plus_info);
		//aide_plus_info.getSwitchMap().put(SwitchNameConstants.checkRevertMapping, null);
		//aide_plus_info.getSwitchMap().put(SwitchNameConstants.onlyOutputMapping, null);
		
		//2.1
		aide_plus_info = new aide_plus_info("2.0", "2.1", false);
		put(aide_plus_info.version, aide_plus_info);
		
		//2.2
		aide_plus_info = new aide_plus_info("2.1", "2.2", false);
		//aide_plus_info.getSwitchMap().put(SwitchNameConstants.onlyOutputMapping, null);
		aide_plus_info.getSwitchMap().put(SwitchNameConstants.checkRevertMapping, null);
		
		put(aide_plus_info.version, aide_plus_info);
		
		//2.3
		aide_plus_info = new aide_plus_info("2.2", "2.3", false);
		//aide_plus_info.getSwitchMap().put(SwitchNameConstants.onlyOutputMapping, null);
		aide_plus_info.getSwitchMap().put(SwitchNameConstants.checkRevertMapping, null);
		
		put(aide_plus_info.version, aide_plus_info);
		
	}

	private static void put(String version, aide_plus_tools.aide_plus_info aide_plus_info){
		aide_plus_info_map.put(aide_plus_info.version, aide_plus_info);
	}

	public static aide_plus getAidePlus(String version){
		aide_plus_info info = aide_plus_info_map.get(version);
		if ( info == null ){
			throw new Error("没有找到版本 " + version);
		}
		aide_plus_tools aide_plus_tools = new aide_plus_tools(info.lastVersion, info.version, info.repairAnalysis);
		aide_plus_tools.configure(info.getSwitchMap());
		return aide_plus_tools;
	}
}
