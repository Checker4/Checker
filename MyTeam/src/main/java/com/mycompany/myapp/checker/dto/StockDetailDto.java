package com.mycompany.myapp.checker.dto;

public class StockDetailDto {

	private String store_name;
	private String store_location;
	private String stock_count;
	
	public StockDetailDto() {
	}

	public StockDetailDto(String store_name, String store_location, String stock_count) {
		super();
		this.store_name = store_name;
		this.store_location = store_location;
		this.stock_count = stock_count;
	}

	public String getStore_name() {
		return store_name;
	}

	public String getStore_location() {
		return store_location;
	}

	public String getStock_count() {
		return stock_count;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}

	public void setStore_location(String store_location) {
		this.store_location = store_location;
	}

	public void setStock_count(String stock_count) {
		this.stock_count = stock_count;
	}

	@Override
	public String toString() {
		return "StockDetailDto [store_name=" + store_name + ", store_location=" + store_location + ", stock_count="
				+ stock_count + "]";
	}

	

}
