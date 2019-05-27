package br.com.ltp.nexus.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class NxStringUtils {
	
	public static boolean isNullOrEmpty(String string) {
		return string == null || string.equals("");
	}
	
	public static String stringToMD5(String stringToHash) throws NoSuchAlgorithmException {
		MessageDigest md = MessageDigest.getInstance("MD5");
		
		BigInteger biString = new BigInteger(md.digest(stringToHash.getBytes()));
		
		String hashString = biString.toString(16);
		
		// Enquanto a string que passou por hash md5 for menor que 32 caracteres, adiciona-se zero ao início
		while (hashString.length() < 32) hashString = "0" + hashString;
		
		return hashString;
	}
	
	public static Integer getIntegerFromString(String string) {
		boolean isNumeric = false;
		Integer numberFromString = 0;
		try {
			numberFromString = Integer.parseInt(string);
			isNumeric = true;
		} catch(Exception ex) {
			ex.printStackTrace();
		}
		return isNumeric ? numberFromString : null;
	}
}
