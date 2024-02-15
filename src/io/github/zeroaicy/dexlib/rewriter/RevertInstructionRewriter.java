package io.github.zeroaicy.dexlib.rewriter;
import io.github.zeroaicy.dexlib.analysis.RewriterClassData;
import javax.annotation.Nonnull;
import org.jf.dexlib2.Format;
import org.jf.dexlib2.ReferenceType;
import org.jf.dexlib2.base.reference.BaseStringReference;
import org.jf.dexlib2.builder.instruction.BuilderInstruction21c;
import org.jf.dexlib2.builder.instruction.BuilderInstruction31c;
import org.jf.dexlib2.iface.instruction.Instruction;
import org.jf.dexlib2.iface.instruction.ReferenceInstruction;
import org.jf.dexlib2.iface.instruction.formats.Instruction21c;
import org.jf.dexlib2.iface.instruction.formats.Instruction31c;
import org.jf.dexlib2.iface.reference.StringReference;
import org.jf.dexlib2.rewriter.InstructionRewriter;
import org.jf.dexlib2.rewriter.Rewriters;

public class RevertInstructionRewriter extends InstructionRewriter{

	private RevertRewriterModule revertRewriterModule;

	public RevertInstructionRewriter(Rewriters rewriter, RevertRewriterModule revertRewriterModule){
		super(rewriter);
		this.revertRewriterModule = revertRewriterModule;
	}

	@Nonnull 
	@Override public Instruction rewrite(@Nonnull Instruction instruction){
		if ( instruction.getOpcode().referenceType == ReferenceType.STRING ){

			String stringReferenceValue2 = ((StringReference) ((ReferenceInstruction)instruction).getReference()).getString();
			//不是所有的字符串都是反射吧
			if ( stringReferenceValue2 == null 
				|| stringReferenceValue2.length() == 0 
				//因为有rw类和rw字符串，所以类必须有包名，才处理😭
				|| stringReferenceValue2.indexOf('.') <= 0){
				return super.rewrite(instruction);
			}
			//必须是符合类名
			
			stringReferenceValue2 = stringReferenceValue2.replace('.', '/');
			stringReferenceValue2 = "L" + stringReferenceValue2 + ";";

			RewriterClassData rewriterClassData = revertRewriterModule.getRewriterClassData(stringReferenceValue2);
			if ( rewriterClassData == null ){
				return super.rewrite(instruction);
			}
			
			stringReferenceValue2 = rewriterClassData.getRenamed().replace('/', '.');
			stringReferenceValue2 = stringReferenceValue2.substring(1, stringReferenceValue2.length() - 1);

			final String stringReferenceValue = stringReferenceValue2;
			BaseStringReference baseStringReference =new BaseStringReference(){
				@Override
				public String getString(){
					return stringReferenceValue;
				}
			};
			if ( instruction.getOpcode().format == Format.Format21c ){
				return new BuilderInstruction21c(instruction.getOpcode(), ((Instruction21c)instruction).getRegisterA(), baseStringReference);
			}else if ( instruction.getOpcode().format == Format.Format31c ){
				return new BuilderInstruction31c(instruction.getOpcode(), ((Instruction31c)instruction).getRegisterA(), baseStringReference);
			}

		}
		return super.rewrite(instruction);
    }
}
