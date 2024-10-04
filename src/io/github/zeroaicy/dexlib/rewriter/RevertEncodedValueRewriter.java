package io.github.zeroaicy.dexlib.rewriter;

import javax.annotation.Nonnull;
import org.jf.dexlib2.ValueType;
import org.jf.dexlib2.base.value.BaseStringEncodedValue;
import org.jf.dexlib2.iface.value.EncodedValue;
import org.jf.dexlib2.iface.value.StringEncodedValue;
import org.jf.dexlib2.rewriter.EncodedValueRewriter;
import org.jf.dexlib2.rewriter.Rewriter;
import org.jf.dexlib2.rewriter.Rewriters;
import org.jf.dexlib2.writer.builder.BuilderEncodedValues;
import org.jf.dexlib2.immutable.value.ImmutableStringEncodedValue;
import java.util.Map;
import java.util.HashMap;
import org.jf.dexlib2.iface.value.ArrayEncodedValue;
import org.jf.dexlib2.base.value.BaseArrayEncodedValue;
import java.util.List;
import org.jf.dexlib2.rewriter.RewriterUtils;
import java.util.ArrayList;

public class RevertEncodedValueRewriter extends EncodedValueRewriter {

	private RevertRewriterModule revertRewriterModule;
	public RevertEncodedValueRewriter(Rewriters rewriters, RevertRewriterModule revertRewriterModule) {
		super(rewriters);
		this.revertRewriterModule = revertRewriterModule;
	}
	//上一个EncodedValue是不是声明，接下来是泛型声明
	boolean lastTEncodedValue;
	// 上一个 StringEncodedValue
	EncodedValue lastEncodedValue;

	// 受 lastStringEncodedValue值的影响
	// 每次计算结果可能不同 必须记录下来
	Map<EncodedValue, EncodedValue> encodedValueMap = new HashMap<>();

	@Nonnull
	@Override
	public EncodedValue rewrite(@Nonnull EncodedValue encodedValue) {

		EncodedValue encodedValueCache = encodedValueMap.get(encodedValue);
		if (encodedValueCache != null) {
			return encodedValueCache;
		}


		int valueType = encodedValue.getValueType();

		// 其实应该单独处理数组类型的
		// 这样更有利于修改，待以后实现
		if (valueType == ValueType.ARRAY) {
			ArrayEncodedValue arrayEncodedValue = (ArrayEncodedValue)encodedValue;
			return this.rewrite(arrayEncodedValue);
		}

		if (valueType == ValueType.STRING) {

			StringEncodedValue stringEncodedValue = (StringEncodedValue) encodedValue;
			StringEncodedValue reTypeNameFromAnnotation = reTypeNameFromAnnotation(stringEncodedValue);
			//encodedValueMap.put(encodedValue, reTypeNameFromAnnotation);

			this.lastEncodedValue = stringEncodedValue;
			return reTypeNameFromAnnotation;

		}

		this.lastTEncodedValue = false;


		EncodedValue rewrite = super.rewrite(encodedValue);
		//encodedValueMap.put(encodedValue, rewrite);

		this.lastEncodedValue = rewrite;
		return rewrite;
	}

	private StringEncodedValue reTypeNameFromAnnotation(StringEncodedValue stringEncodedValue) {
		String currentStringValue = stringEncodedValue.getValue();
		//是否是泛型声明
		if ("T".equals(currentStringValue)) {
			this.lastTEncodedValue = true;
			return stringEncodedValue;
		}
		//处理数组
		if ("[".equals(currentStringValue) 
		//类签名必然 > 2
			|| currentStringValue.length() <= 2) {

			this.lastTEncodedValue = false;
			return stringEncodedValue;
		}

		//需要过滤泛型声明的问题
		//会有L开头的泛型声明，怎么解决呢🤔
		if (lastTEncodedValue && currentStringValue.startsWith("L")) {
			//上一个是T
			this.lastTEncodedValue = false;

			return stringEncodedValue;
		}

		//类名重写器
		Rewriter<String> typeRewriter = rewriters.getTypeRewriter();

		// 考虑特殊泛型
		StringEncodedValue genericity1 = genericity1(currentStringValue, typeRewriter);
		if (genericity1 != null) {
			return genericity1;
		}

		String rewriteStringValue;
		//处理<
		if (currentStringValue.endsWith("<")) {
			String substring = currentStringValue.substring(0, currentStringValue.length() - 1) + ";";
			String rewrite = typeRewriter.rewrite(substring);
			rewriteStringValue = rewrite.substring(0, rewrite.length() - 1) + "<";

		}
		else {
			rewriteStringValue = typeRewriter.rewrite(currentStringValue);
		}

		this.lastTEncodedValue = false;
		return new RewrittenStringEncodedValue(rewriteStringValue);
	}





	/**
	 "Lcom/aide/codemodel/api/collections/MapOfInt",
	 "TE;>.Iterator;"
	 */
	private StringEncodedValue genericity1(String currentStringValue, Rewriter<String> typeRewriter) {
		if (this.lastEncodedValue == null
			|| this.lastEncodedValue.getValueType() != ValueType.STRING
			|| currentStringValue.startsWith("<")
			|| !currentStringValue.endsWith(";")) {

			return null;
		}


// 处理特殊签名
		int prefixEnd = currentStringValue.lastIndexOf(">.");
		String lastStringValue = ((StringEncodedValue)this.lastEncodedValue).getValue();

		if (prefixEnd < 0
			|| lastStringValue == null 
			|| lastStringValue.length() < 2
			|| lastStringValue.charAt(0) != 'L'
			|| lastStringValue.charAt(lastStringValue.length() - 1) == ';') {
			return null;
		}


		// 处理特殊签名



		prefixEnd += ">.".length();
		String enclosingType = lastStringValue.substring(0, lastStringValue.length() - 1);

		String prefix = currentStringValue.substring(0, prefixEnd);

		int suffixStart = currentStringValue.indexOf('<', prefixEnd);
		if (suffixStart < 0) {
			suffixStart = currentStringValue.length() - 1;
		}

		String type = currentStringValue.substring(prefixEnd, suffixStart);

		String suffix = currentStringValue.substring(suffixStart);

		String typeValue = enclosingType + "$" + type + ";";
		String rewriteTypeValue = typeRewriter.rewrite(typeValue);



		if (typeValue.equals(rewriteTypeValue) 
			|| rewriteTypeValue.length() <= enclosingType.length() + 1) {

			return null;
		}


		String type2 = rewriteTypeValue.substring(enclosingType.length() + 1, rewriteTypeValue.length() - 1);
		String rewriteStringValue2 = prefix + type2 + suffix;


		if (false) {
			// System.out.println(" prefix " + prefix);
			// System.out.println(" suffix " + suffix);
			System.out.println(" type " + type);
			System.out.println(" type2 " + type2);

			System.out.println(" currentStringValue " + currentStringValue);
			System.out.println(" rewriteStringValue " + rewriteStringValue2);
			System.out.println(" rewriteTypeValue " + rewriteTypeValue);
			System.out.println();

		}

		return new RewrittenStringEncodedValue(rewriteStringValue2);
	}

	public EncodedValue rewrite(@Nonnull ArrayEncodedValue encodedValue) {
		return new RewrittenArrayEncodedValue(encodedValue);
	}
	protected class RewrittenArrayEncodedValue extends BaseArrayEncodedValue {
        @Nonnull protected ArrayEncodedValue arrayEncodedValue;

		private List<? extends EncodedValue> oldValue;
		private List<? extends EncodedValue> rewrite = new ArrayList<>();

        public RewrittenArrayEncodedValue(@Nonnull ArrayEncodedValue arrayEncodedValue) {
            this.arrayEncodedValue = arrayEncodedValue;
			oldValue = arrayEncodedValue.getValue();

			rewrite.addAll(RewriterUtils.rewriteList(rewriters.getEncodedValueRewriter(), arrayEncodedValue.getValue()));

        }

		// 这样就不用重复处理了
        @Override @Nonnull public List<? extends EncodedValue> getValue() {
            return this.rewrite;
        }
    }
	public class RewrittenStringEncodedValue extends BaseStringEncodedValue {
		protected String stringValue;

		public RewrittenStringEncodedValue(@Nonnull String stringValue) {
			this.stringValue = stringValue;
		}
		@Nonnull 
		@Override
		public String getValue() {
			return this.stringValue;
		}
	}


}
