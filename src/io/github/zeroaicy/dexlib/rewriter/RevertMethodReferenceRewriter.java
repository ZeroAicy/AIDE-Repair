package io.github.zeroaicy.dexlib.rewriter;

import io.github.zeroaicy.dexlib.analysis.RewriterClassData;
import javax.annotation.Nonnull;
import org.jf.dexlib2.iface.reference.MethodReference;
import org.jf.dexlib2.rewriter.MethodReferenceRewriter;
import org.jf.dexlib2.rewriter.Rewriters;

public class RevertMethodReferenceRewriter extends MethodReferenceRewriter{
	private RevertRewriterModule revertRewriterModule;

	public RevertMethodReferenceRewriter(Rewriters rewriters, RevertRewriterModule revertRewriterModule){
		super(rewriters);
		this.revertRewriterModule = revertRewriterModule;
	}

	@Override
	public MethodReference rewrite(MethodReference methodReference){
		return new RevertMethodReference(methodReference);
	}
	
	public class RevertMethodReference extends RewrittenMethodReference{

		public RevertMethodReference(MethodReference methodReference){
			super(methodReference);
		}
		@Override
		@Nonnull
		public String getName(){
			String definingClass = methodReference.getDefiningClass();
			//根据定义引用方法的类的类型来查找重命名规则
			//因此严格的遵守RewriterClassData中存在规则才修改
			RewriterClassData rewriterClassData = revertRewriterModule.getRewriterClassData(definingClass);
			if ( rewriterClassData != null ){
				String methodSignature = RevertRewriterModule.getMethodSignature(methodReference);
				RewriterClassData.MethodData methodData = rewriterClassData.getMethodData(methodSignature);
				if ( methodData != null ){
					return methodData.renamed;
				}
			}
			return methodReference.getName();
		}
	}
}
