package com.naukari.helper;

import java.time.LocalDate;

import org.springframework.stereotype.Component;
@Component
public class CustomHelper {

	public String getLowerCase(String st) {
		String newst=st.trim().toLowerCase();
		return newst;
	}
	public String getUpperCase(String st) {
		String newst=st.trim().toUpperCase();
		return newst;
	}
	public String getCatConvertToUrl(String cat) {
		String ur=cat.trim().replaceAll("  ", " ");
		String url=ur.trim().replaceAll(" ", "-");
		return url;
	}
	
	public String getUrlConvertToCat(String cat) {
		String url=cat.trim().replaceAll("-", " ");
		return url;
	}
	
	public String getNewDate() {
		LocalDate date=java.time.LocalDate.now();
		return date.toString();
	}
	
	public String getLastFewDays(long day) {
		LocalDate date=java.time.LocalDate.now();
		date=date.minusDays(day);
		return date.toString();
	}
}
