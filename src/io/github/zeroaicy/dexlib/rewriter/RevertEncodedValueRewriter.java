package io.github.zeroaicy.dexlib.rewriter;

import javax.annotation.Nonnull;
import org.jf.dexlib2.ValueType;
import org.jf.dexlib2.base.value.BaseStringEncodedValue;
import org.jf.dexlib2.iface.value.EncodedValue;
import org.jf.dexlib2.iface.value.StringEncodedValue;
import org.jf.dexlib2.rewriter.EncodedValueRewriter;
import org.jf.dexlib2.rewriter.Rewriter;
import org.jf.dexlib2.rewriter.Rewriters;

public class RevertEncodedValueRewriter extends EncodedValueRewriter{

	private RevertRewriterModule revertRewriterModule;
	public RevertEncodedValueRewriter(Rewriters rewriters, RevertRewriterModule revertRewriterModule){
		super(rewriters);
		this.revertRewriterModule = revertRewriterModule;
	}
	//上一个EncodedValue是不是声明接下来是泛型声明
	boolean lastTEncodedValue;
	
	@Nonnull
	@Override
	public EncodedValue rewrite(@Nonnull EncodedValue encodedValue){
		int valueType = encodedValue.getValueType();
		if ( valueType == ValueType.STRING ){
			return reTypeNameFromAnnotation(encodedValue);
		}
		this.lastTEncodedValue = false;
		return super.rewrite(encodedValue);
	}

	private EncodedValue reTypeNameFromAnnotation(EncodedValue encodedValue){
		StringEncodedValue stringEncodedValue = (StringEncodedValue)encodedValue;
		String value = stringEncodedValue.getValue();
		//是否是泛型声明
		if ( "T".equals(value) ){
			this.lastTEncodedValue = true;
			return stringEncodedValue;
		}
		//处理数组
		if ( "[".equals(value) 
		//类签名必然 > 2
			|| value.length() <= 2 ){
				
			this.lastTEncodedValue = false;
			return stringEncodedValue;
		}

		//需要过滤泛型声明的问题
		//会有L开头的泛型声明，怎么解决呢🤔
		if ( lastTEncodedValue && value.startsWith("L") ){
			//上一个是T
			this.lastTEncodedValue = false;
			return stringEncodedValue;
		}

		//类名重写器
		Rewriter<String> typeRewriter = rewriters.getTypeRewriter();
		String stringValue ;
		//处理<
		if ( value.endsWith("<") ){
			String substring = value.substring(0, value.length() - 1) + ";";
			String rewrite = typeRewriter.rewrite(substring);
			stringValue = rewrite.substring(0, rewrite.length() - 1) + "<";

		}else{
			stringValue = typeRewriter.rewrite(value);
		}
		this.lastTEncodedValue = false;
		return new RewrittenStringEncodedValue(stringValue);
	}

	public class RewrittenStringEncodedValue extends BaseStringEncodedValue{
		protected String stringValue;

		public RewrittenStringEncodedValue(@Nonnull String stringValue){
			this.stringValue = stringValue;
		}
		@Nonnull 
		@Override
		public String getValue(){
			return stringValue;
		}
	}
}
