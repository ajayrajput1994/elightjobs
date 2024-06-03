package com.naukari.model;

import java.time.LocalDate;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonFormat;
@Entity
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(unique=true )
	private String name;
	private String icon;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private String create_at= newDate();
	@OneToMany(mappedBy="categories",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private Set<Jobs> jobs;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCreate_at() {
		return create_at;
	}
	public void setCreate_at(String create_at) {
		this.create_at = create_at;
	}
	public Set<Jobs> getJobs() {
		return jobs;
	}
	public void setJobs(Set<Jobs> jobs) {
		this.jobs = jobs;
	}
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	
	public String newDate() {
		LocalDate d=java.time.LocalDate.now();
		return d.toString();
	}
	
	public Category newCategory(Category c) {
		Category cat=new Category();
		cat.setName(c.getName());cat.setIcon(c.getIcon());cat.setJobs(c.getJobs());cat.setCreate_at(c.getCreate_at());
		return cat;
	}
	
	public Category(long id, String name,String icon, String create_at, Set<Jobs> jobs) {
		super();
		this.id = id;
		this.name = name;
		this.icon=icon;
		this.create_at = create_at;
		this.jobs = jobs;
	}
	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", icon=" + icon + ", create_at=" + create_at + "]";
	}
	
}
