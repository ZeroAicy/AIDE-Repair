package io.github.zeroaicy.dexlib.rewriter;
import io.github.zeroaicy.dexlib.analysis.RewriterClassData;
import javax.annotation.Nonnull;
import org.jf.dexlib2.iface.reference.FieldReference;
import org.jf.dexlib2.rewriter.FieldReferenceRewriter;
import org.jf.dexlib2.rewriter.Rewriters;

public class RevertFieldReferenceRewriter extends FieldReferenceRewriter{
	private RevertRewriterModule revertRewriterModule;

	public RevertFieldReferenceRewriter(Rewriters rewriters, RevertRewriterModule revertRewriterModule){
		super(rewriters);
		this.revertRewriterModule = revertRewriterModule;
	}

	@Override
	public FieldReference rewrite(FieldReference fieldReference){
		return new RevertRewrittenFieldReference(fieldReference);
	}
	
	public class RevertRewrittenFieldReference extends RewrittenFieldReference{
		public RevertRewrittenFieldReference(@Nonnull FieldReference fieldReference){
			super(fieldReference);
		}

		@Override
		public String getName(){
			String definingClass = fieldReference.getDefiningClass();
			
			RewriterClassData rewriterClassData = revertRewriterModule.getRewriterClassData(definingClass);
			if ( rewriterClassData != null ){
				
				RewriterClassData.FieldData fieldData = rewriterClassData.getFieldData(fieldReference.getName());
				if ( fieldData != null ){
					return fieldData.renamed;
				}
				
			}
			return super.getName();
		}
		
		
	}
	
}
