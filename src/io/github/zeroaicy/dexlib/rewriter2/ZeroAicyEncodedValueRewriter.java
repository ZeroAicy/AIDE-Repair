package io.github.zeroaicy.dexlib.rewriter2;
import javax.annotation.Nonnull;
import org.jf.dexlib2.ValueType;
import org.jf.dexlib2.base.value.BaseStringEncodedValue;
import org.jf.dexlib2.iface.value.EncodedValue;
import org.jf.dexlib2.iface.value.StringEncodedValue;
import org.jf.dexlib2.rewriter.EncodedValueRewriter;
import org.jf.dexlib2.rewriter.Rewriters;
import org.jf.dexlib2.rewriter.Rewriter;

public class ZeroAicyEncodedValueRewriter extends EncodedValueRewriter{
	ZeroAicyRewriterModule zeroAicyRewriterModule;
	public ZeroAicyEncodedValueRewriter(Rewriters rewriters, ZeroAicyRewriterModule zeroAicyRewriterModule){
		super(rewriters);
		this.zeroAicyRewriterModule = zeroAicyRewriterModule;
	}
	
	@Nonnull
	@Override
	public EncodedValue rewrite(@Nonnull EncodedValue encodedValue){
		int valueType = encodedValue.getValueType();
		switch ( valueType ){
			case ValueType.STRING:
				return new RewrittenStringEncodedValue((StringEncodedValue)encodedValue);
		}
		return super.rewrite(encodedValue);
	}

	public class RewrittenStringEncodedValue extends BaseStringEncodedValue{
		@Nonnull protected StringEncodedValue stringEncodedValue;

		public RewrittenStringEncodedValue(@Nonnull StringEncodedValue enumEncodedValue){
			this.stringEncodedValue = enumEncodedValue;
		}
		
		@Override
		public String getValue(){
			Rewriter<String> typeRewriter = rewriters.getTypeRewriter();
			String value = stringEncodedValue.getValue();
			
			if( "[".equals(value) || value.length() <= 1 ){
				return value;
			}
			
			if( value.endsWith("<")){
				String substring = value.substring(0, value.length() - 1) + ";";
				String rewrite = typeRewriter.rewrite(substring);
				return rewrite.substring(0, rewrite.length() - 1) + "<";
			}
			
			return typeRewriter.rewrite(value);
		}
	}
}
