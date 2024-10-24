
package io.github.zeroaicy.dexlib.rewriter;

import io.github.zeroaicy.dexlib.analysis.RewriterClassData;
import java.util.HashSet;
import java.util.Set;
import javax.annotation.Nonnull;
import org.jf.dexlib2.AccessFlags;
import org.jf.dexlib2.AnnotationVisibility;
import org.jf.dexlib2.ValueType;
import org.jf.dexlib2.base.BaseAnnotation;
import org.jf.dexlib2.base.BaseAnnotationElement;
import org.jf.dexlib2.base.value.BaseStringEncodedValue;
import org.jf.dexlib2.iface.Annotation;
import org.jf.dexlib2.iface.AnnotationElement;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.value.EncodedValue;
import org.jf.dexlib2.immutable.ImmutableAnnotation;
import org.jf.dexlib2.immutable.ImmutableAnnotationElement;
import org.jf.dexlib2.immutable.value.ImmutableArrayEncodedValue;
import org.jf.dexlib2.immutable.value.ImmutableTypeEncodedValue;
import org.jf.dexlib2.rewriter.ClassDefRewriter;
import org.jf.dexlib2.rewriter.Rewriter;
import org.jf.dexlib2.rewriter.Rewriters;
import java.util.LinkedHashSet;

public class RevertClassDefRewriter extends ClassDefRewriter {

	private RevertRewriterModule revertRewriterModule;
	public RevertClassDefRewriter(@Nonnull Rewriters rewriters, RevertRewriterModule revertRewriterModule) {
        super(rewriters);
		this.revertRewriterModule = revertRewriterModule;
    }
	@Nonnull 
	@Override 
	public ClassDef rewrite(@Nonnull ClassDef classDef) {
        return new RevertClassDefRewriter(classDef);
    }

	public class RevertClassDefRewriter extends RewrittenClassDef {
        // 重写后的类注解
		private Set<? extends Annotation> rewriteAnnotations;

		public RevertClassDefRewriter(@Nonnull ClassDef classdef) {
            super(classdef);
			this.rewriteAnnotations = rewriteAnnotationSet();
        }
		//修改兼容模式
		@Override
		public int getAccessFlags() {
			int  accessFlags = super.getAccessFlags();
			if (AccessFlags.PRIVATE.isSet(accessFlags)) {
				//private暂时不修改
				return accessFlags;
			}
			//AccessFlags AccessFlags;
			if (AccessFlags.PROTECTED.isSet(accessFlags)) {
				//消除protected修饰符
				accessFlags = accessFlags & ~AccessFlags.PROTECTED.getValue();
			}
			//所有的类都加上public，除了private
			accessFlags = accessFlags | AccessFlags.PUBLIC.getValue();
			return accessFlags;
		}

		// 类注解
		@Override
		public Set<? extends Annotation> getAnnotations() {
			return this.rewriteAnnotations;
		}

		/**
		 * 重写类注解
		 * 主要功能是填充此类的成员类注解
		 */
		private Set<? extends Annotation> rewriteAnnotationSet() {
			Set<Annotation> annotations =  new LinkedHashSet<>();

			Rewriter<Annotation> annotationRewriter = rewriters.getAnnotationRewriter();

			boolean isRepairAnalysis = revertRewriterModule.dexFileAnalyzer.isRepairAnalysis();
			for (Annotation annotation : classDef.getAnnotations()) {
				String annotationType = annotation.getType();
				switch (annotationType) {
					case AnnotationUtils.InnerClass:
						{
							//我需要修改"Ldalvik/annotation/InnerClass;注解的name的值
							annotations.add(new RewrittenInnerClassAnnotation(annotation));
						}
						break;
					case AnnotationUtils.MemberClasses:
						{
							//不处理
							if (!isRepairAnalysis) {
								//修复分析未启用，使用原始子类信息
								annotations.add(annotationRewriter.rewrite(annotation));
							}
						}
						break;
					default:
						// 只过滤 InnerClass 与 MemberClasses注解
						annotations.add(annotationRewriter.rewrite(annotation));

						break;
				}
			}
			if (isRepairAnalysis) {
				//启用修复分析时才重写子类信息
				repairMemberClassesAnnotation(annotations);
			}
			return annotations;
		}


		/**
		 * 修复类成员类注解
		 */
		private void repairMemberClassesAnnotation(Set<Annotation> annotations) {

			String classDefType = classDef.getType();
			Set<String> memberClassesAnnotationSet = revertRewriterModule.dexFileAnalyzer.getMemberClassesAnnotationSet(classDefType);

			if (memberClassesAnnotationSet == null 
				|| memberClassesAnnotationSet.isEmpty()) {
				return;
			}
			Rewriter<Annotation> annotationRewriter = rewriters.getAnnotationRewriter();

			//注解value的值
			Set<EncodedValue> encodedValues = new LinkedHashSet<>();
			for (String innerClassDefType : revertRewriterModule.dexFileAnalyzer.getMemberClassesAnnotationSet(classDefType)) {
				encodedValues.add(new ImmutableTypeEncodedValue(innerClassDefType));
			}
			Set<ImmutableAnnotationElement> annotationElements = new LinkedHashSet<>();
			//添加注解的value要素
			annotationElements.add(new ImmutableAnnotationElement("value", new ImmutableArrayEncodedValue(encodedValues)));
			//添加注解
			ImmutableAnnotation immutableAnnotation = new ImmutableAnnotation(AnnotationVisibility.SYSTEM, AnnotationUtils.MemberClasses, annotationElements);

			//调用重写器，防止有其它重写
			annotations.add(annotationRewriter.rewrite(immutableAnnotation));				
		}


		//内部类注解
		protected class RewrittenInnerClassAnnotation extends BaseAnnotation {
			@Nonnull protected Annotation annotation;

			public RewrittenInnerClassAnnotation(@Nonnull Annotation annotation) {
				this.annotation = annotation;
			}
			@Override
			public int getVisibility() {
				return annotation.getVisibility();
			}
			@Override
			@Nonnull
			public String getType() {
				return rewriters.getTypeRewriter().rewrite(annotation.getType());
			}

			@Override 
			@Nonnull 
			public Set<? extends AnnotationElement> getElements() {
				Set<AnnotationElement> elements = new LinkedHashSet<>();
				for (final AnnotationElement annotationElement : annotation.getElements()) {
					if (annotationElement == null) {
						elements.add(annotationElement);
						continue;
					}
					//"内部类注解与当前类名(最小类名)统一
					if ("name".equals(annotationElement.getName()) 
						&& (annotationElement.getValue().getValueType() == ValueType.STRING 
						|| annotationElement.getValue().getValueType() == ValueType.NULL)) {
						//当前注解所在类
						String classType = classDef.getType();

						RewriterClassData rewriterClassData = revertRewriterModule.getRewriterClassData(classType);
						//当前类重重命名后的类名
						String currentClassType = rewriterClassData == null ? classType : rewriterClassData.getRenamed();
						annotationElement = getRevertAnnotationElement(currentClassType, annotationElement);
						elements.add(annotationElement);
					}
					else {
						elements.add(annotationElement);
					}
				}
				return elements;
			}
		}
		public RevertAnnotationStringElement getRevertAnnotationElement(String currentClassType, AnnotationElement annotationElement) {
			int valueStart = currentClassType.lastIndexOf('$');
			if ((valueStart) > 0) {
			}
			else if ((valueStart = currentClassType.lastIndexOf('/')) > 0) {
			}
			else {
				valueStart = 0;
			}
			String value = currentClassType.substring(valueStart + 1, currentClassType.length() - 1);
			return new RevertAnnotationStringElement(annotationElement, value);
		}
	}


	public static class RevertAnnotationStringElement extends BaseAnnotationElement {
		AnnotationElement annotationElement;
		String value;
		RevertBaseStringEncodedValue revertBaseStringEncodedValue;

		public RevertAnnotationStringElement(AnnotationElement annotationElement, String value) {
			this.annotationElement = annotationElement;
			this.value = value;
			revertBaseStringEncodedValue = new RevertBaseStringEncodedValue(this.value);
		}
		@Override
		public String getName() {
			return annotationElement.getName();
		}
		@Override
		public EncodedValue getValue() {
			return revertBaseStringEncodedValue;
		}

		@Override
		public int compareTo(AnnotationElement o) {
			return annotationElement.compareTo(o);
		}
	}

	public static class RevertBaseStringEncodedValue extends BaseStringEncodedValue {
		String value;
		public RevertBaseStringEncodedValue(String value) {
			this.value = value;
		}

		@Override
		public String getValue() {
			return value;
		}
	}
}
