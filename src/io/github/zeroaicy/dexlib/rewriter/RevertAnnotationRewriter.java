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
import org.jf.dexlib2.iface.value.ArrayEncodedValue;
import org.objectweb.asm.signature.SignatureReader;
import org.objectweb.asm.commons.Remapper;
import org.objectweb.asm.commons.SignatureRemapper;
import org.objectweb.asm.signature.SignatureWriter;
import io.github.zeroaicy.dexlib.rewriter.RevertAnnotationRewriter.TypeRemapper;
import android.text.TextUtils;
import java.util.Collections;
import java.util.ArrayList;
import java.util.List;
import org.jf.dexlib2.base.value.BaseArrayEncodedValue;
import org.jf.dexlib2.immutable.value.ImmutableArrayEncodedValue;
import com.google.common.collect.ImmutableList;
import org.jf.dexlib2.immutable.value.ImmutableStringEncodedValue;
import org.jf.dexlib2.immutable.ImmutableAnnotationElement;

public class RevertAnnotationRewriter extends AnnotationRewriter {


	private RevertRewriterModule revertRewriterModule;
	private TypeRemapper typeRemapper;
	public RevertAnnotationRewriter(Rewriters rewriters, RevertRewriterModule revertRewriterModule) {
		super(rewriters);
		this.revertRewriterModule = revertRewriterModule;
		this.typeRemapper = new TypeRemapper();
	}

	@Nonnull
	@Override
	public Annotation rewrite(@Nonnull Annotation value) {
		return new RewrittenAnnotation(value);
	}

	protected class RewrittenAnnotation extends BaseAnnotation {
        @Nonnull 
		protected Annotation annotation;


		private String rewriteType;
		private Set<AnnotationElement> rewriteAnnotationElementSet;

		String value;
		public RewrittenAnnotation(@Nonnull Annotation annotation) {
            this.annotation = annotation;
			this.rewriteType = rewriters.getTypeRewriter().rewrite(annotation.getType());

			// 重写注解值 比如 value的 name的值
			this.rewriteAnnotationElementSet = rewriteAnnotationElements();

        }


		private Set<AnnotationElement> rewriteAnnotationElements() {
			// 当前是签名注解才处理
			if (!AnnotationUtils.Signature.equals(this.annotation.getType())) {
				return RewriterUtils.rewriteSet(rewriters.getAnnotationElementRewriter(), annotation.getElements());
			}

			// 签名注解
			Set<AnnotationElement> rewriteAnnotationElements = new HashSet<AnnotationElement>();

			for (AnnotationElement annotationElement : annotation.getElements()) {
				AnnotationElement rewriteAnnotationElement;
				rewriteAnnotationElement = rewriteAnnotationElement(annotationElement);
				if (rewriteAnnotationElement != null) {
					rewriteAnnotationElements.add(rewriteAnnotationElement);
				}
			}			
			return rewriteAnnotationElements;
		}

		private AnnotationElement rewriteAnnotationElement(AnnotationElement annotationElement) {
			// 不是value 不处理
			if (!"value".equals(annotationElement.getName())) {
				return rewriters.getAnnotationElementRewriter().rewrite(annotationElement);
			}

			// 获取签名注解 value的值
			// 应该是 ArrayEncodedValue
			EncodedValue encodedValue = annotationElement.getValue();
			if (encodedValue.getValueType() != ValueType.ARRAY) {
				return null;
			}
			ArrayEncodedValue signatureValues = (ArrayEncodedValue)encodedValue;
			if (signatureValues == null) {
				return null;
			}
			// 拼接签名
			StringBuilder sb = new StringBuilder();
			for (EncodedValue signatureValue: signatureValues.getValue()) {
				// 不是字符串类型
				if (signatureValue.getValueType() != ValueType.STRING) {
					return null;
				}
				sb.append(((StringEncodedValue)signatureValue).getValue());
			}
			String signature = sb.toString();
			if (TextUtils.isEmpty(signature)) {
				// 没有签名
				return null;
			}

			// 验证签名信息，但需要解析出哪些是类名
			SignatureWriter signatureWriter = new SignatureWriter();
			new SignatureReader(signature).accept(new SignatureRemapper(signatureWriter, typeRemapper));
			signature = signatureWriter.toString();


			String raw = signature;
			int rawLength = raw.length();
			List<StringEncodedValue> pieces = new ArrayList<>(20);
			int at = 0;
			while (at < rawLength) {
				char c = raw.charAt(at);
				int endAt = at + 1;

				if (c == 'L') {
					while (endAt < rawLength) {

						char c2 = raw.charAt(endAt);
						if (c2 == ';') {
							endAt++;
							break;
						}
						if (c2 == '<') {
							endAt++;
							break;
						}
						endAt++;
					}
				}
				else {
					while (endAt < rawLength) {
						char c3 = raw.charAt(endAt);
						if (c3 == 'L') {
							break;
						}
						endAt++;
					}
				}
				String substring = raw.substring(at, endAt);
				pieces.add(new ImmutableStringEncodedValue(substring));
				at = endAt;
			}


			signatureValues = new ImmutableArrayEncodedValue(pieces);
			return new ImmutableAnnotationElement("value", signatureValues);
		}



        @Override 
		public int getVisibility() {
            return annotation.getVisibility();
        }

        @Override 
		@Nonnull
		public String getType() {
            return this.rewriteType;
        }
		/**
		 * 有value 
		 * user
		 * clazz 等
		 */
        @Override 
		@Nonnull 
		public Set<? extends AnnotationElement> getElements() {
            return this.rewriteAnnotationElementSet;
        }
    }


	public class TypeRemapper extends Remapper {

		private Rewriter<String> typeRewriter;

		public TypeRemapper() {
			typeRewriter = revertRewriterModule.getTypeRewriter(rewriters);
		}

		@Override
		public String mapInnerClassName(String name, String ownerName, String innerName) {
			System.out.println("ownerName: " + ownerName);
			return super.mapInnerClassName(name, ownerName, innerName);
		}

		@Override
		public String mapType(String internalName) {

			String rewrite = typeRewriter.rewrite("L" + internalName + ";");


			return rewrite.substring(1, rewrite.length() - 1);
		}

	}

}
