package com.naturalskin.dto;

public class OrderDetailDto {
	private int order_detail_id;
    private long member_order_id;
    private String member_id;
    private int product_id;
    private int order_detail_amount;
    private int order_detail_price;
    private String product_name;
    private int product_price;
    private String product_img_path;
    private int order_detail_review;
    
    
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
	public int getOrder_detail_id() {
		return order_detail_id;
	}
	public void setOrder_detail_id(int order_detail_id) {
		this.order_detail_id = order_detail_id;
	}
	public long getMember_order_id() {
		return member_order_id;
	}
	public void setMember_order_id(long member_order_id) {
		this.member_order_id = member_order_id;
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
	public int getOrder_detail_amount() {
		return order_detail_amount;
	}
	public void setOrder_detail_amount(int order_detail_amount) {
		this.order_detail_amount = order_detail_amount;
	}
	public int getOrder_detail_price() {
		return order_detail_price;
	}
	public void setOrder_detail_price(int order_detail_price) {
		this.order_detail_price = order_detail_price;
	}
	public int getOrder_detail_review() {
		return order_detail_review;
	}
	public void setOrder_detail_review(int order_detail_review) {
		this.order_detail_review = order_detail_review;
	}
    
}
