package io.github.zeroaicy.dexlib.rewriter2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.iface.MultiDexContainer;

public class RewriteDexFileContainer implements MultiDexContainer<DexFile>{
	private List<String> dexEntryNames = new ArrayList<String>();
	private Map<String, RewriteDexFileEntry> entryMap = new HashMap<>();

	@Override
	public List<String> getDexEntryNames() throws IOException{
		return dexEntryNames;
	}
	public void putEntry(String entryName, DexFile dexFile) throws IOException{
		RewriteDexFileEntry dexEntry = entryMap.get(entryName);
		if ( dexEntry == null ){
			dexEntryNames.add(entryName);
			entryMap.put(entryName, new RewriteDexFileEntry(entryName, dexFile, RewriteDexFileContainer.this));			
		}else{
			dexEntry.setDexFile(dexFile);
		}
	}

	@Override
	public MultiDexContainer.DexEntry<DexFile> getEntry(String entryName) throws IOException{
		return entryMap.get(entryName);
	}
	
	public static class RewriteDexFileEntry implements MultiDexContainer.DexEntry<DexFile>{
		private String entryName;
		private DexFile dexFile;
		private MultiDexContainer<DexFile> container;
		
		public RewriteDexFileEntry(String entryName, DexFile dexFile, MultiDexContainer<DexFile> container){
			this.entryName = entryName;
			this.dexFile = dexFile;
			this.container = container;
		}
		public void setDexFile(DexFile dexFile){
			this.dexFile = dexFile;
		}
		@Override
		public String getEntryName(){
			return this.entryName;
		}
		@Override
		public DexFile getDexFile(){
			return this.dexFile;
		}
		@Override
		public MultiDexContainer<DexFile> getContainer(){
			return this.container;
		}
	}
}
