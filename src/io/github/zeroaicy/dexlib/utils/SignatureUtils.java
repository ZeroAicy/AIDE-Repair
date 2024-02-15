package io.github.zeroaicy.dexlib.utils;
import org.jf.dexlib2.iface.Method;

public class SignatureUtils {
	/*
	 * 计算方法签名
	 */
	public static String getMethodSignature(Method method, boolean virtualMethod) {
		StringBuilder methodSignature = new StringBuilder("(");
		for (CharSequence parameterType : method.getParameterTypes()) {
			methodSignature.append(parameterType);
		}
		methodSignature.append(")");
		methodSignature.append(virtualMethod);

		return method.getName() + methodSignature.toString();
	}
	/*
	 * 计算方法参数签名
	 */
	public static String getMethodParameters(Method method) {
		StringBuilder methodSignature = new StringBuilder("(");
		for (CharSequence parameterType : method.getParameterTypes()) {
			methodSignature.append(parameterType);
		}
		methodSignature.append(")");

		return methodSignature.toString();
	}
	
}
