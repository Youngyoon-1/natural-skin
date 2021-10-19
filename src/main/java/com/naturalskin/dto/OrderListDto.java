package com.naturalskin.dto;

public class OrderListDto {
    private int[] product_id;
    private int[] order_detail_amount;
    private int[] order_detail_price;
    private String[] product_name;
    private int[] product_price;
    private String[] product_img_path;
    
	public int[] getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int[] product_id) {
		this.product_id = product_id;
	}
	public int[] getOrder_detail_amount() {
		return order_detail_amount;
	}
	public void setOrder_detail_amount(int[] order_detail_amount) {
		this.order_detail_amount = order_detail_amount;
	}
	public int[] getOrder_detail_price() {
		return order_detail_price;
	}
	public void setOrder_detail_price(int[] order_detail_price) {
		this.order_detail_price = order_detail_price;
	}
	public String[] getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String[] product_name) {
		this.product_name = product_name;
	}
	public int[] getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int[] product_price) {
		this.product_price = product_price;
	}
	public String[] getProduct_img_path() {
		return product_img_path;
	}
	public void setProduct_img_path(String[] product_img_path) {
		this.product_img_path = product_img_path;
	}
}
