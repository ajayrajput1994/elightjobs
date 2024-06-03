package com.naukari.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Roles {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String name;
	private String create_at;
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
	public Roles() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Roles(String name, String create_at) {
		super();
		this.name ="ROLE_"+name;
		this.create_at = create_at;
	}
	public Roles(long id, String name, String create_at) {
		super();
		this.id = id;
		this.name = name;
		this.create_at = create_at;
	}
	@Override
	public String toString() {
		return "Roles [id=" + id + ", name=" + name + ", create_at=" + create_at + "]";
	}
	
}
