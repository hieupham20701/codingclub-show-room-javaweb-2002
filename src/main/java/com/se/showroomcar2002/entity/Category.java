package com.se.showroomcar2002.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name =  "categories" )
public class Category {
	@Id
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "description")
	private String description;
	
	@OneToMany(mappedBy = "category")
	private List<Product> products;
	
	public Category() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
