package com.naukari.helper;

public class SidebarActive {
	private String active_heading;
	private String active_link;
	public String getActive_heading() {
		return active_heading;
	}
	public void setActive_heading(String active_heading) {
		this.active_heading = active_heading;
	}
	public String getActive_link() {
		return active_link;
	}
	public void setActive_link(String active_link) {
		this.active_link = active_link;
	}
	public SidebarActive() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SidebarActive(String active_heading, String active_link) {
		super();
		this.active_heading = active_heading;
		this.active_link = active_link;
	}
	
}
