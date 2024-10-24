package io.github.zeroaicy.dexlib.aidePlus;
import io.github.zeroaicy.dexlib.analysis.SwitchNameConstants;
import java.util.HashMap;
import java.util.Map;
import io.github.zeroaicy.dexlib.aidePlus.aide_plus_tools.aide_plus_info;
import java.io.IOException;
import java.util.Arrays;

public class aide_plus_tools extends aide_plus{
	
	private final String key;
	private String lastVersion;
	private String version;

	private boolean repairAnalysis;
	private boolean onlyOutputMapping;
	
	public aide_plus_tools(String lastVersion, String version){
		this.key = lastVersion;
		this.lastVersion = lastVersion;
		this.version = version;
	}
	public aide_plus_tools(String lastVersion, String version, boolean repairAnalysis){
		this.key = lastVersion;
		this.lastVersion = lastVersion;
		
		this.version = version;
		this.repairAnalysis = repairAnalysis;
	}
	
	public aide_plus_tools(String key, String lastVersion, String version, boolean repairAnalysis){
		this.key = key;
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
	public String getKey() {
		return this.key;
	}
	@Override
	public String getLastVersion(){
		return this.lastVersion;
	}

	@Override
	public String getVersion(){
		return this.version;
	}

	@Override
	public void run() throws IOException {
		super.run();
	}

	public static class aide_plus_info{
		
		public final String key;
		public final String lastVersion;
		public final String[] versions;
		public final boolean repairAnalysis;
		final Map<String, String>  switchMap = new HashMap<>();
		
		public aide_plus_info(String lastVersion, String version, boolean repairAnalysis){
			this.lastVersion = lastVersion;
			
			this.versions = new String[1];
			this.versions[0] = version;
			this.key = this.versions[0];
			
			this.repairAnalysis = repairAnalysis;
		}
		public aide_plus_info(String key, boolean repairAnalysis, String lastVersion, String version){
			this.key = key;
			this.repairAnalysis = repairAnalysis;
			
			this.lastVersion = lastVersion;
			
			this.versions = new String[1];
			this.versions[0] = version;
		}
		
		public aide_plus_info(String key, boolean repairAnalysis, String lastVersion, String... versions){
			this.key = key;
			this.repairAnalysis = repairAnalysis;
			
			this.lastVersion = lastVersion;
			this.versions = versions;

		}
		
		public Map<String, String> getSwitchMap(){
			return switchMap;
		}

		@Override
		public String toString() {
			return "lastVersion " + lastVersion + " versions: " + Arrays.toString( versions );
		}
		
	}

	static Map<String, aide_plus_info> aide_plus_info_map;
	static{
		aide_plus_info_map = new HashMap<>();
		init();
	}


	private static void init(){
		aide_plus_info aide_plus_info = new aide_plus_info("0", "1", true);
		put(aide_plus_info);

		aide_plus_info = new aide_plus_info("1", "2.0", false);
		put(aide_plus_info);
		//aide_plus_info.getSwitchMap().put(SwitchNameConstants.checkRevertMapping, null);
		//aide_plus_info.getSwitchMap().put(SwitchNameConstants.onlyOutputMapping, null);
		
		//2.1
		aide_plus_info = new aide_plus_info("2.0", "2.1", false);
		put(aide_plus_info);
		
		//2.2
		aide_plus_info = new aide_plus_info("2.1", "2.2", false);
		//aide_plus_info.getSwitchMap().put(SwitchNameConstants.onlyOutputMapping, null);
		aide_plus_info.getSwitchMap().put(SwitchNameConstants.checkRevertMapping, null);
		
		put(aide_plus_info);
		
		//2.3
		aide_plus_info = new aide_plus_info("2.2", "2.3", false);
		//aide_plus_info.getSwitchMap().put(SwitchNameConstants.onlyOutputMapping, null);
		aide_plus_info.getSwitchMap().put(SwitchNameConstants.checkRevertMapping, null);
		
		put(aide_plus_info);
		
		//2.3.1
		aide_plus_info = new aide_plus_info("2.3.1", true, "0", "1", "2.0", "2.1", "2.2", "2.3");
		//aide_plus_info.getSwitchMap().put(SwitchNameConstants.onlyOutputMapping, null);
		aide_plus_info.getSwitchMap().put(SwitchNameConstants.checkRevertMapping, null);

		put(aide_plus_info);
		
		//2.3.1
		//aide_plus_info = new aide_plus_info("2.3.1", false, "2.2", "2.3");
		//aide_plus_info.getSwitchMap().put(SwitchNameConstants.onlyOutputMapping, null);
		//aide_plus_info.getSwitchMap().put(SwitchNameConstants.checkRevertMapping, null);

		//put(aide_plus_info);
		
		
	}

	private static void put(aide_plus_tools.aide_plus_info aide_plus_info){
		aide_plus_info_map.put(aide_plus_info.key, aide_plus_info);
	}

	public static void runAidePlus(String key) throws IOException{
		aide_plus_info info = aide_plus_info_map.get(key);
		if ( info == null ){
			throw new Error("没有找到版本 " + key);
		}
		String lastVersion = info.lastVersion;
		
		boolean repairAnalysis = info.repairAnalysis;
		
		System.out.println( info );
		for(String version : info.versions){
			
			aide_plus_tools aide_plus_tools = new aide_plus_tools(info.key, lastVersion, version, repairAnalysis);
			aide_plus_tools.configure(info.getSwitchMap());
			aide_plus_tools.run();
			
			if( repairAnalysis ){
				repairAnalysis = false;
			}
			lastVersion = version;
		}
	}
}
