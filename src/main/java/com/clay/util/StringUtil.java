package com.clay.util;

public class StringUtil {
	public static boolean isEmpty(String paramStr) {
		if (paramStr == null || "".equals((paramStr + "").trim())) {
			return true;
		}
		return false;
	}
}
