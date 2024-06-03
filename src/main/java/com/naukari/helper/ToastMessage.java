package com.naukari.helper;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ToastMessage {

	private String message;
	private String type;
	private String color;
	private Boolean isactive;
	@JsonFormat(pattern = "dd-MM-yy HH:mm a")
	private String time=newDate(new Date());
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public ToastMessage() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Boolean getIsactive() {
		return isactive;
	}
	public void setIsactive(Boolean isactive) {
		this.isactive = isactive;
	}
	public String newDate(Date date) {
		/* show to time like this 24 Sep 2023 01:44:50 PM*/
		String formate="dd MMM yyyy hh:mm:ss a";
		String timezone=null;
		SimpleDateFormat sdf= new SimpleDateFormat(formate);
		// default system timezone if passed null or empty
		if (timezone == null || "".equalsIgnoreCase(timezone.trim())) {
			timezone=Calendar.getInstance().getTimeZone().getID();
		}
		sdf.setTimeZone(TimeZone.getTimeZone(timezone));
		return sdf.format(date);
		
	}
	public ToastMessage(String message, String type, String color,Boolean isactive, String time) {
		super();
		this.message = message;
		this.type = type;
		this.color = color;
		this.isactive=isactive;
		this.time = time;
	}
	public ToastMessage(String message, String type, String color,Boolean isactive) {
		super();
		this.message = message;
		this.type = type;
		this.color = color;
		this.isactive=isactive;
	}
	
	
}
