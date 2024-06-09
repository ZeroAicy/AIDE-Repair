package io.github.zeroaicy.dexlib.rewriter;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nonnull;
import org.jf.dexlib2.iface.Annotation;
import org.jf.dexlib2.iface.AnnotationElement;
import org.jf.dexlib2.rewriter.AnnotationRewriter;
import org.jf.dexlib2.rewriter.Rewriter;
import org.jf.dexlib2.rewriter.RewriterUtils;
import org.jf.dexlib2.rewriter.Rewriters;
import java.util.HashSet;

public class RevertAnnotationRewriter extends AnnotationRewriter{

	private RevertRewriterModule revertRewriterModule;

	public RevertAnnotationRewriter(Rewriters rewriters, RevertRewriterModule revertRewriterModule){
		super(rewriters);
		this.revertRewriterModule = revertRewriterModule;
	}

	@Nonnull
	@Override
	public Annotation rewrite(@Nonnull Annotation value){
		return super.rewrite(value);
	}
}
