package io.github.zeroaicy.dexlib.data;




/**
 * 方法
 */
public class MethodData{

	
	//方法名
	private final String methodName;
	//参数签名
	private final String parametersSignature;
	//虚方法
	private final boolean virtual;
	//方法签名
	private final String methodDataSignature;
	
	//重命名的方法名，可以动态设置😊
	private String methodRename;
	
	
	
	public MethodData(String methodName, String parametersSignature, boolean virtual){
		this(methodName, parametersSignature, virtual, null);
	}
	
	public MethodData(String methodName, String parametersSignature, boolean virtual, String methodRename){
		this.methodName = methodName;
		this.parametersSignature = parametersSignature;
		this.virtual = virtual;
		
		this.methodRename = methodRename;
		//签名
		this.methodDataSignature = methodName.concat(parametersSignature).concat(String.valueOf(virtual));
	}

	public String getMethodDataSignature(){
		return methodDataSignature;
	}
	
	public boolean isVirtual(){
		return virtual;
	}
	
	public boolean equalsMethodData(MethodData methodData){
		if( methodData == null ) return false;
		return methodData.isVirtual() == this.isVirtual()
		&& methodData.methodName.equals(this.methodName)
		&& methodData.parametersSignature.equals(this.parametersSignature);
	}
}
