package io.github.zeroaicy.dexlib.rewriter2;

/**
 * 1.类名修改
 *  1.1 类名修改需要重写 TypeRewriter类的rewriteUnwrappedType方法
 *      判断是否是类(L.*;)，是则从 类重命名规则中替换
 *  1.2 支持8正则表达式替换
 *      1.2.3 先从[全局类名重命名Map]中查询
 *      没有包名的可批量重命名
 *      没有再判断正则，修改后put[全局类名重命名Map]
 *      如何减少正则的判断呢，可以限定包名

 *   1.3 规则设计
 *      规则1：类名重命名，显示指定，一对一
 *      ReTypeName了[分隔符]Labcd/a123;[分隔符]Lcom/aide/123;

 *      规则2：包名重命名，显示指定，不包括子包
 *      RePackageName[分隔符]Lold_package/;[分隔符]Lnew_package/;
 *          Labcd/a123; -> Lcom/aide/a123; ✔
 *          Labcd/b99656/a123; ❌
 *      规则2.1: ReTypeName了[分隔符][分隔符]Lcom/aide/123;
 *      则替换没有包名的类，充分利用规则2
 *      当被替换的包名为空时，相当于插入，而又因为不会替换子包名
 *      所以有包名的类不会被替换

 *      规则3：包名重命名，显示指定包括子包
 *      RePackageNameAll[分隔符]Labcd/;[分隔符]Lcom/aide/;
 *      Labcd/a123; -> Lcom/aide/a123; ✔
 *      Labcd/b99656/a123; -> Lcom/aide/b99656/a123;✔
 */

//重写规则类
public class TypeNameRewriterRule{
	private String ruleType;
	public String original;
	public String now;
	
	private String rule;
	public TypeNameRewriterRule(String rule){
		this.rule = rule;
		if(this.rule == null || this.rule.length() < 3){
			//错误规则忽略
			return;
		}
		
		String[] split = rule.split("\t");
		if( split.length < 3){
			//错误规则忽略
			return;
		}
		this.ruleType = split[0];
		this.original = split[1];
		this.now = split[2];
		this.reTypeName = "ReTypeName".equals(ruleType);
		this.rePackageName = "RePackageName".equals(ruleType);
		this.rePackageNameAll = "RePackageNameAll".equals(ruleType);
		
		if( this.isReTypeName()){
			return;
		}
		
		if(!this.original.startsWith("L")){
			this.original = "L" + this.original;
		}
		if( this.original.length() > 1 
			&& !this.original.endsWith("/")){
			this.original= this.original + "/";
		}
		if(!this.now.startsWith("L")){
			this.now = "L" + this.now;
		}
		if(!this.now.endsWith("/")){
			this.now= this.now + "/";
		}
	}

	public boolean reTypeName;
	public boolean rePackageName;
	public boolean rePackageNameAll;
	


	public boolean isReTypeName(){
		return this.reTypeName;
	}
	public boolean isRePackageName(){
		return this.rePackageName;
	}
	public boolean isRePackageNameAll(){
		return this.rePackageNameAll;
	}
	@Override
	public String toString(){
		return rule;
	}
	
	
}
