package com.bossathome.pojos;

import java.sql.Blob;

public class Product {
	private int id;
	private String productDescription;
	private int price;
	private Blob productImage;
	private Category category;

	public Product(int id, String productDescription, int price, Blob productImage, Category category) {
		super();
		this.id = id;
		this.productDescription = productDescription;
		this.price = price;
		this.productImage = productImage;
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Blob getProductImage() {
		return productImage;
	}

	public void setProductImage(Blob productImage) {
		this.productImage = productImage;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}
