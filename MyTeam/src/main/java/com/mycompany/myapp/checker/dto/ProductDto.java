package com.mycompany.myapp.checker.dto;

public class ProductDto {

	private int product_code;
	private String product_name;
	private int product_price;
	private String product_size;
	private String product_contents;
	private int product_stock_count;
	private String product_stock_status;
	private String product_create_date;
	private int product_store_code;
	private String product_event_status;
	private String product_event_contents;
	private String product_event_start_date;
	private String product_event_end_date;
	private String product_img;
	
	public ProductDto() {
		super();
	}

	public ProductDto(int product_code, String product_name, int product_price, String product_size,
			String product_contents, int product_stock_count, String product_stock_status, String product_create_date,
			int product_store_code, String product_event_status, String product_event_contents,
			String product_event_start_date, String product_event_end_date, String product_img) {
		super();
		this.product_code = product_code;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_size = product_size;
		this.product_contents = product_contents;
		this.product_stock_count = product_stock_count;
		this.product_stock_status = product_stock_status;
		this.product_create_date = product_create_date;
		this.product_store_code = product_store_code;
		this.product_event_status = product_event_status;
		this.product_event_contents = product_event_contents;
		this.product_event_start_date = product_event_start_date;
		this.product_event_end_date = product_event_end_date;
		this.product_img = product_img;
	}

	public int getProduct_code() {
		return product_code;
	}

	public String getProduct_name() {
		return product_name;
	}

	public int getProduct_price() {
		return product_price;
	}

	public String getProduct_size() {
		return product_size;
	}

	public String getProduct_contents() {
		return product_contents;
	}

	public int getProduct_stock_count() {
		return product_stock_count;
	}

	public String getProduct_stock_status() {
		return product_stock_status;
	}

	public String getProduct_create_date() {
		return product_create_date;
	}

	public int getProduct_store_code() {
		return product_store_code;
	}

	public String getProduct_event_status() {
		return product_event_status;
	}

	public String getProduct_event_contents() {
		return product_event_contents;
	}

	public String getProduct_event_start_date() {
		return product_event_start_date;
	}

	public String getProduct_event_end_date() {
		return product_event_end_date;
	}

	public String getProduct_img() {
		return product_img;
	}

	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public void setProduct_size(String product_size) {
		this.product_size = product_size;
	}

	public void setProduct_contents(String product_contents) {
		this.product_contents = product_contents;
	}

	public void setProduct_stock_count(int product_stock_count) {
		this.product_stock_count = product_stock_count;
	}

	public void setProduct_stock_status(String product_stock_status) {
		this.product_stock_status = product_stock_status;
	}

	public void setProduct_create_date(String product_create_date) {
		this.product_create_date = product_create_date;
	}

	public void setProduct_store_code(int product_store_code) {
		this.product_store_code = product_store_code;
	}

	public void setProduct_event_status(String product_event_status) {
		this.product_event_status = product_event_status;
	}

	public void setProduct_event_contents(String product_event_contents) {
		this.product_event_contents = product_event_contents;
	}

	public void setProduct_event_start_date(String product_event_start_date) {
		this.product_event_start_date = product_event_start_date;
	}

	public void setProduct_event_end_date(String product_event_end_date) {
		this.product_event_end_date = product_event_end_date;
	}

	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}

	@Override
	public String toString() {
		return "ProductDto [product_code=" + product_code + ", product_name=" + product_name + ", product_price="
				+ product_price + ", product_size=" + product_size + ", product_contents=" + product_contents
				+ ", product_stock_count=" + product_stock_count + ", product_stock_status=" + product_stock_status
				+ ", product_create_date=" + product_create_date + ", product_store_code=" + product_store_code
				+ ", product_event_status=" + product_event_status + ", product_event_contents="
				+ product_event_contents + ", product_event_start_date=" + product_event_start_date
				+ ", product_event_end_date=" + product_event_end_date + ", product_img=" + product_img + "]";
	}
	

}
