package io.github.zeroaicy.dexlib.aidePlus.analysis;
import io.github.zeroaicy.util.ContextUtil;
import android.content.Context;
import java.io.File;
import java.nio.channels.FileChannel;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.io.IOException;

/**
 * 1. dex信息提取分析[引用信息(被引用与引用链集合)，继承信息，]
 */
public class McpAnalysisTools {
	 
	public static void main(String[] args ) throws IOException{
		Context context = ContextUtil.getContext();
		File filesDir = context.getFilesDir();

		File file = new File(filesDir, ".AIDESettings.json");
		
		FileChannel mChannel = FileChannel.open(file.toPath());
		ByteBuffer mSecretBuffer = mChannel.map(FileChannel.MapMode.READ_ONLY, 0, file.length()).order(ByteOrder.BIG_ENDIAN);
		System.out.println( mSecretBuffer.get() ) ;
	}
}

