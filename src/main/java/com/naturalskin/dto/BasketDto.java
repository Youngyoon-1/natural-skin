package com.naturalskin.dto;

public class BasketDto {
	private int basket_id;
	private String member_id;
    private int product_id;
    private int product_amount;
   	private int basket_price;
	private String product_img_path;
    private int product_price;
    
   	public int getBasket_price() {
		return basket_price;
	}
	public void setBasket_price(int basket_price) {
		this.basket_price = basket_price;
	}
	public String getProduct_img_path() {
		return product_img_path;
	}
	public void setProduct_img_path(String product_img_path) {
		this.product_img_path = product_img_path;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
   	private String product_name;
   	
	public int getBasket_id() {
		return basket_id;
	}
	public void setBasket_id(int basket_id) {
		this.basket_id = basket_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getProduct_amount() {
		return product_amount;
	}
	public void setProduct_amount(int product_amount) {
		this.product_amount = product_amount;
	}
   	
   	
}
