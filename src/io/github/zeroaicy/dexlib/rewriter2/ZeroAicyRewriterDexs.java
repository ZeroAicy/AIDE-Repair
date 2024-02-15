package io.github.zeroaicy.dexlib.rewriter2;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.iface.MultiDexContainer;
import org.jf.dexlib2.rewriter.DexRewriter;
import org.jf.dexlib2.writer.io.MemoryDataStore;
import org.jf.dexlib2.writer.pool.DexPool;
import java.util.Locale;

@Deprecated
public class ZeroAicyRewriterDexs{
	public static void 架构设计(){

		/**
		 * 1.类名修改
		 *  1.1 类名修改需要重写 TypeRewriter类的rewriteUnwrappedType方法
		 *      判断是否是类(L.*;)，是则从 类重命名规则中替换
		 *  1.2 支持8正则表达式替换
		 *      1.2.3 先从[全局类名重命名Map]中查询
		 *      没有包名的可批量重命名
		 *      没有再判断正则，修改后put[全局类名重命名Map]
		 *      如何减少正则的判断呢，可以限定包名

		 *   1.3 规则设计
		 *      规则1：类名重命名，显示指定，一对一
		 *      ReTypeName[分隔符]Labcd/a123;[分隔符]Lcom/aide/123;
		 *      修改类是内部类也应该修改
		 
		 *      规则2：包名重命名，显示指定，不包括子包
		 *      RePackageName[分隔符]Lold_package/;[分隔符]Lnew_package/;
		 *          Labcd/a123; -> Lcom/aide/a123; ✔
		 *          Labcd/b99656/a123; ❌
		 *      规则2.1: ReTypeName了[分隔符][分隔符]Lcom/aide/123;
		 *      则替换没有包名的类，充分利用规则2
		 *      当被替换的包名为空时，相当于插入，而又因为不会替换子包名
		 *      所以有包名的类不会被替换

		 *      规则3：包名重命名，显示指定包括子包
		 *      RePackageNameAll[分隔符]Labcd/;[分隔符]Lcom/aide/;
		 *      Labcd/a123; -> Lcom/aide/a123; ✔
		 *      Labcd/b99656/a123; -> Lcom/aide/b99656/a123;✔
		 */
	}
	
	public static void main2(String[] args) throws Exception{
		//File ruleFile = new File("");
		List<String> ruleList = new ArrayList<>();
		//从规则文件读取规则
		//ruleList.add("RePackageName\t\tLcom/aide/unknown/");
		ruleList.add("RePackageName\t\tLabcd/");
		//initRule(ruleList);
		
		//全局类名替换Map
		Map<String, String> typeReNameMap = new HashMap<>();
		//处理可以处理的规则
		List<TypeNameRewriterRule> rewriterRules = new ArrayList<>();
		for ( String rule : ruleList ){
			TypeNameRewriterRule rewriterRule = new TypeNameRewriterRule(rule);
			if ( rewriterRule.isReTypeName() ){
				typeReNameMap.put(rewriterRule.original, rewriterRule.now);
				//规则已处理，不用保留
				continue;
			}
			rewriterRules.add(rewriterRule);
		}

		String inputDexZipFilePath = "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/DexLib2-3/data/RewriterDexs/AIDE+底包.zip";
		String outputDexZipFilePath = "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/DexLib2-3/data/RewriterDexs/AIDE+修改.zip";
		
		//测试
		//inputDexZipFilePath = "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/DexLib2-3/data/RewriterDexs/classes.zip";
		
		File dexsZipFile = new File(inputDexZipFilePath);
		
		File dexsZipOutFile = new File(outputDexZipFilePath);

		ZeroAicyRewriterModule ruleRewriterModule = new ZeroAicyRewriterModule(typeReNameMap, rewriterRules);
		DexRewriter rewriter = new DexRewriter(ruleRewriterModule);
		
		MultiDexContainer<? extends DexBackedDexFile> loadDexContainer = DexFileFactory.loadDexContainer(dexsZipFile, null);
		//重写后的Dex容器
		RewriteDexFileContainer rewriteDexContainer = new RewriteDexFileContainer();
		for ( String dexEntryName : loadDexContainer.getDexEntryNames() ){
			DexBackedDexFile loadDexFile = loadDexContainer.getEntry(dexEntryName).getDexFile();
			//使用重写器重写Dex
			DexFile rewriteDexFile = rewriter.getDexFileRewriter().rewrite(loadDexFile);
			//向容器中添加
			rewriteDexContainer.putEntry(dexEntryName, rewriteDexFile);
		}
		
		//将重写后DexFile写入zip文件
		writeDexToZip(dexsZipOutFile, rewriteDexContainer);
		
		//日志
		System.out.println("重写完成");
		System.out.println(dexsZipOutFile.getAbsolutePath());

		List<String> keyList = new ArrayList<String>(typeReNameMap.keySet());
		//排序
		Collections.sort(keyList);

		PrintStream printStream = new PrintStream(new File(dexsZipOutFile.getParentFile(), "rule_changer.txt"));
		
		//写出修改规则
		for ( String key : keyList ){
			printStream.print("ReTypeName");
			printStream.print("\t");
			printStream.print(key);
			printStream.print("\t");
			printStream.println(typeReNameMap.get(key));
		}
		printStream.close();
		
		System.out.println("rule_changer.txt 写入完成");
	}

	
	private static void writeDexToZip(File dexsZipOutFile, MultiDexContainer<DexFile> rewriteDexContainer) throws IOException{
		
		FileOutputStream dexsFileOutput = new FileOutputStream(dexsZipOutFile);
		ZipOutputStream zipOutput = new ZipOutputStream(dexsFileOutput);
		
		for ( String dexEntryName : rewriteDexContainer.getDexEntryNames() ){
			DexFile inputDexFile = rewriteDexContainer.getEntry(dexEntryName).getDexFile();
			DexPool dexPool = new DexPool(inputDexFile.getOpcodes());
			for ( ClassDef classDef: inputDexFile.getClasses() ){
				dexPool.internClass(classDef);
			}

			MemoryDataStore memoryDataStore = new MemoryDataStore(1024 * 100);
			dexPool.writeTo(memoryDataStore);

			ZipEntry zipEntry = new ZipEntry(dexEntryName);
			zipEntry.setSize(memoryDataStore.getSize());
			zipOutput.putNextEntry(zipEntry);
			zipOutput.write(memoryDataStore.getBuffer(), 0, memoryDataStore.getSize());
			zipOutput.closeEntry();
		}
		//关闭压缩包
		zipOutput.close();
		dexsFileOutput.close();
	}

	
	
	
	private static void initRule(List<String> ruleString){
		ruleString.add("ReTypeName\tLcom/aide/common/a;\tLcom/aide/common/AIDEActivityStarter;");
		ruleString.add("ReTypeName\tLcom/aide/common/b;\tLcom/aide/common/AIDEHelpActivityStarter;");
		ruleString.add("ReTypeName\tLcom/aide/common/c;\tLcom/aide/common/AIDEShopActivityStarter;");
		ruleString.add("ReTypeName\tLcom/aide/common/ColorPickerView$a;\tLcom/aide/common/ColorPickerView$ColorRunnable;");
		ruleString.add("ReTypeName\tLcom/aide/common/d;\tLcom/aide/common/AndroidHelper;");
		ruleString.add("ReTypeName\tLcom/aide/common/e;\tLcom/aide/common/AppLog;");
		ruleString.add("ReTypeName\tLcom/aide/common/f;\tLcom/aide/common/Base64;");
		ruleString.add("ReTypeName\tLcom/aide/common/g;\tLcom/aide/common/Base64Coder;");
		ruleString.add("ReTypeName\tLcom/aide/common/h;\tLcom/aide/common/Base64DecoderException;");
		ruleString.add("ReTypeName\tLcom/aide/common/i;\tLcom/aide/common/ClickableBorder;");
		ruleString.add("ReTypeName\tLcom/aide/common/j;\tLcom/aide/common/ColorPickerDialog;");
		ruleString.add("ReTypeName\tLcom/aide/common/k;\tLcom/aide/common/KeyStroke;");
		ruleString.add("ReTypeName\tLcom/aide/common/KeyStrokeDetector$b;\tLcom/aide/common/KeyStrokeDetector$KeyStrokeHandler;");
		ruleString.add("ReTypeName\tLcom/aide/common/l;\tLcom/aide/common/ListAdapterBase;");
		ruleString.add("ReTypeName\tLcom/aide/common/m;\tLcom/aide/common/MessageBox;");
		ruleString.add("ReTypeName\tLcom/aide/common/n;\tLcom/aide/common/NonOverwritingFileOutputStream;");
		ruleString.add("ReTypeName\tLcom/aide/common/o;\tLcom/aide/common/PositionalXMLReader;");
		ruleString.add("ReTypeName\tLcom/aide/common/p;\tLcom/aide/common/ProgressDialogHandler;");
		ruleString.add("ReTypeName\tLcom/aide/common/q;\tLcom/aide/common/PropertiesDialog;");
		ruleString.add("ReTypeName\tLcom/aide/common/r;\tLcom/aide/common/SerializeHelper;");
		ruleString.add("ReTypeName\tLcom/aide/common/s;\tLcom/aide/common/SizePickerDialog;");
		ruleString.add("ReTypeName\tLcom/aide/common/t;\tLcom/aide/common/Social;");
		ruleString.add("ReTypeName\tLcom/aide/common/u;\tLcom/aide/common/SocialDialog;");
		ruleString.add("ReTypeName\tLcom/aide/common/UndoManager$a;\tLcom/aide/common/UndoManager$UndoManagerListener;");
		ruleString.add("ReTypeName\tLcom/aide/common/v;\tLcom/aide/common/StreamUtilities;");
		ruleString.add("ReTypeName\tLcom/aide/common/w;\tLcom/aide/common/TrainerLogo;");
		ruleString.add("ReTypeName\tLcom/aide/common/x;\tLcom/aide/common/ValueRunnable;");

		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/a;\tLcom/aide/ui/views/editor/AbstractAction;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/b;\tLcom/aide/ui/views/editor/AbstractModel;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/c;\tLcom/aide/ui/views/editor/ActionRunnable;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/d;\tLcom/aide/ui/views/editor/EditorModel;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/f;\tLcom/aide/ui/views/editor/SyncHandler;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/g;\tLcom/aide/ui/views/editor/Color;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/h;\tLcom/aide/ui/views/editor/Caret;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/i;\tLcom/aide/ui/views/editor/CaretMoveListener;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/j;\tLcom/aide/ui/views/editor/Model;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/k;\tLcom/aide/ui/views/editor/ModelListener;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/n;\tLcom/aide/ui/views/editor/TextStyle;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/o;\tLcom/aide/ui/views/editor/SelectionListener;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/OConsole$a;\tLcom/aide/ui/views/editor/OConsole$InvalidateLayoutTask;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/OConsole$b;\tLcom/aide/ui/views/editor/OConsole$IndexingLayoutTask;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/OConsole$f;\tLcom/aide/ui/views/editor/OConsole$ColorKind;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/OEditor$o0;\tLcom/aide/ui/views/editor/OEditor$ActionType;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/OEditor$n0;\tLcom/aide/ui/views/editor/OEditor$InternalState;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/p;\tLcom/aide/ui/views/editor/Size;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/r;\tLcom/aide/ui/views/editor/Font;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/s;\tLcom/aide/ui/views/editor/Graphics;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/t;\tLcom/aide/ui/views/editor/Icon;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/u;\tLcom/aide/ui/views/editor/TextBuffer;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/x;\tLcom/aide/ui/views/editor/AbstractEditorAction;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/editor/z;\tLcom/aide/ui/views/editor/UndoStack;");

		ruleString.add("ReTypeName\tLcom/aide/ui/views/CodeEditText$a;\tLcom/aide/ui/views/CodeEditText$CodeEditTextModel;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/CodeEditText$b;\tLcom/aide/ui/views/CodeEditText$CodeEditTextHighlightingModel;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/CodeEditText$c;\tLcom/aide/ui/views/CodeEditText$EditorView;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/CustomKeysListView$a;\tLcom/aide/ui/views/CustomKeysListView$OnKeyEventListener;");
		ruleString.add("ReTypeName\tLcom/aide/ui/views/SplitView$d;\tLcom/aide/ui/views/SplitView$OnSplitChangeListener;");

		ruleString.add("ReTypeName\tLcom/aide/ui/a;\tLcom/aide/ui/AIDEEditorCompletion;");
		ruleString.add("ReTypeName\tLcom/aide/ui/AIDEEditorPager$E;\tLcom/aide/ui/AIDEEditorPager$OnKeyboardListener;");
		ruleString.add("ReTypeName\tLcom/aide/ui/f;\tLcom/aide/ui/App;");
		ruleString.add("ReTypeName\tLcom/aide/ui/g;\tLcom/aide/ui/AppCommands;");
		ruleString.add("ReTypeName\tLcom/aide/ui/h;\tLcom/aide/ui/QuickActionMenu;");
		ruleString.add("ReTypeName\tLcom/aide/ui/i;\tLcom/aide/ui/AppPreferences;");
		ruleString.add("ReTypeName\tLcom/aide/ui/k;\tLcom/aide/ui/AppFileIcons;");
		ruleString.add("ReTypeName\tLcom/aide/ui/o;\tLcom/aide/ui/QuickKeysBar;");
		ruleString.add("ReTypeName\tLcom/aide/ui/e;\tLcom/aide/ui/ExtendLibraries;");
		ruleString.add("ReTypeName\tLcom/aide/ui/c;\tLcom/aide/ui/ActionBarNoTabs;");
		ruleString.add("ReTypeName\tLcom/aide/ui/b;\tLcom/aide/ui/GlobalKeyCommand;");
		ruleString.add("ReTypeName\tLcom/aide/ui/d;\tLcom/aide/ui/SearchBarNoTabs;");
		ruleString.add("ReTypeName\tLcom/aide/ui/j;\tLcom/aide/ui/UserPresent;");

		ruleString.add("ReTypeName\tLcom/aide/engine/a0;\tLcom/aide/engine/OpenFile;");
		ruleString.add("ReTypeName\tLcom/aide/engine/b;\tLcom/aide/engine/Engine;");
		ruleString.add("ReTypeName\tLcom/aide/engine/service/a;\tLcom/aide/engine/service/IBuildListener;");
		ruleString.add("ReTypeName\tLcom/aide/engine/service/b;\tLcom/aide/engine/service/ICodeAnalysisEngineService;");
		ruleString.add("ReTypeName\tLcom/aide/engine/service/c;\tLcom/aide/engine/service/ICodeCompletionListener;");
		ruleString.add("ReTypeName\tLcom/aide/engine/service/d;\tLcom/aide/engine/service/IEngineErrorListener;");
		ruleString.add("ReTypeName\tLcom/aide/engine/service/e;\tLcom/aide/engine/service/IEngineListener;");
		ruleString.add("ReTypeName\tLcom/aide/engine/service/f;\tLcom/aide/engine/service/IGotoSymbolListener;");
		ruleString.add("ReTypeName\tLcom/aide/engine/service/g;\tLcom/aide/engine/service/IHighlightingListener;");
		ruleString.add("ReTypeName\tLcom/aide/engine/service/h;\tLcom/aide/engine/service/INavigationListener;");
		ruleString.add("ReTypeName\tLcom/aide/engine/service/i;\tLcom/aide/engine/service/IOpenFileInterface;");
		ruleString.add("ReTypeName\tLcom/aide/engine/service/j;\tLcom/aide/engine/service/IRefactoringListener;");
		ruleString.add("ReTypeName\tLcom/aide/engine/service/k;\tLcom/aide/engine/service/IUsageSearcherListener;");

		ruleString.add("ReTypeName\tLj4;\tLcom/aide/ui/util/FilePatternMatcher;");

		ruleString.add("ReTypeName\tLb8;\tLcom/aide/codemodel/language/xml/XmlCodeModel;");
		ruleString.add("ReTypeName\tLc8;\tLcom/aide/codemodel/language/xml/XmlLanguage;");
		ruleString.add("ReTypeName\tLd8;\tLcom/aide/codemodel/language/xml/XmlLexer;");
		ruleString.add("ReTypeName\tLe8;\tLcom/aide/codemodel/language/xml/XmlParser;");
		ruleString.add("ReTypeName\tLx7;\tLcom/aide/codemodel/language/xml/XmlCodeAnalyzer;");
		ruleString.add("ReTypeName\tLf8;\tLcom/aide/codemodel/language/xml/XmlSyntax;");
		ruleString.add("ReTypeName\tLg8;\tLcom/aide/codemodel/language/xml/XmlTools;");
		ruleString.add("ReTypeName\tLa8;\tLcom/aide/codemodel/language/xml/XmlFormatterOption;");

		ruleString.add("ReTypeName\tLe5;\tLcom/aide/codemodel/language/css/CssCodeModel;");
		ruleString.add("ReTypeName\tLh5;\tLcom/aide/codemodel/language/css/CssLexer;");
		ruleString.add("ReTypeName\tLi5;\tLcom/aide/codemodel/language/css/CssParser;");
		ruleString.add("ReTypeName\tLg5;\tLcom/aide/codemodel/language/css/CssLanguage;");
		ruleString.add("ReTypeName\tLl5;\tLcom/aide/codemodel/language/css/CssSyntax;");
		ruleString.add("ReTypeName\tLc5;\tLcom/aide/codemodel/language/css/CssCodeAnalyzer;");
		ruleString.add("ReTypeName\tLm5;\tLcom/aide/codemodel/language/css/CssTools;");

		ruleString.add("ReTypeName\tLk7;\tLcom/aide/codemodel/language/js/JavaScriptCodeModel;");
		ruleString.add("ReTypeName\tLl7;\tLcom/aide/codemodel/language/js/JavaScriptLanguage;");
		ruleString.add("ReTypeName\tLp7;\tLcom/aide/codemodel/language/js/JavaScriptSyntax;");
		ruleString.add("ReTypeName\tLq7;\tLcom/aide/codemodel/language/js/JavaScriptTools;");
		ruleString.add("ReTypeName\tLd7;\tLcom/aide/codemodel/language/js/JavaScriptCodeRenderer;");
		ruleString.add("ReTypeName\tLo7;\tLcom/aide/codemodel/language/js/JavaScriptSignatureAnalyzer;");
		ruleString.add("ReTypeName\tLr7;\tLcom/aide/codemodel/language/js/JavaScriptTypeSystem;");
		ruleString.add("ReTypeName\tLc7;\tLcom/aide/codemodel/language/js/JavaScriptFormatterOption;");
		ruleString.add("ReTypeName\tLg7;\tLcom/aide/codemodel/language/js/JavaScriptCommentsLanguage;");
		ruleString.add("ReTypeName\tLj7;\tLcom/aide/codemodel/language/js/JavaScriptCommentsTools;");
		ruleString.add("ReTypeName\tLi7;\tLcom/aide/codemodel/language/js/JavaScriptCommentsSyntax;");
		ruleString.add("ReTypeName\tLm7;\tLcom/aide/codemodel/language/js/JavaScriptParser;");

		ruleString.add("ReTypeName\tLn6;\tLcom/aide/codemodel/language/java/JavaCodeModel;");
		ruleString.add("ReTypeName\tLq6;\tLcom/aide/codemodel/language/java/JavaLanguage;");
		ruleString.add("ReTypeName\tLv6;\tLcom/aide/codemodel/language/java/JavaSyntax;");
		ruleString.add("ReTypeName\tLu6;\tLcom/aide/codemodel/language/java/JavaSignatureAnalyzer;");
		ruleString.add("ReTypeName\tLw5;\tLcom/aide/codemodel/language/java/JavaCodeAnalyzer;");
		ruleString.add("ReTypeName\tLw6;\tLcom/aide/codemodel/language/java/JavaTools;");
		ruleString.add("ReTypeName\tLb6;\tLcom/aide/codemodel/language/java/JavaCodeRenderer;");
		ruleString.add("ReTypeName\tLx6;\tLcom/aide/codemodel/language/java/JavaTypeSystem;");
		ruleString.add("ReTypeName\tLf6;\tLcom/aide/codemodel/language/java/JSharpCommentsLanguage;");
		ruleString.add("ReTypeName\tLh6;\tLcom/aide/codemodel/language/java/JSharpCommentsSyntax;");
		ruleString.add("ReTypeName\tLi6;\tLcom/aide/codemodel/language/java/JSharpCommentsTools;");
		ruleString.add("ReTypeName\tLl6;\tLcom/aide/codemodel/language/java/JavaCompiler;");
		ruleString.add("ReTypeName\tLs6;\tLcom/aide/codemodel/language/java/JavaParser;");
		ruleString.add("ReTypeName\tLe6;\tLcom/aide/codemodel/language/java/JavaFormatterOption;");
		ruleString.add("ReTypeName\tLm6;\tLcom/aide/codemodel/language/java/JavaDebugger;");

		ruleString.add("ReTypeName\tLo5;\tLcom/aide/codemodel/language/dtd/DtdCodeModel;");
		ruleString.add("ReTypeName\tLp5;\tLcom/aide/codemodel/language/dtd/DtdLanguage;");
		ruleString.add("ReTypeName\tLt5;\tLcom/aide/codemodel/language/dtd/DtdSyntax;");
		ruleString.add("ReTypeName\tLr5;\tLcom/aide/codemodel/language/dtd/DtdParser;");
		ruleString.add("ReTypeName\tLq5;\tLcom/aide/codemodel/language/dtd/DtdLexer;");

		ruleString.add("ReTypeName\tLs4;\tLcom/aide/codemodel/language/aidl/AidlCodeModel;");

		ruleString.add("ReTypeName\tLt4;\tLcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;");
		ruleString.add("ReTypeName\tLu4;\tLcom/aide/codemodel/language/classfile/JavaBinaryLanguage;");
		ruleString.add("ReTypeName\tLw4;\tLcom/aide/codemodel/language/classfile/JavaBinarySignatureAnalyzer;");
		ruleString.add("ReTypeName\tLv4;\tLcom/aide/codemodel/language/classfile/ClassFilePreProcessor;");

		ruleString.add("ReTypeName\tLu5;\tLcom/aide/codemodel/language/html/HtmlCodeModel;");
		ruleString.add("ReTypeName\tLt7;\tLcom/aide/codemodel/language/html/HtmlPreprocessor;");
		ruleString.add("ReTypeName\tLx4;\tLcom/aide/codemodel/language/cpp/CppCodeModel;");
		ruleString.add("ReTypeName\tLz4;\tLcom/aide/codemodel/language/cpp/CppLexer;");
		ruleString.add("ReTypeName\tLy4;\tLcom/aide/codemodel/language/cpp/CppLanguage;");
		ruleString.add("ReTypeName\tLa5;\tLcom/aide/codemodel/language/cpp/CppSyntax;");
		ruleString.add("ReTypeName\tLb5;\tLcom/aide/codemodel/language/cpp/CppTools;");

		ruleString.add("ReTypeName\tLag;\tLcom/aide/ui/util/FileSystem;");


		ruleString.add("ReTypeName\tLc1;\tLcom/aide/codemodel/api/abstraction/CodeModel;");
		ruleString.add("ReTypeName\tLe1;\tLcom/aide/codemodel/api/abstraction/Language;");
		ruleString.add("ReTypeName\tLi1;\tLcom/aide/codemodel/api/abstraction/TypeSystem;");
		ruleString.add("ReTypeName\tLf1;\tLcom/aide/codemodel/api/abstraction/SignatureAnalyzer;");
		ruleString.add("ReTypeName\tLz0;\tLcom/aide/codemodel/api/abstraction/CodeRenderer;");
		ruleString.add("ReTypeName\tLg1;\tLcom/aide/codemodel/api/abstraction/Syntax;");
		ruleString.add("ReTypeName\tLh1;\tLcom/aide/codemodel/api/abstraction/Tools;");
		ruleString.add("ReTypeName\tLx0;\tLcom/aide/codemodel/api/abstraction/CodeAnalyzer;");
		ruleString.add("ReTypeName\tLd1;\tLcom/aide/codemodel/api/abstraction/Preprocessor;");
		ruleString.add("ReTypeName\tLb1;\tLcom/aide/codemodel/api/abstraction/Debugger;");
		ruleString.add("ReTypeName\tLa1;\tLcom/aide/codemodel/api/abstraction/Compiler;");
		ruleString.add("ReTypeName\tLy0;\tLcom/aide/codemodel/api/abstraction/FormatOption;");

		ruleString.add("ReTypeName\tLx1;\tLcom/aide/codemodel/api/Model;");
		ruleString.add("ReTypeName\tLr1;\tLcom/aide/codemodel/api/FileSpace;");
		ruleString.add("ReTypeName\tLq1;\tLcom/aide/codemodel/api/FileEntry;");
		ruleString.add("ReTypeName\tLt1;\tLcom/aide/codemodel/api/IdentifierSpace;");
		ruleString.add("ReTypeName\tLe2;\tLcom/aide/codemodel/api/SyntaxTree;");
		ruleString.add("ReTypeName\tLh2;\tLcom/aide/codemodel/api/SyntaxTreeSpace;");
		ruleString.add("ReTypeName\tLn4;\tLcom/aide/codemodel/api/Parser;");
		ruleString.add("ReTypeName\tLn4$a;\tLcom/aide/codemodel/api/Parser$ParserException;");

		ruleString.add("ReTypeName\tLo4;\tLcom/aide/codemodel/api/Lexer;");
		ruleString.add("ReTypeName\tLq4;\tLcom/aide/codemodel/api/PositionalReader;");
		ruleString.add("ReTypeName\tLp4;\tLcom/aide/codemodel/api/LexerHelper;");
		ruleString.add("ReTypeName\tLv2;\tLcom/aide/codemodel/api/callback/StructureCallback;");
		ruleString.add("ReTypeName\tLp2;\tLcom/aide/codemodel/api/callback/HighlighterCallback;");
		ruleString.add("ReTypeName\tLw2;\tLcom/aide/codemodel/api/callback/SymbolSearcherCallback;");
		ruleString.add("ReTypeName\tLm2;\tLcom/aide/codemodel/api/callback/CodeCompleterCallback;");
		ruleString.add("ReTypeName\tLt2;\tLcom/aide/codemodel/api/callback/RefactoringCallback;");
		ruleString.add("ReTypeName\tLa3;\tLcom/aide/codemodel/api/callback/UsageSearcherCallback;");
		ruleString.add("ReTypeName\tLn2;\tLcom/aide/codemodel/api/callback/CodeMetricsCallback;");
		ruleString.add("ReTypeName\tLl2;\tLcom/aide/codemodel/api/callback/APISearcherCallback;");
		ruleString.add("ReTypeName\tLo2;\tLcom/aide/codemodel/api/callback/DebugMetadataCallback;");
		ruleString.add("ReTypeName\tLu2;\tLcom/aide/codemodel/api/callback/StopCallback;");
		ruleString.add("ReTypeName\tLs2;\tLcom/aide/codemodel/api/callback/OpenFileCallback;");
		ruleString.add("ReTypeName\tLz2;\tLcom/aide/codemodel/api/callback/TemplateEvaluatorCallback;");
		ruleString.add("ReTypeName\tLv0;\tLcom/aide/codemodel/AIDEModel;");
		ruleString.add("ReTypeName\tLcf;\tLcom/aide/ui/services/MavenService;");
		ruleString.add("ReTypeName\tLue;\tLcom/aide/ui/services/ErrorService;");
		ruleString.add("ReTypeName\tLue$f;\tLcom/aide/ui/services/ErrorService$ErrorListener;");
		ruleString.add("ReTypeName\tLkf;\tLcom/aide/ui/services/SearchService;");
		ruleString.add("ReTypeName\tLef;\tLcom/aide/ui/services/OpenFileService;");
		ruleString.add("ReTypeName\tLef$c;\tLcom/aide/ui/services/OpenFileService$OpenFileModel;");
		ruleString.add("ReTypeName\tLef$d;\tLcom/aide/ui/services/OpenFileService$OpenFileSupport;");
		ruleString.add("ReTypeName\tLcom/aide/ui/build/a;\tLcom/aide/ui/build/BuildService;");
		ruleString.add("ReTypeName\tLcom/aide/ui/build/b;\tLcom/aide/ui/build/IBuildService;");
		ruleString.add("ReTypeName\tLcom/aide/ui/build/android/i;\tLcom/aide/ui/build/android/JKSKeyStore;");
		ruleString.add("ReTypeName\tLcom/aide/ui/build/android/j;\tLcom/aide/ui/build/android/JKSProvider;");
		ruleString.add("ReTypeName\tLcom/aide/ui/build/android/h;\tLcom/aide/ui/build/android/JKS;");
		ruleString.add("ReTypeName\tLcom/aide/ui/build/android/k;\tLcom/aide/ui/build/android/SigningService;");
		ruleString.add("ReTypeName\tLcom/aide/ui/build/android/k$e;\tLcom/aide/ui/build/android/SigningService$SigningRunnable;");
		ruleString.add("ReTypeName\tLcom/aide/ui/build/a$b;\tLcom/aide/ui/build/BuildService$BuildListener;");
		ruleString.add("ReTypeName\tLcom/aide/ui/build/packagingservice/a;\tLcom/aide/ui/build/packagingservice/IExternalPackagingService;");
		ruleString.add("ReTypeName\tLcom/aide/ui/build/packagingservice/b;\tLcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;");
		ruleString.add("ReTypeName\tLcom/aide/ui/build/packagingservice/ExternalPackagingService$c;\tLcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;");
		ruleString.add("ReTypeName\tLcom/aide/ui/build/packagingservice/ExternalPackagingService$c$d;\tLcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$Task;");
		ruleString.add("ReTypeName\tLze;\tLcom/aide/ui/services/KeyBindingService;");
		ruleString.add("ReTypeName\tLgf;\tLcom/aide/ui/services/TemplateService;");
		ruleString.add("ReTypeName\tLgf$c;\tLcom/aide/ui/services/TemplateService$TemplateGroup;");
		ruleString.add("ReTypeName\tLgf$d;\tLcom/aide/ui/services/TemplateService$Template;");
		ruleString.add("ReTypeName\tLcom/aide/ui/scm/b;\tLcom/aide/ui/scm/GitService;");
		ruleString.add("ReTypeName\tLve;\tLcom/aide/ui/services/RunService;");
		ruleString.add("ReTypeName\tLse;\tLcom/aide/ui/services/EngineNotifyService;");
		ruleString.add("ReTypeName\tLbf;\tLcom/aide/ui/services/LogcatService;");
		ruleString.add("ReTypeName\tLbf$c;\tLcom/aide/ui/services/LogcatService$LogcatListener;");
		ruleString.add("ReTypeName\tLrd;\tLcom/aide/ui/services/DropboxService;");
		ruleString.add("ReTypeName\tLCif;\tLcom/aide/ui/services/SamplesService;");
		ruleString.add("ReTypeName\tLnf;\tLcom/aide/ui/services/UpdateNotifyService;");
		ruleString.add("ReTypeName\tLre;\tLcom/aide/ui/services/NativeCodeSupportService;");
		ruleString.add("ReTypeName\tLte;\tLcom/aide/ui/services/EngineService;");
		ruleString.add("ReTypeName\tLwe;\tLcom/aide/ui/services/FileBrowserService;");
		ruleString.add("ReTypeName\tLye;\tLcom/aide/ui/services/NavigateService;");
		ruleString.add("ReTypeName\tLhf;\tLcom/aide/ui/services/ProjectService;");
		ruleString.add("ReTypeName\tLyd;\tLcom/aide/ui/services/ProjectSupport;");
		ruleString.add("ReTypeName\tLjf;\tLcom/aide/ui/services/RefactoringService;");
		ruleString.add("ReTypeName\tLqe;\tLcom/aide/ui/services/AssetInstallationService;");

		ruleString.add("ReTypeName\tLzf;\tLcom/aide/ui/util/FileSpan;");
		ruleString.add("ReTypeName\tLq8;\tLcom/aide/ui/util/BuildGradle;");
		ruleString.add("ReTypeName\tLq8$j;\tLcom/aide/ui/util/BuildGradle$SigningConfig;");
		ruleString.add("ReTypeName\tLq8$g;\tLcom/aide/ui/util/BuildGradle$MavenDependency;");
		ruleString.add("ReTypeName\tLq8$h;\tLcom/aide/ui/util/BuildGradle$Dependency;");
		ruleString.add("ReTypeName\tLwd;\tLcom/aide/ui/util/Configuration;");
		ruleString.add("ReTypeName\tLvd;\tLcom/aide/ui/util/ClassPath;");
		ruleString.add("ReTypeName\tLde;\tLcom/aide/ui/util/AndroidProprieties;");
		ruleString.add("ReTypeName\tLw8;\tLcom/aide/ui/util/BuildGradleExt;");
		ruleString.add("ReTypeName\tLv8;\tLcom/aide/ui/util/PomXml;");
		ruleString.add("ReTypeName\tLu8;\tLcom/aide/ui/util/MavenMetadataXml;");
		ruleString.add("ReTypeName\tLce;\tLcom/aide/ui/project/AndroidProjectSupport;");
		ruleString.add("ReTypeName\tLge;\tLcom/aide/ui/project/JavaProjectSupport;");
		ruleString.add("ReTypeName\tLie;\tLcom/aide/ui/project/JavaScriptProjectSupport;");
		ruleString.add("ReTypeName\tLke;\tLcom/aide/ui/project/NativeExecutableProjectSupport;");
		ruleString.add("ReTypeName\tLme;\tLcom/aide/ui/project/PhonegapProjectSupport;");
		ruleString.add("ReTypeName\tLpe;\tLcom/aide/ui/project/WebsiteProjectSupport;");
	}
}
