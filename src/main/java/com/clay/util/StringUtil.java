package com.clay.util;

import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.dom4j.Node;

public class StringUtil {

	public static final int DEFAULT_VALUE_ZERO = 0;
	public static final String DEFAULT_VALUE_EMPTYSTRING = "";
	private static final String POSSIBLE_CHARS="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"; 

	public static boolean isEmpty(String paramStr) {
		if (paramStr == null || "".equals((paramStr + "").trim())) {
			return true;
		}
		return false;
	}

	public static String getNodeTextAsStringByPattern(Node node, String xPath, String defaultValue) {
		String returnValue = "";
		if (node != null) {
			Node tempNode = node.selectSingleNode(xPath);
			if (tempNode != null) {
				returnValue = tempNode.getText();
			} else {
				returnValue = defaultValue;
			}
		} else {
			returnValue = defaultValue;
		}
		return returnValue;
	}

	public static String getNodeTextAsStringByPattern(Node node, String xPath) {
		return getNodeTextAsStringByPattern(node, xPath, DEFAULT_VALUE_EMPTYSTRING);
	}

	public static String generateRandomString(int length) {  
        StringBuilder sb = new StringBuilder(length);  
        SecureRandom random = new SecureRandom();  
        for (int i = 0; i < length; i++) {  
            sb.append(POSSIBLE_CHARS.charAt(random.nextInt(POSSIBLE_CHARS.length())));  
        }  
        return sb.toString();  
    }  
	
	public static void main(String[] args) {
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		System.out.println(sdf.format(new Date()));
	}
}
