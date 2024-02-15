package io.github.zeroaicy.dexlib.rewriter;
import javax.annotation.Nonnull;
import org.jf.dexlib2.AccessFlags;
import org.jf.dexlib2.iface.Method;
import org.jf.dexlib2.rewriter.MethodRewriter;
import org.jf.dexlib2.rewriter.Rewriters;

public class RevertMethodRewriter extends MethodRewriter{
	private RevertRewriterModule revertRewriterModule;

	public RevertMethodRewriter(Rewriters rewriters, RevertRewriterModule revertRewriterModule){
		super(rewriters);
		this.revertRewriterModule = revertRewriterModule;
	}

	@Override
	public Method rewrite(Method value){
		boolean 是否修改  = value.getDefiningClass().indexOf('/') < 0;
		
		if( !是否修改 ){
			return super.rewrite(value);
		}
		int accessFlags = value.getAccessFlags();
		if ( AccessFlags.PRIVATE.isSet(accessFlags) ){
			//不处理private
			return super.rewrite(value);
		}
		return super.rewrite(new RevertRewrittenMethod(value));
	}
	public class RevertRewrittenMethod extends RewrittenMethod{
		public RevertRewrittenMethod(@Nonnull Method method){
            super(method);
        }
		
		//兼容模式
		@Override
		public int getAccessFlags(){
			int  accessFlags = super.getAccessFlags();
			if ( AccessFlags.PRIVATE.isSet(accessFlags) ){
				//private暂时不修改
				return accessFlags;
			}
			//AccessFlags AccessFlags;
			if ( AccessFlags.PROTECTED.isSet(accessFlags) ){
				//消除protected修饰符
				accessFlags = accessFlags & ~AccessFlags.PROTECTED.getValue();
			}
			//所有的类都加上public，除了private
			accessFlags = accessFlags | AccessFlags.PUBLIC.getValue();
			return accessFlags;
		}

	}

}
