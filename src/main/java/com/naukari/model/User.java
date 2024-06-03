package com.naukari.model;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy = (GenerationType.AUTO))
	 private Long id;
	 private String name;
	 private String email;
	 private String portfolio_url;
	 private String file;
	 @Column(length = 800)
	 private String descriptoin;
	 private String password;
	 private String role;
	 @JsonFormat(pattern ="yyyy-MM-dd")
	 private String applyDate=newDate();
	 @ManyToMany(cascade = CascadeType.ALL)
	 private Set<Jobs> jobs=new HashSet<>();
	 private Boolean enable=true;
	 private String create_at;
	 
	 @Transient
	 private MultipartFile multipartFile;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPortfolio_url() {
		return portfolio_url;
	}
	public void setPortfolio_url(String portfolio_url) {
		this.portfolio_url = portfolio_url;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getDescriptoin() {
		return descriptoin;
	}
	public void setDescriptoin(String descriptoin) {
		this.descriptoin = descriptoin;
	}
	
	
	
	public String getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}
	
	public Boolean getEnable() {
		return enable;
	}
	public void setEnable(Boolean enable) {
		this.enable = enable;
	}
	
	public Set<Jobs> getJobs() {
		return jobs;
	}
	public void setJobs(Set<Jobs> jobs) {
		this.jobs = jobs;
	}
	 
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public MultipartFile getMultipartFile() {
		return multipartFile;
	}
	public void setMultipartFile(MultipartFile multipartFile) {
		this.multipartFile = multipartFile;
	}
	
	public String getCreate_at() {
		return create_at;
	}
	public void setCreate_at(String create_at) {
		this.create_at = create_at;
	}
	public String newDate() {
		LocalDate d=java.time.LocalDate.now();
		return d.toString();
	}
	public User applingJobs(User a) {
		User ap=new User();
		ap.setName(a.getName());ap.setEmail(a.getEmail());ap.setFile(a.getFile());ap.setPortfolio_url(a.getPortfolio_url());ap.setPassword(a.getPassword());
		ap.setDescriptoin(a.getDescriptoin());ap.setJobs(a.getJobs());ap.setEnable(a.getEnable());ap.setApplyDate(a.getApplyDate());ap.setRole(a.getRole());
		ap.setCreate_at(newDate());
		return ap;
	}
	public User(Long id, String name, String email, String portfolio_url, String file, String descriptoin,
			String password, String role, String applyDate, Set<Jobs> jobs, Boolean enable, String create_at,
			MultipartFile multipartFile) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.portfolio_url = portfolio_url;
		this.file = file;
		this.descriptoin = descriptoin;
		this.password = password;
		this.role = role;
		this.applyDate = applyDate;
		this.jobs = jobs;
		this.enable = enable;
		this.create_at = create_at;
		this.multipartFile = multipartFile;
	}
	@Override
	public String toString() {
		return "AppliedJobs [id=" + id + ", name=" + name + ", email=" + email + ", portfolio_url=" + portfolio_url
				+ ", file=" + file + ", descriptoin=" + descriptoin + ", password=" + password + ", role=" + role
				+ ", applyDate=" + applyDate + ", enable=" + enable + ", create_at=" + create_at
				+ "]";
	}
	
	
	 
	 
}
