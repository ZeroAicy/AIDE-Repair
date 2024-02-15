package io.github.zeroaicy.dexlib.aidePlus;
import com.google.common.io.Files;
import java.io.File;

public class aide_plus_合并测试 extends aide_plus
{

	@Override
	public String getLastVersion(){
		return "1";
	}

	@Override
	public String getVersion(){
		///实例是3[由2和3的aide+_mapping_output.txt合并的规则来修改]
		//此类实现了夸版本重命名和逆重命名
		return "合并测试";
	}
	
}
