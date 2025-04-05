package io.github.zeroaicy.dexlib.analysis;

import io.github.zeroaicy.tools.files.OpenFile;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

//还原Mapping数据
public class RevertMappingData {

	private String mappingFilePath;

	//相反的
	private final boolean contrary;

	//通过confusevt查找RewriterClassData
	private final Map<String, RewriterClassData> confusevtClassDataMap = new HashMap<>();

	//空实现，不返回任何数据
	public RevertMappingData() {
		this(null, false);
	}

	public RevertMappingData(String mappingFilePath) {
		this(mappingFilePath, false);
	}

	public RevertMappingData(String mappingFilePath, boolean contrary) {
		this.mappingFilePath = mappingFilePath;
		this.contrary = contrary;
		//解析
		this.parser();
	}

	/**
	 * 未实现
	 */
	public void shrink() {
		Set<String> removeKeys = new HashSet<>();
		Map<String, RewriterClassData> rewriterClassDataMap = getRewriterClassDataMap();

		for (Map.Entry<String, RewriterClassData> entry : rewriterClassDataMap.entrySet()) {
			RewriterClassData rewriterClassData  = entry.getValue();
			rewriterClassData.shrink();
			if (rewriterClassData.notChange()) {
				removeKeys.add(entry.getKey());
			}
		}

		//移除
		for (String key : removeKeys) {
			rewriterClassDataMap.remove(key);
		}
	}

	/**
	 * 合并RevertMappingData
	 * 需要注意需要按照版本顺序依次调用此函数
	 * 并且被传入RevertMappingData会被修改
	 */
	public void merge(List<RevertMappingData> revertMappingDataMerges) {
		for (RevertMappingData revertMappingData : revertMappingDataMerges) {
			merge(revertMappingData);
		}
	}

	/**
	 * 合并此规则[RevertMappingData] 到当前规则[RevertMappingData]
	 */
	public void merge(RevertMappingData revertMappingDataMerged) {
		//主RewriterClassDataMap，所有改变都集中在此
		Map<String, RewriterClassData> mainRewriterClassDataMap = this.getRewriterClassDataMap();

		// 被集合
		final Map<String, RewriterClassData> rewriterClassDataMapMerged = revertMappingDataMerged.getRewriterClassDataMap();

		{
			//需要把nextVerRevMapData中方法签名，还原成当前版本的类[参数签名类]

			//遍历当前revertMappingData的类

			// 遍历此重命名规则的类重命名规则
			// 主要用于替换Merged规则方法签名中的类签名
			for (RewriterClassData nextRewriterClassData : rewriterClassDataMapMerged.values()) {
				// 没有方法则跳过
				if (!nextRewriterClassData.hasMethodData()) {
					//没有方法
					continue;
				}

				//遍历类中的方法
				//合并方法
				Map<String, RewriterClassData.MethodData> nextVerMethodDataMap = nextRewriterClassData.getMethodDataMap();

				// 重命名类规则中的方法重命名规则
				List<RewriterClassData.MethodData> methodDatas = new ArrayList<RewriterClassData.MethodData>(nextVerMethodDataMap.values());
				// 置空重命名类规则中的方法重命名规则
				nextVerMethodDataMap.clear();

				// 处理此方法重命名规则
				for (RewriterClassData.MethodData methodData : methodDatas) {

					//替换方法签名
					String paramSignature = methodData.getParametersSignature();
					// 修改前移除
					nextRewriterClassData.removeMethodData(methodData);

					for (RewriterClassData curClassData : mainRewriterClassDataMap.values()) {
						//替换参数签名中的类名为当前版本类名
						paramSignature = paramSignature.replace(curClassData.getRenamed(), curClassData.getConfusevt());
					}
					//重新添加
					nextRewriterClassData.addMethodData(methodData.confusevt, paramSignature, methodData.renamed);
				}
			}

			// 需要替换参数没有遍历在主RevertMappingData中的类
			for (RewriterClassData nextRewriterClassData : mainRewriterClassDataMap.values()) {
				if (!nextRewriterClassData.hasMethodData()) {
					//没有方法
					continue;
				}

				//遍历类中的方法
				//合并方法
				Map<String, RewriterClassData.MethodData> nextVerMethodDataMap = nextRewriterClassData.getMethodDataMap();
				List<RewriterClassData.MethodData> methodDatas = new ArrayList<RewriterClassData.MethodData>(nextVerMethodDataMap.values());
				//置空
				nextVerMethodDataMap.clear();

				for (RewriterClassData.MethodData methodData : methodDatas) {
					//替换方法签名
					String paramSignature = methodData.getParametersSignature();
					// 修改前移除
					nextRewriterClassData.removeMethodData(methodData);

					for (RewriterClassData curClassData : mainRewriterClassDataMap.values()) {
						//替换参数签名中的类名为当前版本类名
						paramSignature = paramSignature.replace(curClassData.getRenamed(), curClassData.getConfusevt());
					}
					//重新添加
					// RewriterClassData.MethodData oldMethodData = 
					nextRewriterClassData.addMethodData(methodData.confusevt, paramSignature, methodData.renamed);

				}
			}
		}

		// 合并类重命名规则
		for (RewriterClassData mainRewriterClassData : mainRewriterClassDataMap.values()) {
			//从待合并中查询此类规则是否重新修改
			RewriterClassData rewriterClassDataMerged = revertMappingDataMerged.getRewriterClassData(mainRewriterClassData.getRenamed());
			if (rewriterClassDataMerged == null) {
				continue;
			}
			//合并后此类名的重命名
			String rewriterClassDataMergedRenamed = rewriterClassDataMerged.getRenamed();
			//合并并更新
			// confusevt -> 中间(renamed) -> 最终(renamed)
			mainRewriterClassData.setRenamed(rewriterClassDataMergedRenamed);

			//移除已处理的
			// 😭 key是字符串啊
			rewriterClassDataMapMerged.remove(rewriterClassDataMerged.getConfusevt());

			//添加并合并rewriterClassData字段
			if (mainRewriterClassData.hasFieldData()) {
				Map<String, RewriterClassData.FieldData> nextVerFieldDatas = rewriterClassDataMerged.getFieldDatas();

				//遍历curClassData中字段，查询是否有重新修改的
				for (RewriterClassData.FieldData curFieldData : mainRewriterClassData.getFieldDatas().values()) {
					String nextVerFieldConfusevt = curFieldData.renamed;
					RewriterClassData.FieldData nextVerFieldData = rewriterClassDataMerged.getFieldData(nextVerFieldConfusevt);
					if (nextVerFieldData != null) {
						//已被重新修改，更新
						curFieldData.renamed = nextVerFieldData.renamed;
						//移除此FieldData
						nextVerFieldDatas.remove(nextVerFieldData.confusevt);
					}
				}
			}
			if (rewriterClassDataMerged.hasFieldData()) {
				//剩下的都是curClassData没有修改的
				Map<String, RewriterClassData.FieldData> nextVerFieldDatas = rewriterClassDataMerged.getFieldDatas();

				for (RewriterClassData.FieldData nextVerFieldData :  nextVerFieldDatas.values()) {
					mainRewriterClassData.addField(nextVerFieldData.confusevt, nextVerFieldData.renamed);
				}					
			}

			// 合并方法的重命名规则
			if (mainRewriterClassData.hasMethodData()) {
				//合并方法
				Map<String, RewriterClassData.MethodData> methodDataMap = mainRewriterClassData.getMethodDataMap();

				for (RewriterClassData.MethodData mainMethodData : methodDataMap.values()) {
					//查找此版本与下一版本的共同名称
					RewriterClassData.MethodData mergeMethodData = rewriterClassDataMerged.getMethodData(mainMethodData.getRenamedMethodSignature());


					if (mergeMethodData == null) {
						//此字段没有再次被重命名
						continue;
					}
					//更新方法重命名
					mainMethodData.renamed = mergeMethodData.renamed;
					// 已添加 移除
					rewriterClassDataMerged.removeMethodData(mergeMethodData);
				}
			}
			//以前版本从未修改
			if (rewriterClassDataMerged.hasMethodData()) {
				//不冲突的部分可以直接添加
				for (RewriterClassData.MethodData methodData : rewriterClassDataMerged.getMethodDataMap().values()) {
					if (mainRewriterClassData.getMethodData(methodData.getMethodSignature()) == null) {
						mainRewriterClassData.addMethodData(methodData);
					}
				}
			}
		}

		//这是没有修改的
		for (RewriterClassData rewriterClassData : revertMappingDataMerged.getRewriterClassDataMap().values()) {
			//冲突的已经处理了
			this.addRewriterClassData(rewriterClassData);
		}

	}

	/**
	 * @return 是否反转
	 */
	public boolean isContrary() {
		return contrary;
	}

	/**
	 * @return 返回类名重命名数据集合
	 */
	public Map<String, RewriterClassData> getRewriterClassDataMap() {
		return confusevtClassDataMap;
	}

	/**
	 * 通过类签名添加RewriterClassData，并返回，若已存在则返回已存在的
	 */
	public RewriterClassData addRewriterClassData(String confusevt) {
		return addRewriterClassData(confusevt, confusevt);
	}

	public RewriterClassData addRewriterClassData(String confusevt, String renamed) {
		RewriterClassData rewriterClassData = this.confusevtClassDataMap.get(confusevt);
		if (rewriterClassData != null) {
			return rewriterClassData;
		}
		rewriterClassData = new RewriterClassData(confusevt, renamed);
		this.confusevtClassDataMap.put(confusevt, rewriterClassData);
		return rewriterClassData;
	}
	/**
	 * 添加RewriterClassData
	 */
	public void addRewriterClassData(RewriterClassData rewriterClassData) {
		if (this.confusevtClassDataMap.containsKey(rewriterClassData.getConfusevt())) {
			return;
		}
		this.confusevtClassDataMap.put(rewriterClassData.getConfusevt(), rewriterClassData);
	}

	/**
	 * 通过类签名查找RewriterClassData。
	 */

	public RewriterClassData getRewriterClassData(String confusevt) {
		return confusevtClassDataMap.get(confusevt);
	}


	//规则未设计，通过代码添加
	private final Map<String, RewriterPackageNameData> rewriterPackageDataMap = new LinkedHashMap<>();
	//返回包名重写数据
	public Map<String, RewriterPackageNameData> getRewriterPackageDataMap() {
		return rewriterPackageDataMap;
	}

	/**
	 * 添加RewriterPackageNameData，并返回，若已存在则返回已存在的
	 */
	public RewriterPackageNameData addRewriterPackageNameData(String confusevt, String renamed) {
		return addRewriterPackageNameData(confusevt, renamed, false);
	}
	public RewriterPackageNameData addRewriterPackageNameData(String packageNameConfusevt, String packageNameRenamed, boolean isReAll) {
		//必须以L开头
		if (!packageNameConfusevt.startsWith("L")) {
			packageNameConfusevt = "L" + packageNameConfusevt;
		}
		//必须以/结尾，但无包名[L]除外
		if (packageNameConfusevt.length() > 1 
			&& !isReAll
			&& !packageNameConfusevt.endsWith("/")) {
			packageNameConfusevt = packageNameConfusevt + "/";
		}

		if (!packageNameRenamed.startsWith("L")) {
			packageNameRenamed = "L" + packageNameRenamed;
		}

		/*if(!packageNameOriginal.endsWith("/")){
		 packageNameOriginal= packageNameOriginal + "/";
		 }*/

		/*
		 System.out.println("包名重命名");
		 System.out.println(packageNameConfusevt);
		 System.out.println(packageNameRenamed);
		 System.out.println(isReAll);
		 */
		// System.out.println();

		RewriterPackageNameData rewriterPackageNameData = this.rewriterPackageDataMap.get(packageNameConfusevt);
		if (rewriterPackageNameData != null) {
			return rewriterPackageNameData;
		}
		rewriterPackageNameData = new RewriterPackageNameData(packageNameConfusevt, packageNameRenamed, isReAll);

		this.rewriterPackageDataMap.put(rewriterPackageNameData.packageNameConfusevt, rewriterPackageNameData);

		return rewriterPackageNameData;
	}


	//解析出RewriterClassData
	public RewriterClassData parserRewriterClassData(String line) {
		int lineLength;
		if (line == null 
			|| (lineLength = line.length()) < 4) {
			return null;
		}

		//分割符在line中的位置
		// separatorPosition表示'->'中'-'的位置 
		int separatorPosition = line.indexOf("->");
		if (separatorPosition <= 0) {
			return null;
		}
		//confusevt在line的endIndex
		int confusevtEnd = separatorPosition;
		//去除separatorPosition前的空格
		while (confusevtEnd < lineLength
			   && isBlankSpace(line.charAt(confusevtEnd - 1))) {
			confusevtEnd--;
		}
		// 截取confusevt
		String confusevt = line.substring(0, confusevtEnd);

		//兼容模式，兼容Java类签名与非Java类签名
		final int confusevtLength = confusevt.length();
		if (confusevtLength < 2
			|| confusevt.charAt(0) != 'L'
			|| confusevt.charAt(confusevtLength - 1) != ';') {
			//兼容处理非Java类签名
			confusevt = "L" + confusevt.replace('.', '/') + ";";				 
		}
		int renamedStart = separatorPosition + "->".length();
		//使得original没有空格
		while (renamedStart < lineLength &&
			   isBlankSpace(line.charAt(renamedStart))) {
			renamedStart++;
		}

		int renamedEnd = line.length();
		//使得original结尾没有空格
		while (renamedEnd > 0
			   && isBlankSpace(line.charAt(renamedEnd - 1))) {
			renamedEnd--;
		}

		// 截取original
		String renamed = line.substring(renamedStart, renamedEnd);

		//兼容模式，兼容Java类签名与非Java类签名
		final int renamedLength = renamed.length();
		if (renamedLength < 2
			|| renamed.charAt(0) != 'L'
			|| renamed.charAt(renamedLength - 1) != ';') {
			//兼容处理非Java类签名
			renamed = "L" + renamed.replace('.', '/') + ";";
		}
		//使用 contrary反转转换
		return contrary ? addRewriterClassData(renamed, confusevt) : addRewriterClassData(confusevt, renamed);
	}


	/**
	 * 解析重命名规则
	 */
	private void parser() {
		if (this.mappingFilePath == null) {
			//空实现
			return;
		}
		List<String> lines = OpenFile.open(this.mappingFilePath).list();

		RewriterClassData rewriterClassData = null;

		for (int index = 0, size = lines.size(); index < size; index++) {
			try {
				String line = lines.get(index);
				int lineLength = line.length();

				//a->b字符串至少长度为4
				if (lineLength <= 3) {
					continue;
				}
				if (line.startsWith("package ")) {
					//包名替换规则

					int separatorPosition = line.indexOf("->");
					if (separatorPosition <= 0) {
						continue;
					}
					int renamedStart = separatorPosition + "->".length();
					//使得original没有空格
					while (renamedStart < lineLength
						   && isBlankSpace(line.charAt(renamedStart))) {
						renamedStart++;
					}
					//重命名后的包名
					int renamedEnd = line.length();
					while (renamedEnd < lineLength
						   && isBlankSpace(line.charAt(renamedEnd - 1))) {
						renamedEnd--;
					}
					String original = line.substring(renamedStart, renamedEnd);


					//重命名前的包名
					int confusevtEnd = separatorPosition;
					//去除separatorPosition前的空格
					while (confusevtEnd < lineLength
						   && isBlankSpace(line.charAt(confusevtEnd - 1))) {
						confusevtEnd--;
					}
					boolean isReAll = false;
					if (line.charAt(confusevtEnd - 1) == '*') {
						confusevtEnd--;
						if (line.charAt(confusevtEnd - 1) == '*') {
							confusevtEnd --;
							isReAll = true;
						}
					}

					int confusevtStart = confusevtEnd;
					//向前查询，找到confusevtStart
					while (!isBlankSpace(line.charAt(confusevtStart - 1)) 
						   && confusevtStart > 0) {
						confusevtStart--;
					}
					String confusevt = line.substring(confusevtStart, confusevtEnd);

					addRewriterPackageNameData(confusevt, original, isReAll);

					continue;
				}
				//类
				if (!isBlankSpace(line.charAt(0))) {
					rewriterClassData = parserRewriterClassData(line);
					continue;
				}

				//解析字段或方法

				// ->前后可能有空格
				int separatorPosition = line.indexOf("->");
				if (separatorPosition <= 0) {
					continue;
				}
				int renamedStart = separatorPosition + "->".length();
				int renamedEnd = lineLength;

				//使得original没有空格
				while (renamedStart < lineLength
					   && isBlankSpace(line.charAt(renamedStart))) {
					renamedStart++;
				}
				while (renamedEnd > 0
					   && isBlankSpace(line.charAt(renamedEnd - 1))) {
					renamedEnd--;
				}

				//原来的方法名或者字段名
				String renamed = line.substring(renamedStart, renamedEnd);

				int confusevtEnd = separatorPosition;
				//去除separatorPosition前的空格
				while (confusevtEnd < lineLength
					   && isBlankSpace(line.charAt(confusevtEnd - 1))) {
					confusevtEnd--;
				}
				for (int end = confusevtEnd; end > 0; end--) {
					//如果是方法规则，则过滤返回类型
					if (line.charAt(end - 1) == ')') {
						confusevtEnd = end;
						break;
					}
				}

				int confusevtStart = confusevtEnd;
				//向前查询，找到confusevtStart
				while (!isBlankSpace(line.charAt(confusevtStart - 1)) 
					   && confusevtStart > 0) {
					confusevtStart--;
				}

				//此判断导致方法重命名规则不能有返回类型
				char confusevtEndChar = line.charAt(confusevtEnd - 1);
				boolean isMethod = confusevtEndChar == ')';
				if (isMethod) {
					//confusevtStart现在是(
					String confusevt = line.substring(confusevtStart, line.indexOf('(', confusevtStart));

					int parameterTypesStart = confusevtStart + confusevt.length() + 1 ;
					int parameterTypesEnd = confusevtEnd - 1;

					String parameterTypes = parameterTypesStart == parameterTypesEnd ? "" : line.substring(parameterTypesStart, parameterTypesEnd);

					//判断parameterTypes是Java样式的包名，还是类签名
					if (parameterTypes != null
						&& parameterTypes.length() > 0
					//源码样式
						&& parameterTypes.indexOf(',') < 0
						&& parameterTypes.indexOf('.') < 0
						&& parameterTypes.indexOf(']') < 0
						&& !hasPrimitiveType(parameterTypes)
					//类签名
						|| parameterTypes.indexOf(';') > 0) {
						//类签名 [a，Z，ZZ]等不表示源码样式
						parameterTypes = "(" + parameterTypes + ")";
					}


					if (rewriterClassData != null) {
						if (contrary) {
							rewriterClassData.addMethodData(renamed, parameterTypes, confusevt);
						}
						else {
							rewriterClassData.addMethodData(confusevt, parameterTypes, renamed);
						}
					}

				}
				else {
					//字段
					String confusevt = line.substring(confusevtStart, confusevtEnd);
					confusevt.toString();
					if (rewriterClassData != null) {
						if (contrary) {
							rewriterClassData.addField(renamed, confusevt);
						}
						else {
							rewriterClassData.addField(confusevt, renamed);
						}
					}

				}

			}
			catch (Throwable e) {
				throw new Error("at " + (index  + 1) + " line parser error", e);
			}
		}
		if (isContrary()) {
			// 逆反混淆，需要修正方法签名

			//需要把nextVerRevMapData中方法签名，还原成当前版本的类[参数签名类]

			//遍历当前revertMappingData的类
			Map<String, RewriterClassData> rewriterClassDataMap = getRewriterClassDataMap();

			Collection<RewriterClassData> rewriterClassDatas = rewriterClassDataMap.values();

			for (RewriterClassData nextVerClassData : rewriterClassDatas) {
				if (!nextVerClassData.hasMethodData()) {
					//没有方法
					continue;
				}

				//遍历类中的方法
				Map<String, RewriterClassData.MethodData> nextVerMethodDataMap = nextVerClassData.getMethodDataMap();

				List<RewriterClassData.MethodData> methodDatas = new ArrayList<RewriterClassData.MethodData>(nextVerMethodDataMap.values());

				//置空nextVerClassData没的方法规则
				nextVerMethodDataMap.clear();

				for (RewriterClassData.MethodData methodData : methodDatas) {
					//替换方法签名
					String paramSignature = methodData.getParametersSignature();
					// 修改前移除
					nextVerClassData.removeMethodData(methodData);
					for (RewriterClassData curClassData : rewriterClassDatas) {
						//替换参数签名中的类名为当前版本类名
						paramSignature = paramSignature.replace(curClassData.getRenamed(), curClassData.getConfusevt());
					}

					//重新添加
					nextVerClassData.addMethodData(methodData.confusevt, paramSignature, methodData.renamed);
				}

			}
		}
	}

	//是否是Java基本类型
	public static boolean hasPrimitiveType(String type) {
		String[] primitiveTypes = new String[]{"boolean","byte",
			"char","short","int","long","float","double"};
		for (String primitiveType : primitiveTypes) {
			if (type.contains(primitiveType)) {
				return true;
			}
		}
		return false;
	}

	// 是否是空格
	public static  boolean isBlankSpace(char charAt) {
		return charAt == ' ' || charAt == '\t';
	}


}
