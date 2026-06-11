package io.github.zeroaicy.dexlib.rewriter;
import javax.annotation.Nonnull;
import org.jf.dexlib2.AccessFlags;
import org.jf.dexlib2.iface.Method;
import org.jf.dexlib2.rewriter.MethodRewriter;
import org.jf.dexlib2.rewriter.Rewriters;
import java.util.Set;
import org.jf.dexlib2.iface.Annotation;
import java.util.HashSet;
import java.util.List;
import org.jf.dexlib2.iface.MethodParameter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class RevertMethodRewriter extends MethodRewriter{
	private RevertRewriterModule revertRewriterModule;

	public RevertMethodRewriter(Rewriters rewriters, RevertRewriterModule revertRewriterModule){
		super(rewriters);
		this.revertRewriterModule = revertRewriterModule;
	}

	@Override
	public Method rewrite(Method value){
		
		// 没有包的类
		boolean isModify  = value.getDefiningClass().indexOf('/') < 0;
		
		if( !isModify ){
			return new RevertRewrittenMethod(value, false);
		}
		// 非私有类
		int accessFlags = value.getAccessFlags();
		if ( AccessFlags.PRIVATE.isSet(accessFlags) ){
			return new RevertRewrittenMethod(value, false);
		}
		return new RevertRewrittenMethod(value, true);
	}
	
	
	public class RevertRewrittenMethod extends RewrittenMethod {

		private Set<? extends Annotation> rewriteAnnotations;

		private List<? extends MethodParameter> rewriteParameters;
		public RevertRewrittenMethod(@Nonnull Method method){
            this(method, false);
        }
		
		private final boolean isModify;
		public RevertRewrittenMethod(@Nonnull Method method, boolean isModify){
			super(method);
			
			this.isModify = isModify;
			// 重写 用Annotation容器做key
			// 如果不提前hashCode 会变
			this.getAnnotations().hashCode();
			for(MethodParameter rewriteParameter :  getParameters()){
				rewriteParameter.getAnnotations();
			}
			// 提交加载并重写
			this.rewriteAnnotations = this.getAnnotations();
			
		}
        
		//兼容模式
		@Override
		public int getAccessFlags(){
			if( !this.isModify){
				return super.getAccessFlags();
			}
			
			int  accessFlags = super.getAccessFlags();
			if ( AccessFlags.PRIVATE.isSet(accessFlags) ){
				//private暂时不修改
				return accessFlags;
			}
			
			// 应该 加个开关
			//AccessFlags AccessFlags;
			if ( AccessFlags.PROTECTED.isSet(accessFlags) ){
				//消除protected修饰符
				accessFlags = accessFlags & ~AccessFlags.PROTECTED.getValue();
			}
			//所有的类都加上public，除了private
			accessFlags = accessFlags | AccessFlags.PUBLIC.getValue();
			
			return accessFlags;
		}

		@Override
		public List<? extends MethodParameter> getParameters() {
			if( this.rewriteParameters == null ){
				List<? extends MethodParameter> parameters = super.getParameters();
				this.rewriteParameters = new ArrayList<MethodParameter>(parameters);
			}
			return this.rewriteParameters;
		}
		
		@Override
		public Set<? extends Annotation> getAnnotations() {
			if( this.rewriteAnnotations == null ){
				// 遍历否则没有重写
				Set<? extends Annotation> annotations = super.getAnnotations();
				this.rewriteAnnotations = new HashSet<>(annotations);
				this.rewriteAnnotations.remove(null);
			}
			return this.rewriteAnnotations;
		}
	}

}
