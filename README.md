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

## 2.4 规则中的还原改名

`data/aide_plus/aide_plus_2.4/aide+_mapping_2.4.txt` 在原有规则上并入了还原代码模型时得到的改名（输入仍是 `AIDE+_2.3.zip`）：

- 代码模型范围（`com.aide.codemodel`、`com.aide.engine` 及其引用的 `abcd` 类，共 431 个类）内的类名、字段、方法采用依据还原的代码模型源码确定的名字；
  原规则对这些类的 236 条改名不再生效（其中与新命名不同的有 12 个类名、45 个字段、79 个方法）。实现代码模型接口的 10 个界面监听类
  （如 `EngineService$b`、`OpenFileService$a`），其方法随接口改名，以保证重写关系不断。
- 范围外（界面、JGit、spongycastle 等）以原规则为准，原规则没有命名的部分补上还原时得到的名字（内置库按上游原名推断）：
  - 原规则只移了包、类名仍是混淆名的 554 个类，改为“原规则的包 + 还原的类名”，如 `org/eclipse/jgit/a30` → `org/eclipse/jgit/DiffConfig`；
    包不拆分，不影响包内访问。原规则给了外部类名、内部类仍是混淆名的 49 个内部类补上名字，如 `DxTools$a` → `DxTools$FieldIdMapper`。
  - 补上约 6000 条成员改名（作者原有的 480 条成员改名全部保留）；与原规则命名不同的 5 处（JGit 的 `Repository`、`RevCommit`、`SystemReader` 方法）保留原规则。
  - 原规则中 4 个内部类没有跟随外部类（如 `org/eclipse/jgit/f70$a` 而外部类是 `org/eclipse/jgit/lib/ObjectLoader`，本工具会报“内部类-新名未跟随外部类”），
    改为跟随外部类（`ObjectLoader$SmallObject`）。
- 范围外其余仍是混淆名的部分（界面、编辑器、构建、Git 界面、probelytics，内置库中未命名的类与成员，以及 kellinwood zipsigner、OUYA、
  Dropbox v1、结算/授权/安装来源 AIDL 等小库）也补上了名字：开源库与上游原版 jar 逐类、逐成员匹配取原名；枚举常量与 `$VALUES`
  按静态初始化中传给枚举构造器的字符串精确还原；库中带字符串常量初始化的字段（OID 常量、JGit 目录字段等）按常量与上游核对；
  AIDE 自有代码按实现命名；javac 生成的静态访问器补成 `access$000`、`access$100`…。合并后共 4803 个类有规则，范围外新增 28359 条，
  与原规则冲突时保留原规则 175 处。谷歌闭源库（play-services、firebase、ads 等，上游发布的 jar 本身就是混淆名）不处理；
  其余仍是混淆名的约 180 个类、620 个字段、480 个方法（没有可靠依据的少量成员）。
- 原规则里同一个类或成员重复给出不同新名时，与本工具一样取先出现的那条（如 `abcd/lo0`、`abcd/bp0`），合并后只保留生效的规则。
- 合并时校验：类名唯一、每个类的字段与方法不重名、同一重写链同名、改名后不与原本无关的父类方法（含 android.jar）意外构成重写；
  本工具输出的完整规则同样通过校验。
- 运行时多出 23 条“严重警告⚠️:存在从类…重写为父类… -> clone()/next()”：这些是还原协变返回的重写（如 JGit 的抽象类声明
  `public abstract X clone()`，桥接方法 `Object clone()` 在父类中，带 BRIDGE|SYNTHETIC），本工具只在当前类中找桥接方法所以报严重；
  dex 中两者描述符不同，运行时分派不变。
- 按实现重新核对后，改正了上一版中与实际含义不符的名字（约 80 条）：`Modification` 的字段与 getter 整体错位一位（`getStartLine` 实为种类等），
  按实际含义重排；`RefactoringCallback` 的四个编辑方法改为 `formatLines` / `moveText` / `copyText` / `replaceKeepingCaret`；
  `DebugMetadataCallback.pushField` / `pushUnary` 改为 `pushPrefixOperator` / `pushArrayLength`（`UnaryExpression` 改名 `ArrayLengthExpression`）；
  `JavaTypeSystem` 的两个类型判断原先对调，改为 `isPrimitiveType` / `isReferenceType`；`LogcatService` 中 logcat 与 ADRT 两路的方法名
  原先相反，改为 `addLogcatLine` / `processAdrtLine` / `hasLogcatOutput` / `isSystemLogAvailable`；`OpenFileModel.navigateTo(int,int)`
  实为设置行缩进，改为 `setLineIndent`；另有 `SyntaxTree`、`EntitySpace` 等几处成员改名，`Engine` 剩余的短名字段补上名字。

原来的 `AIDE+_2.4.zip`、`aide+_mapping_2.4.txt`、`aide+_mapping_output_2.4.txt` 原样存于 `aide_plus_2.4/备份[封存]/aide_plus_2.4-备份[封存].zip`。
原来的 `AIDE+_2.4.zip` 比当时的规则旧，用当时的规则重跑会多出 `SyntaxTreeStyles → SyntaxToken` 等后加的改名；现在的输出由本规则重新生成。
基于 2.4 名字写的 2.5 规则若涉及上述代码模型成员，需要按新名字调整。