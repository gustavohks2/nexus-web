package br.com.ltp.nexus.utils;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class DateUtils {
	
	/**
	 * Obtém {@link LocalDate} a partir de uma string no formato DD/MM/AAAA
	 * return {@link LocalDate}
	 */
	public static LocalDate getLocalDateFromString(String stringData) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		return LocalDate.parse(stringData, dtf);
	}
	
}
