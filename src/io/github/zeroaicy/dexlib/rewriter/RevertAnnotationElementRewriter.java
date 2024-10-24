package io.github.zeroaicy.dexlib.rewriter;
import org.jf.dexlib2.iface.value.*;

import javax.annotation.Nonnull;
import org.jf.dexlib2.ValueType;
import org.jf.dexlib2.base.BaseAnnotationElement;
import org.jf.dexlib2.iface.AnnotationElement;
import org.jf.dexlib2.rewriter.AnnotationElementRewriter;
import org.jf.dexlib2.rewriter.Rewriters;
import org.jf.util.ExceptionWithContext;

public class RevertAnnotationElementRewriter extends AnnotationElementRewriter {@Nonnull protected final Rewriters rewriters;

    public RevertAnnotationElementRewriter(@Nonnull Rewriters rewriters) {
        super(rewriters);
		this.rewriters = rewriters;
    }

    @Nonnull 
	@Override 
	public AnnotationElement rewrite(@Nonnull AnnotationElement annotationElement) {
        return new RewrittenAnnotationElement(annotationElement);
    }

    protected class RewrittenAnnotationElement extends BaseAnnotationElement {
        @Nonnull 
		protected AnnotationElement annotationElement;

		final EncodedValue encodedValue;
        public RewrittenAnnotationElement(@Nonnull AnnotationElement annotationElement) {
            this.annotationElement = annotationElement;
			
			this.encodedValue = rewriters.getEncodedValueRewriter().rewrite(annotationElement.getValue());
        }

        @Nonnull 
		@Override 
		public String getName() {
            return annotationElement.getName();
        }

        @Nonnull 
		@Override
		public EncodedValue getValue() {
            return this.encodedValue;
        }
    }

}
