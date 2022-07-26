package com.wipro.springboot.Entity;

import javax.persistence.*;
 
@Table(name = "category")
@Entity
public class Category {
	private Integer id;
	
	@Column(name = "category_name")
	private String category_name;
	@Column(name = "category_type")
	private String category_type;
	
	
	public Category() {
		super();
	}

	
	public Category(Integer id, String category_name, String category_type) {
		super();
		this.id = id;
		this.category_name = category_name;
		this.category_type = category_type;
	}
	
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getCategory_type() {
		return category_type;
	}

	public void setCategory_type(String category_type) {
		this.category_type = category_type;
	}


	@Override
	public String toString() {
		return "Category [id=" + id + ", category_name=" + category_name + ", category_type=" + category_type + "]";
	}


}
