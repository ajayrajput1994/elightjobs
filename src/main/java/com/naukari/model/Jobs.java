package com.naukari.model;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Jobs {
	@Id
	@GeneratedValue(strategy = (GenerationType.AUTO))
	private long Id;
	private String role;
	private String salary;
	private String skills;
	private int vacancy;
	private String education;
	private String employment;
	private String shift;
	private String companyname;
	@Column(length=800)
	private String description;
	private String experience_year;
	@Column(length=1000)
	private String responsiblities;
	@Column(length=1000)
	private String qualification;
	@Column(length=1000)
	private String companydetail;
	private String location;
	//@JsonFormat(pattern = "yyyy-MM-dd")
	private String create_at=newString();
	private boolean isactive=true;
	private String image;
	@JsonIgnore
	@ManyToMany(cascade = CascadeType.ALL,fetch = FetchType.LAZY,mappedBy = "jobs")
	private Set<User> user=new HashSet<>();
	
	private String categories;
	@Transient
	private MultipartFile multipartFile;
	
	public long getId() {
		return Id;
	}
	public void setId(long id) {
		Id = id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public int getVacancy() {
		return vacancy;
	}
	public void setVacancy(int vacancy) {
		this.vacancy = vacancy;
	}
	
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getEmployment() {
		return employment;
	}
	public void setEmployment(String employment) {
		this.employment = employment;
	}
	public String getShift() {
		return shift;
	}
	public void setShift(String shift) {
		this.shift = shift;
	}
	public String getResponsiblities() {
		return responsiblities;
	}
	public void setResponsiblities(String responsiblities) {
		this.responsiblities = responsiblities;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getCompanydetail() {
		return companydetail;
	}
	public void setCompanydetail(String companydetail) {
		this.companydetail = companydetail;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getCreate_at() {
		return create_at;
	}
	public void setCreate_at(String create_at) {
		this.create_at = create_at;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public MultipartFile getMultipartFile() {
		return multipartFile;
	}
	public void setMultipartFile(MultipartFile multipartFile) {
		this.multipartFile = multipartFile;
	}
	
	public boolean isIsactive() {
		return isactive;
	}
	public void setIsactive(boolean isactive) {
		this.isactive = isactive;
	}
	public Set<User> getUser() {
		return user;
	}
	public void setUser(Set<User> appliedJob) {
		user = appliedJob;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getdescription() {
		return description;
	}
	public void setdescription(String description) {
		this.description = description;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getExperience_year() {
		return experience_year;
	}
	public void setExperience_year(String experience_year) {
		this.experience_year = experience_year;
	}
	public Jobs() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String newString() {
		LocalDate d=java.time.LocalDate.now();
		return d.toString();
	}
	
	public Jobs addingJobs(Jobs jb) {
		Jobs j=new Jobs();
		j.setRole(jb.getRole());j.setSalary(jb.getSalary());j.setSkills(jb.getSkills());j.setVacancy(jb.getVacancy());
		j.setEducation(jb.getEducation());j.setEducation(jb.getEducation());j.setShift(jb.getShift());j.setCompanyname(jb.getCompanyname());
		j.setdescription(jb.getdescription());j.setResponsiblities(jb.getResponsiblities());j.setQualification(jb.getQualification());
		j.setCompanydetail(jb.getCompanydetail());j.setLocation(jb.getLocation());j.setImage(jb.getImage());j.setDescription(jb.getDescription());
		j.setCategories(jb.getCategories());j.setUser(jb.getUser());j.setCreate_at(jb.getCreate_at());j.setExperience_year(jb.getExperience_year());
		return j;
	}
	public Jobs(long id, String role, String salary, String skills, int vacancy, String education, String employment,
			String shift, String companyname, String description, String experience_year, String responsiblities,
			String qualification, String companydetail, String location, String create_at, boolean isactive,
			String image, String categories, MultipartFile multipartFile) {
		super();
		Id = id;
		this.role = role;
		this.salary = salary;
		this.skills = skills;
		this.vacancy = vacancy;
		this.education = education;
		this.employment = employment;
		this.shift = shift;
		this.companyname = companyname;
		this.description = description;
		this.experience_year = experience_year;
		this.responsiblities = responsiblities;
		this.qualification = qualification;
		this.companydetail = companydetail;
		this.location = location;
		this.create_at = create_at;
		this.isactive = isactive;
		this.image = image;
		this.categories = categories;
		this.multipartFile = multipartFile;
	}
	@Override
	public String toString() {
		return "Jobs [Id=" + Id + ", role=" + role + ", salary=" + salary + ", skills=" + skills + ", vacancy="
				+ vacancy + ", education=" + education + ", employment=" + employment + ", shift=" + shift
				+ ", companyname=" + companyname + ", description=" + description + ", experience_year="
				+ experience_year + ", responsiblities=" + responsiblities + ", qualification=" + qualification
				+ ", companydetail=" + companydetail + ", location=" + location + ", create_at=" + create_at
				+ ", isactive=" + isactive + ", image=" + image + ", categories=" + categories + ", multipartFile="
				+ multipartFile + "]";
	}
	
	
	
	
	
}
