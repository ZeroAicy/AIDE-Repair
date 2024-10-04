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
import org.jf.dexlib2.base.BaseAnnotation;
import org.jf.dexlib2.ValueType;
import org.jf.dexlib2.iface.value.EncodedValue;
import org.jf.dexlib2.iface.value.LongEncodedValue;
import org.jf.dexlib2.iface.value.StringEncodedValue;

public class RevertAnnotationRewriter extends AnnotationRewriter {

	private RevertRewriterModule revertRewriterModule;

	public RevertAnnotationRewriter(Rewriters rewriters, RevertRewriterModule revertRewriterModule) {
		super(rewriters);
		this.revertRewriterModule = revertRewriterModule;
	}

	@Nonnull
	@Override
	public Annotation rewrite(@Nonnull Annotation value) {
		return new RewrittenAnnotation(value);
	}

	protected class RewrittenAnnotation extends BaseAnnotation {
        @Nonnull protected Annotation annotation;


		private String rewriteType;
		private Set<AnnotationElement> rewriteAnnotationElementSet;

		String value;

		public RewrittenAnnotation(@Nonnull Annotation annotation) {
            this.annotation = annotation;
			this.rewriteType = rewriters.getTypeRewriter().rewrite(annotation.getType());

			this.rewriteAnnotationElementSet = new HashSet<AnnotationElement>(RewriterUtils.rewriteSet(rewriters.getAnnotationElementRewriter(), annotation.getElements()));
        }

        @Override public int getVisibility() {
            return annotation.getVisibility();
        }

        @Override @Nonnull public String getType() {
            return this.rewriteType;
        }

        @Override @Nonnull public Set<? extends AnnotationElement> getElements() {
            return this.rewriteAnnotationElementSet;
        }


    }
}
