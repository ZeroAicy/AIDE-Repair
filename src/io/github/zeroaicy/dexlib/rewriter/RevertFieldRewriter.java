package io.github.zeroaicy.dexlib.rewriter;

import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import org.jf.dexlib2.HiddenApiRestriction;
import org.jf.dexlib2.base.reference.BaseFieldReference;
import org.jf.dexlib2.iface.Annotation;
import org.jf.dexlib2.iface.Field;
import org.jf.dexlib2.iface.value.EncodedValue;
import org.jf.dexlib2.rewriter.FieldRewriter;
import org.jf.dexlib2.rewriter.RewriterUtils;
import org.jf.dexlib2.rewriter.Rewriters;
import java.util.HashSet;

public class RevertFieldRewriter extends FieldRewriter {

	@Nonnull protected final Rewriters rewriters;

    public RevertFieldRewriter(@Nonnull Rewriters rewriters) {
		super(rewriters);
        this.rewriters = rewriters;
    }

	@Override
	public Field rewrite(Field field) {
		return new RewrittenField(field);
	}
	protected class RewrittenField extends BaseFieldReference implements Field {
        @Nonnull protected Field field;

		private Set<? extends Annotation> rewriteAnnotations;

        public RewrittenField(@Nonnull Field field) {
            this.field = field;
			this.rewriteAnnotations = new HashSet<Annotation>( RewriterUtils.rewriteSet(rewriters.getAnnotationRewriter(), field.getAnnotations()) );
        }

        @Override @Nonnull public String getDefiningClass() {
            return rewriters.getFieldReferenceRewriter().rewrite(field).getDefiningClass();
        }

        @Override @Nonnull public String getName() {
            return rewriters.getFieldReferenceRewriter().rewrite(field).getName();
        }

        @Override @Nonnull public String getType() {
            return rewriters.getFieldReferenceRewriter().rewrite(field).getType();
        }

        public int getAccessFlags() {
            return field.getAccessFlags();
        }

        @Nullable public EncodedValue getInitialValue() {
            return RewriterUtils.rewriteNullable(rewriters.getEncodedValueRewriter(), field.getInitialValue());
        }

        @Nonnull public Set<? extends Annotation> getAnnotations() {
            return this.rewriteAnnotations;
        }

        @Nonnull @Override public Set<HiddenApiRestriction> getHiddenApiRestrictions() {
            return field.getHiddenApiRestrictions();
        }
    }
}
