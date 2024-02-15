package io.github.zeroaicy.dexlib.rewriter2;
import org.jf.dexlib2.rewriter.TypeRewriter;
import org.jf.dexlib2.rewriter.Rewriter;
import org.jf.dexlib2.rewriter.Rewriters;

public class ZeroAicyTypeRewriter extends TypeRewriter{

	Rewriters rewriters;
	ZeroAicyRewriterModule zeroAicyRewriterModule;

	public ZeroAicyTypeRewriter(Rewriters rewriters, ZeroAicyRewriterModule zeroAicyRewriterModule){
		this.rewriters = rewriters;
		this.zeroAicyRewriterModule = zeroAicyRewriterModule;
	}
	@Override
	protected String rewriteUnwrappedType(String className){
		String renameClassName = zeroAicyRewriterModule.unmatchedRuleClassNameMap.get(className);
		if ( renameClassName != null ){

			return renameClassName;
		}
		//不是类名
		if ( className.length() <= 0 || className.charAt(0) != 'L' || className.charAt(className.length() - 1) != ';' ){
			// 减少判断
			zeroAicyRewriterModule.unmatchedRuleClassNameMap.put(className, className);
			//System.out.println("未匹配规则[非类]: " + className);
			return className;
		}

		//先从[全局类名重命名Map]中查询
		renameClassName = zeroAicyRewriterModule.typeReNameMap.get(className);
		if ( renameClassName != null ){
			return renameClassName;
		}

		//判断是否是内部类
		{
			int indexOf = className.indexOf('/');
			if ( indexOf < 0 ){
				indexOf = 0;
			}
			indexOf = className.indexOf('$', indexOf);

			if ( indexOf > 0 ){
				//是一个内部类
				//查找外部类
				String external = className.substring(0, indexOf);
				String externalNow = zeroAicyRewriterModule.typeReNameMap.get(external + ";");

				if ( externalNow != null ){
					externalNow = externalNow.substring(0, externalNow.length() - 1);
					String valueNow = externalNow + className.substring(indexOf);
					zeroAicyRewriterModule.typeReNameMap.put(className, valueNow);
					//System.out.println(value + " -> " + valueNow);
					return valueNow;
				}
			}
		}


		//处理剩下的规则
		for ( TypeNameRewriterRule rule : zeroAicyRewriterModule.rewriterRules ){
			if ( rule.isRePackageName() 
				|| rule.isRePackageNameAll() ){

				String original = rule.original;
				if ( className.length() < original.length() 
					|| !className.startsWith(original) ){
					//不匹配规则
					continue; 
				}

				if ( rule.isRePackageName() && className.indexOf('/', original.length() + 1) >= 0 ){
					//不匹配子包
					continue;
				}
				renameClassName = rule.now + className.substring(original.length());

				zeroAicyRewriterModule.typeReNameMap.put(className, renameClassName);

				return renameClassName;
			}
		}

		//没有规则匹配，不修改
		// 减少判断
		zeroAicyRewriterModule.unmatchedRuleClassNameMap.put(className, className);

		//System.out.println("未匹配规则[类名]: " + className);
		return className;
	}
}
