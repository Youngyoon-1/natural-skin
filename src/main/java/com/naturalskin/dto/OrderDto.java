package com.naturalskin.dto;

import java.math.BigDecimal;
import java.util.Date;

public class OrderDto {
	private long member_order_id; //주문번호
	private String member_id;
	private String member_order_state;
	private Date member_order_date;
	private int member_order_price;
	private String member_order_payment_method;
	private String member_order_receive_address;
	private String member_order_receive_address_detail;
	private String member_order_receive_name;
	private String member_order_receive_phone;
	private String member_name;
	private String[] product_name_arr;
	private String product_name;
	private String findBy;
	
	public long getMember_order_id() {
		return member_order_id;
	}
	public void setMember_order_id(Object member_order_id) {
		if(member_order_id.getClass().getName().equals("java.lang.String")) {
			if(member_order_id.toString().isEmpty()) {
				this.member_order_id = 0;
			}else if(member_order_id.toString().chars().allMatch(Character::isDigit)) {
				this.member_order_id = Long.parseLong(member_order_id.toString());
			}else {
				this.member_order_id = 0;
			}
		}else if(member_order_id.getClass().getName().equals("java.math.BigDecimal")){
			BigDecimal bigDecimal = (BigDecimal) member_order_id;
			this.member_order_id = bigDecimal.longValue();
		}
		else {
			this.member_order_id = (long)member_order_id;
		}
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_order_state() {
		return member_order_state;
	}
	public void setMember_order_state(String member_order_state) {
		this.member_order_state = member_order_state;
	}
	public Date getMember_order_date() {
		return member_order_date;
	}
	public void setMember_order_date(Date member_order_date) {
		this.member_order_date = member_order_date;
	}
	public int getMember_order_price() {
		return member_order_price;
	}
	public void setMember_order_price(int member_order_price) {
		this.member_order_price = member_order_price;
	}
	public String getMember_order_payment_method() {
		return member_order_payment_method;
	}
	public void setMember_order_payment_method(String member_order_payment_method) {
		this.member_order_payment_method = member_order_payment_method;
	}
	public String getMember_order_receive_address() {
		return member_order_receive_address;
	}
	public void setMember_order_receive_address(String member_order_receive_address) {
		this.member_order_receive_address = member_order_receive_address;
	}
	public String getMember_order_receive_address_detail() {
		return member_order_receive_address_detail;
	}
	public void setMember_order_receive_address_detail(String member_order_receive_address_detail) {
		this.member_order_receive_address_detail = member_order_receive_address_detail;
	}
	public String getMember_order_receive_name() {
		return member_order_receive_name;
	}
	public void setMember_order_receive_name(String member_order_receive_name) {
		this.member_order_receive_name = member_order_receive_name;
	}
	public String getMember_order_receive_phone() {
		return member_order_receive_phone;
	}
	public void setMember_order_receive_phone(String member_order_receive_phone) {
		this.member_order_receive_phone = member_order_receive_phone;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getFindBy() {
		return findBy;
	}
	public void setFindBy(String findBy) {
		this.findBy = findBy;
	}
	public String[] getProduct_name_arr() {
		return product_name_arr;
	}
	public void setProduct_name_arr(String[] product_name_arr) {
		this.product_name_arr = product_name_arr;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	
}
