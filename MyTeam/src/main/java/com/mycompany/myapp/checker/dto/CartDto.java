package com.mycompany.myapp.checker.dto;

public class CartDto {
	
	private int product_code;
	private int product_price;
	private String product_name;
	private String product_img;
	private int product_count;
	
	public int getProduct_code() {
		return product_code;
	}
	public int getProduct_price() {
		return product_price;
	}
	public String getProduct_name() {
		return product_name;
	}
	public String getProduct_img() {
		return product_img;
	}
	public int getProduct_count() {
		return product_count;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}
	
}
