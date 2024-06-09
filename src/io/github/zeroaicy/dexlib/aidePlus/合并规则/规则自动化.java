package io.github.zeroaicy.dexlib.aidePlus.合并规则;

import io.github.zeroaicy.tools.files.OpenFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class 规则自动化{

	public static void main(String[] args){
		String a = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2.2/测试a.txt";
		String b = "/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/aide_plus/aide_plus_2.2/测试b.txt";

		List<String> lines_a = OpenFile.open(a).list();


		List<String> lines_b = OpenFile.open(b).list();

		List<FieldMap> aFieldMaps = new ArrayList<>();
		List<FieldMap> bFieldMaps = new ArrayList<>();

		for (String line : lines_a){
			规则自动化.FieldMap parserFieldMap = parserFieldMap(line);
			if (parserFieldMap == null) continue;
			aFieldMaps.add(parserFieldMap);

			System.out.println(" a " + parserFieldMap);
		}
		System.out.println();
		for (String line : lines_b){
			规则自动化.FieldMap parserFieldMap = parserFieldMap(line);
			if (parserFieldMap == null) continue;
			bFieldMaps.add(parserFieldMap);

			System.out.println(" b " + parserFieldMap);
		}

		System.out.println();

		Map<String, String> IsNewMap = new HashMap<>();

		for (int index = 0, size = aFieldMaps.size(), size2 = bFieldMaps.size(); index < size; index++){
			规则自动化.FieldMap aFieldMap = aFieldMaps.get(index);

			if (index >= size2){
				System.out.println(aFieldMap.fieldName + " -> " + aFieldMap.fieldName + "_未知");
				break;
			}

			规则自动化.FieldMap bFieldMap = bFieldMaps.get(index);
			while (aFieldMap.isNew != bFieldMap.isNew){
				System.out.println("\t" + aFieldMap.fieldName + " -> " + aFieldMap.fieldName + "_未知");
				index++;
				if (index >= size){
					break;
				}
				aFieldMap = aFieldMaps.get(index);				
			}

			/*while (!aFieldMap.methodCall.equals( bFieldMap.methodCall)){
			 System.out.println("\t" + aFieldMap.fieldName + " -> " + aFieldMap.fieldName + "_未知");
			 index++;
			 if( index >= size){
			 return;
			 }
			 aFieldMap = aFieldMaps.get(index);

			 }*/

			while ((aFieldMap.isNew == bFieldMap.isNew == false) && !aFieldMap.methodCall.equals(bFieldMap.methodCall)){

				System.out.println("\t" + aFieldMap.fieldName + " -> " + aFieldMap.fieldName + "_未知");
				index++;
				if (index >= size){
					break;
				}
				aFieldMap = aFieldMaps.get(index);
			}

			if (aFieldMap.isNew){
				IsNewMap.put(aFieldMap.methodCall, bFieldMap.methodCall);
			}

			String value = bFieldMap.fieldName;
			if (value.startsWith("my")){
				value = value.substring(2);
				String first = value.substring(0, 1).toLowerCase();
				value = first + value.substring(1);
			}

			System.out.println("\t" + aFieldMap.fieldName + " -> " + value);
		}

		System.out.println("\n\n");

		System.out.println(IsNewMap.size());

		for (Map.Entry<String, String> entry : IsNewMap.entrySet()){
			String value = entry.getValue();

			System.out.println("Labcd/" + entry.getKey() + "; -> L/*/" + value + ";");

		}

		System.out.println("OK");
	}

	private static FieldMap parserFieldMap(String line){

		int indexOf = line.indexOf('=');
		if (indexOf < 0){
			return null;

		}
		int fieldStart = line.lastIndexOf('.', indexOf);
		if (fieldStart < 0){
			return null;
		}
		int fieldEnd = fieldStart;
		while (line.charAt(fieldEnd) != ' '){
			fieldEnd++;
		}
		String fieldName = line.substring(fieldStart + 1, fieldEnd);

		int methodCallStart = indexOf + 1;
		while (line.charAt(methodCallStart) == ' '){
			methodCallStart++;
		}

		String methodCall = line.substring(methodCallStart);

		boolean isNew;
		if (methodCall.startsWith("new ")){
			methodCallStart = "new ".length();

			int methodCallEnd = methodCall.indexOf('<');
			if (methodCallEnd <= 0){
				methodCallEnd = methodCall.indexOf('(');
			}

			methodCall = methodCall.substring(methodCallStart, methodCallEnd);
			isNew = true;
		}
		else{

			methodCallStart = methodCall.lastIndexOf(".read");
			if (methodCallStart <= 0){
				return null;
			}
			int methodCallEnd = methodCall.lastIndexOf('(');
			if (methodCallEnd <= 0){
				return null;
			}
			
			methodCall = methodCall.substring(methodCallStart + 1, methodCallEnd);
			isNew = false;
		}

		return new FieldMap(fieldName, methodCall, isNew);
	}

	public static class FieldMap{
		public String fieldName;
		public String methodCall;
		public boolean isNew;

		public FieldMap(String fieldName, String methodCall, boolean isNew){
			this.fieldName = fieldName;
			this.methodCall = methodCall;
			this.isNew = isNew;
		}

		@Override
		public String toString(){
			return fieldName + " " + methodCall + " " + isNew;
		}

	} 
}
