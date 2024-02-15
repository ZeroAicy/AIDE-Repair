
package io.github.zeroaicy.dexlib.rewriter;

import io.github.zeroaicy.dexlib.analysis.DexFileAnalyzer;
import io.github.zeroaicy.dexlib.analysis.RewriterClassData;
import javax.annotation.Nonnull;
import org.jf.dexlib2.iface.Annotation;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.Method;
import org.jf.dexlib2.iface.instruction.Instruction;
import org.jf.dexlib2.iface.reference.FieldReference;
import org.jf.dexlib2.iface.reference.MethodReference;
import org.jf.dexlib2.iface.value.EncodedValue;
import org.jf.dexlib2.rewriter.Rewriter;
import org.jf.dexlib2.rewriter.RewriterModule;
import org.jf.dexlib2.rewriter.Rewriters;

public class RevertRewriterModule extends RewriterModule{
	DexFileAnalyzer dexFileAnalyzer;

	public RevertRewriterModule(DexFileAnalyzer dexFileAnalyzer){
		this.dexFileAnalyzer = dexFileAnalyzer;
	}

	public RewriterClassData getRewriterClassData(String className){
		return dexFileAnalyzer.getRewriterClassData(className);
	}
	public ClassDef getClassDef(String type){
		return dexFileAnalyzer.getClassDef(type);
	}

	@Override
	public Rewriter<ClassDef> getClassDefRewriter(Rewriters rewriters){
		return new RevertClassDefRewriter(rewriters, this);
	}

	@Override
	public Rewriter<Method> getMethodRewriter(Rewriters rewriters){
		return new RevertMethodRewriter(rewriters, this);
	}

	
	
	@Override
	public Rewriter<String> getTypeRewriter(Rewriters rewriters){
		return new RevertTypeRewriter(rewriters, this);
	}
	
	//注解重写器
	@Nonnull
	@Override
	public Rewriter<Annotation> getAnnotationRewriter(@Nonnull Rewriters rewriters){
        return new RevertAnnotationRewriter(rewriters, this);
    }
	
	//注解值重写器
	@Nonnull 
	@Override
	public Rewriter<EncodedValue> getEncodedValueRewriter(@Nonnull Rewriters rewriters){
        return new RevertEncodedValueRewriter(rewriters, this);
    }
	
	//方法重写器
	@Override
	public Rewriter<MethodReference> getMethodReferenceRewriter(Rewriters rewriters){
		return new RevertMethodReferenceRewriter(rewriters, this);
	}
	
	
	//字段重写器
	@Override
	public Rewriter<FieldReference> getFieldReferenceRewriter(Rewriters rewriters){
		return new RevertFieldReferenceRewriter(rewriters, this);
	}
	
	//指令重写器
	
	@Override
	public Rewriter<Instruction> getInstructionRewriter(Rewriters rewriters){
		return new RevertInstructionRewriter(rewriters, this);
	}
	
	public static String getMethodSignature(MethodReference methodReference){
		StringBuilder parameterTypeSb = new StringBuilder();
		parameterTypeSb.append('(');
		for ( CharSequence parameterType : methodReference.getParameterTypes() ){
			parameterTypeSb.append(parameterType);
		}
		parameterTypeSb.append(')');

		String methodSignature = methodReference.getName() + parameterTypeSb.toString();
		return methodSignature;
	}

}
