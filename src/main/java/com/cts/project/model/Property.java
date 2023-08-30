package com.cts.project.model;

import javax.validation.constraints.NotNull;

import org.springframework.stereotype.Component;

@Component
public class Property {
	
	
	@NotNull
	private int id;
	@NotNull
	private String name;
	@NotNull
	private String description;
	@NotNull
	private String type;
	@NotNull
	private int price;
	@NotNull
	private String image;
	private String wish;
	
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getWish() {
		return wish;
	}
	public void setWish(String wish) {
		this.wish = wish;
	}

}
