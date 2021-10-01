package com.naturalskin.dto;

import java.util.Date;

public class ProductDto {
	private int product_id;
    private String product_name;
    private int product_price;
    private String product_img_path;
    private String product_content_img_path;
    private int product_stock;
    private String product_category;
    private String product_content;
    private Date product_date;
    private String findBy;
    
	public String getFindBy() {
		return findBy;
	}
	public void setFindBy(String findBy) {
		this.findBy = findBy;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_img_path() {
		return product_img_path;
	}
	public void setProduct_img_path(String product_img_path) {
		this.product_img_path = product_img_path;
	}
	public String getProduct_content_img_path() {
		return product_content_img_path;
	}
	public void setProduct_content_img_path(String product_content_img_path) {
		this.product_content_img_path = product_content_img_path;
	}
	public int getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(int product_stock) {
		this.product_stock = product_stock;
	}
	public String getProduct_category() {
		return product_category;
	}
	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}
	public String getProduct_content() {
		return product_content;
	}
	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}
	public Date getProduct_date() {
		return product_date;
	}
	public void setProduct_date(Date product_date) {
		this.product_date = product_date;
	}
    
    
}
