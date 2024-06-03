package com.naukari.helper;

public class Title {

	private String title;
	private String Description;
	private String keyword;
	private String breadtitle;
	private String breadurl;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getBreadtitle() {
		return breadtitle;
	}
	public void setBreadtitle(String breadtitle) {
		this.breadtitle = breadtitle;
	}
	public String getBreadurl() {
		return breadurl;
	}
	public void setBreadurl(String breadurl) {
		this.breadurl = breadurl;
	}
	public Title() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Title(String title) {
		super();
		this.title = title;
	}
	public Title(String title, String breadtitle, String breadurl) {
		super();
		this.title = title;
		this.breadtitle = breadtitle;
		this.breadurl = breadurl;
	}
	public Title(String title, String description, String keyword, String breadtitle, String breadurl) {
		super();
		this.title = title;
		Description = description;
		this.keyword = keyword;
		this.breadtitle = breadtitle;
		this.breadurl = breadurl;
	}
	
}
