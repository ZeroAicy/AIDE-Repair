package io.github.zeroaicy.dexlib.analysis;

public class RewriterPackageNameData{
	
	public String packageNameConfusevt, packageNameRenamed;
	public boolean isReAll;

	public RewriterPackageNameData(String packageNameConfusevt, String packageNameRenamed){
		this(packageNameConfusevt, packageNameRenamed, false);
	}

	public RewriterPackageNameData(String packageNameConfusevt, String packageNameRenamed, boolean isReAll){
		this.packageNameConfusevt = packageNameConfusevt;
		this.packageNameRenamed = packageNameRenamed;
		this.isReAll = isReAll;
		
		
	}
}
