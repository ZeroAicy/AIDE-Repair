# aide-repair
AIDE+反混淆器  
用于AIDE底包dex的类名 字段名 方法名的重命名 
也适用于其它，规则文件需要自己写或用他工具生成  

## 在电脑上运行

`DesktopMain` 用指定的数据目录运行 `aide_plus_tools` 中登记的版本（手机上仍用 `aide_plus` 里的默认目录）。
只编译入口依赖到的类即可（`util/reflect` 等手机端工具不需要）：

```sh
javac -source 11 -target 11 -cp "libs/*;<android.jar>" -sourcepath "src;dexlib2" -d out src/io/github/zeroaicy/dexlib/aidePlus/DesktopMain.java
java -Xmx6g -cp "out;libs/*" io.github.zeroaicy.dexlib.aidePlus.DesktopMain data/aide_plus 2.4
```

版本 2.4 登记了 `android_sdk/android-36.dex`（数据目录下）；电脑上可用 SDK build-tools 的 d8 转换
`platforms/android-36/android.jar` 得到（`d8 --release --min-api 26 --no-desugaring --output <目录> android.jar`，把生成的 classes.dex 改名放入）。

## 2.4 规则中的代码模型改名

`data/aide_plus/aide_plus_2.4/aide+_mapping_2.4.txt` 在原有规则上并入了代码模型的改名（输入仍是 `AIDE+_2.3.zip`）：

- 代码模型范围（`com.aide.codemodel`、`com.aide.engine` 及其引用的 `abcd` 类，共 431 个类）内的类名、字段、方法采用依据还原的代码模型源码确定的名字；
  原规则对这些类的 236 条改名不再生效（其中与新命名不同的有 12 个类名、45 个字段、79 个方法）。
- 范围外（界面、JGit、spongycastle 等）保留原规则。实现代码模型接口的 10 个界面监听类（如 `EngineService$b`、`OpenFileService$a`），
  其方法随接口改名，以保证重写关系不断。
- 原规则里同一个类或成员重复给出不同新名时，与本工具一样取先出现的那条（如 `abcd/lo0`、`abcd/bp0`），合并后只保留生效的规则。
- 合并时校验：类名唯一、每个类的字段与方法不重名、同一重写链同名、改名后不与原本无关的父类方法（含 android.jar）意外构成重写。

原来的 `AIDE+_2.4.zip`、`aide+_mapping_2.4.txt`、`aide+_mapping_output_2.4.txt` 原样存于 `aide_plus_2.4/备份[封存]/aide_plus_2.4-备份[封存].zip`。
原来的 `AIDE+_2.4.zip` 比当时的规则旧，用当时的规则重跑会多出 `SyntaxTreeStyles → SyntaxToken` 等后加的改名；现在的输出由本规则重新生成。
基于 2.4 名字写的 2.5 规则若涉及上述代码模型成员，需要按新名字调整。