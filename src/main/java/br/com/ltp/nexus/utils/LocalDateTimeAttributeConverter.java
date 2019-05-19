package br.com.ltp.nexus.utils;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(autoApply = true)
public class LocalDateTimeAttributeConverter implements AttributeConverter<LocalDateTime, Timestamp> {

	@Override
	public Timestamp convertToDatabaseColumn(LocalDateTime locDateTime) {
		return locDateTime == null ? null : Timestamp.valueOf(locDateTime);
	}

	@Override
	public LocalDateTime convertToEntityAttribute(Timestamp sqlDateTime) {
		return sqlDateTime == null ? null : sqlDateTime.toLocalDateTime();
	}
	
}
