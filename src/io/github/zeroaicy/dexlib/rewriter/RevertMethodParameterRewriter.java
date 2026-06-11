package io.github.zeroaicy.dexlib.rewriter;


import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import org.jf.dexlib2.base.BaseMethodParameter;
import org.jf.dexlib2.iface.MethodParameter;
import org.jf.dexlib2.rewriter.MethodParameterRewriter;
import org.jf.dexlib2.rewriter.RewriterUtils;
import org.jf.dexlib2.rewriter.Rewriters;
import org.jf.dexlib2.iface.Annotation;
import java.util.HashSet;
import org.jf.dexlib2.rewriter.Rewriter;

public class RevertMethodParameterRewriter extends MethodParameterRewriter {
	@Nonnull protected final Rewriters rewriters;

    public RevertMethodParameterRewriter(@Nonnull Rewriters rewriters) {
		super(rewriters);
        this.rewriters = rewriters;
    }

    @Nonnull @Override public MethodParameter rewrite(@Nonnull MethodParameter methodParameter) {
        return new RewrittenMethodParameter(methodParameter);
    }

    protected class RewrittenMethodParameter extends BaseMethodParameter {
        @Nonnull protected MethodParameter methodParameter;

		private Set<Annotation> rewriteAnnotations;

        public RewrittenMethodParameter(@Nonnull MethodParameter methodParameter) {
            this.methodParameter = methodParameter;
			this.rewriteAnnotations = getRewriteAnnotationSet();
        }

        @Override @Nonnull public String getType() {
            return rewriters.getTypeRewriter().rewrite(methodParameter.getType());
        }

        @Override @Nonnull public Set<? extends Annotation> getAnnotations() {
			return this.rewriteAnnotations;
        }

		private Set<Annotation> getRewriteAnnotationSet() {
			Rewriter<Annotation> annotationRewriter = rewriters.getAnnotationRewriter();
			Set<? extends Annotation> annotations = methodParameter.getAnnotations();
			Set<Annotation> rewriteSet = RewriterUtils.rewriteSet(annotationRewriter, annotations);
			
			HashSet<Annotation> rewriteAnnotations = new HashSet<Annotation>(rewriteSet);
			rewriteAnnotations.remove(null);
			return rewriteAnnotations;
		}

        @Override @Nullable public String getName() {
            return methodParameter.getName();
        }

        @Override @Nullable public String getSignature() {
            return methodParameter.getSignature();
        }
    }
}
