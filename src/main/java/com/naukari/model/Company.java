package com.naukari.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

public class Company {
	private String name;
	private String logo;
	private String wallpaper;
	private String title;
	private String description;
	private String url;
	private String idustry;
	private String contact;
	private String company_size;
	private String specilities;
	private String published;
	private String headquarter;
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="companyname")
	private List<Jobs> job=new ArrayList<Jobs>();
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getWallpaper() {
		return wallpaper;
	}
	public void setWallpaper(String wallpaper) {
		this.wallpaper = wallpaper;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getIdustry() {
		return idustry;
	}
	public void setIdustry(String idustry) {
		this.idustry = idustry;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getCompany_size() {
		return company_size;
	}
	public void setCompany_size(String company_size) {
		this.company_size = company_size;
	}
	public String getSpecilities() {
		return specilities;
	}
	public void setSpecilities(String specilities) {
		this.specilities = specilities;
	}
	public String getPublished() {
		return published;
	}
	public void setPublished(String published) {
		this.published = published;
	}
	public String getHeadquarter() {
		return headquarter;
	}
	public void setHeadquarter(String headquarter) {
		this.headquarter = headquarter;
	}
	public List<Jobs> getJob() {
		return job;
	}
	public void setJob(List<Jobs> job) {
		this.job = job;
	}
	public Company() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Company(String name, String logo, String wallpaper, String title, String description, String url,
			String idustry, String contact, String company_size, String specilities, String published,
			String headquarter, List<Jobs> job) {
		super();
		this.name = name;
		this.logo = logo;
		this.wallpaper = wallpaper;
		this.title = title;
		this.description = description;
		this.url = url;
		this.idustry = idustry;
		this.contact = contact;
		this.company_size = company_size;
		this.specilities = specilities;
		this.published = published;
		this.headquarter = headquarter;
		this.job = job;
	}
	@Override
	public String toString() {
		return "Company [name=" + name + ", logo=" + logo + ", wallpaper=" + wallpaper + ", title=" + title
				+ ", description=" + description + ", url=" + url + ", idustry=" + idustry + ", contact=" + contact
				+ ", company_size=" + company_size + ", specilities=" + specilities + ", published=" + published
				+ ", headquarter=" + headquarter + "]";
	}

}
