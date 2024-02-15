package io.github.zeroaicy.dexlib.rewriter;

import io.github.zeroaicy.dexlib.analysis.RewriterClassData;
import org.jf.dexlib2.rewriter.Rewriters;
import org.jf.dexlib2.rewriter.TypeRewriter;

public class RevertTypeRewriter extends TypeRewriter{
	Rewriters rewriters;
	RevertRewriterModule revertRewriterModule;

	public RevertTypeRewriter(Rewriters rewriters, RevertRewriterModule revertRewriterModule){
		this.rewriters = rewriters;
		this.revertRewriterModule = revertRewriterModule;
	}

	@Override
	protected String rewriteUnwrappedType(String className){
		//现在只有替换类名的了，包名的以后在扩展
		RewriterClassData rewriterClassData = revertRewriterModule.getRewriterClassData(className);
		if ( rewriterClassData == null ){
			return className;
		}else{
			return rewriterClassData.getRenamed();
		}
	}
}
