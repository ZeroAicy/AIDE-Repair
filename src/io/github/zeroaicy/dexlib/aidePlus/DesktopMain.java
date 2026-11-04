package io.github.zeroaicy.dexlib.aidePlus;

import java.io.File;
import java.io.IOException;

/**
 * 电脑上运行 aide_plus_tools 的入口（手机上仍用 aide_plus 默认的数据目录）。
 *
 * 用法：java -cp &lt;编译结果;libs/*&gt; io.github.zeroaicy.dexlib.aidePlus.DesktopMain &lt;data/aide_plus 目录&gt; &lt;版本键&gt;
 * 例如：... DesktopMain data/aide_plus 2.4
 */
public class DesktopMain {

	public static void main(String[] args) throws IOException {
		if (args.length != 2) {
			System.err.println("用法：DesktopMain <data/aide_plus 目录> <版本键，如 2.4>");
			System.exit(2);
		}
		File root = new File(args[0]);
		if (!root.isDirectory()) {
			throw new IOException("数据目录不存在：" + root.getAbsolutePath());
		}
		aide_plus_tools.setRootDataDir(root.getAbsolutePath().replace(File.separatorChar, '/'));
		aide_plus_tools.runAidePlus(args[1]);
	}
}
