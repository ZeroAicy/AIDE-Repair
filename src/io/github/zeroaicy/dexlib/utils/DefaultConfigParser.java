package io.github.zeroaicy.dexlib.utils;
import io.github.zeroaicy.tools.files.*;
import java.io.*;
import java.util.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
import org.xml.sax.*;

public class DefaultConfigParser{
	
	public static void main3(String[] args) throws SAXException, IOException, ParserConfigurationException{
		String str = "/storage/emulated/0/.MyAicy/.aide/maven/androidx/activity/activity/1.0.0/activity-1.0.0.pom";
		str ="/storage/emulated/0/.MyAicy/.aide/maven/org/jetbrains/kotlinx/kotlinx-coroutines-core/1.5.0/kotlinx-coroutines-core-1.5.0.pom";
		
		FileInputStream fileInputStream = new FileInputStream(str);
		Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(fileInputStream);
		fileInputStream.close();
		Element root = document.getDocumentElement();
        //获取根节点下面的所有子节点（不包过子节点的子节点）
        NodeList list = root.getChildNodes() ;
        //遍历List的方法
		for ( int i = 0, size = list.getLength(); i < size; i++ ){
			Node item = list.item(i);
			String nodeName = item.getNodeName();
			if ( "packaging".equals( nodeName )){
				System.out.println(nodeName) ;
				String packaging = item.getTextContent();
				System.out.println(packaging) ;
				
				break;
			}
		}
		
	}
	public static void main2(String[] args){
		OpenFile open = OpenFile.open("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/临时站/default.config");
		List<String> list = open.list();
		List<String> list2 = new ArrayList<>();

		for ( int index = 0, size = list.size(); index < size; index++ ){
			String line = list.get(index);
			if ( line.contains("\"from\": \"android/support/v4") 
				||  line.contains("\"from\": \"android/arch/lifecycle") 
				||  line.contains("\"from\": \"android/support/customtabs") 
				||  line.contains("\"from\": \"android/support/annotation") ){
				++index;
				if ( index >= size ){
					continue;
				}
				String toLine = list.get(index);

				String from = line.substring("            \"from\": \"".length(), line.length() - 1).replace("(.*)\"", "**");
				String to = toLine.substring("            \"to\": \"".length(), toLine.length() - 1).replace("{0}", "");
				if ( "ignore".equals(to) ){
					if ( from.endsWith("**") ){
						to = from.substring(0, from.length() - 2);
					}
					else{
						to = from;
					}
				}
				list2.add("package L" + from + " -> L" + to);
				System.out.println(to);
			}
		}

		OpenFile.open("/storage/emulated/0/AppProjects1/.ZeroAicy/AIDE工具/AIDE底包混淆修复/data/临时站/default.config.mapping.txt").write(list2);
		System.out.println("完成");
	}
}
