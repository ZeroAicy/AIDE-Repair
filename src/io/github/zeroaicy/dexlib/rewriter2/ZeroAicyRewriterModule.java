package io.github.zeroaicy.dexlib.rewriter2;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nonnull;
import org.jf.dexlib2.ValueType;
import org.jf.dexlib2.base.value.BaseStringEncodedValue;
import org.jf.dexlib2.iface.Annotation;
import org.jf.dexlib2.iface.AnnotationElement;
import org.jf.dexlib2.iface.value.EncodedValue;
import org.jf.dexlib2.iface.value.StringEncodedValue;
import org.jf.dexlib2.rewriter.AnnotationRewriter;
import org.jf.dexlib2.rewriter.EncodedValueRewriter;
import org.jf.dexlib2.rewriter.Rewriter;
import org.jf.dexlib2.rewriter.RewriterModule;
import org.jf.dexlib2.rewriter.RewriterUtils;
import org.jf.dexlib2.rewriter.Rewriters;
import org.jf.dexlib2.rewriter.TypeRewriter;

public class ZeroAicyRewriterModule extends RewriterModule{
	
	
	Map<String, String> typeReNameMap;
	List<TypeNameRewriterRule> rewriterRules;

	Map<String, String> unmatchedRuleClassNameMap = new HashMap<>();
	public ZeroAicyRewriterModule(Map<String, String> typeReNameMap, List<TypeNameRewriterRule> rewriterRules){
		this.typeReNameMap = typeReNameMap;
		this.rewriterRules = rewriterRules;
	}
	@Override
	public Rewriter<String> getTypeRewriter(Rewriters rewriters){
		return new ZeroAicyTypeRewriter(rewriters, ZeroAicyRewriterModule.this);
	}

	@Nonnull
	@Override
	public Rewriter<Annotation> getAnnotationRewriter(@Nonnull Rewriters rewriters){
        return new AnnotationRewriter(rewriters){
			@Nonnull @Override public Annotation rewrite(@Nonnull Annotation value){
				return new RewrittenAnnotation(value){
					@Override 
					@Nonnull public Set<? extends AnnotationElement> getElements(){
						//泛型
						if ( annotation.getType().startsWith("Ldalvik/annotation")){
							return RewriterUtils.rewriteSet(rewriters.getAnnotationElementRewriter(), annotation.getElements());							
						}
						return annotation.getElements();

					}
				};
			}
		};
    }

	@Nonnull 
	@Override
	public Rewriter<EncodedValue> getEncodedValueRewriter(@Nonnull Rewriters rewriters){
        return new ZeroAicyEncodedValueRewriter(rewriters, this);
    }

}
