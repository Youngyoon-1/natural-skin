package com.naturalskin.dto;

import java.util.Date;

public class Reply_MemberDto {
	private String reply_id;
	private String reply_pw;
	private String reply_name;
	private String reply_phone;
	private String reply_gender;
	private String reply_email;
	private int reply_birthday;
	private int reply_role;
	private int reply_idx;
	private Date reply_date;
	private String reply_address;
	
	public Reply_MemberDto() {
		
	}

	public Reply_MemberDto(String reply_id, String reply_pw, String reply_name, String reply_phone, String reply_gender,
			String reply_email, int reply_birthday, int reply_role, int reply_idx, Date reply_date,
			String reply_address) {
		super();
		this.reply_id = reply_id;
		this.reply_pw = reply_pw;
		this.reply_name = reply_name;
		this.reply_phone = reply_phone;
		this.reply_gender = reply_gender;
		this.reply_email = reply_email;
		this.reply_birthday = reply_birthday;
		this.reply_role = reply_role;
		this.reply_idx = reply_idx;
		this.reply_date = reply_date;
		this.reply_address = reply_address;
	}

	public String getReply_id() {
		return reply_id;
	}

	public void setReply_id(String reply_id) {
		this.reply_id = reply_id;
	}

	public String getReply_pw() {
		return reply_pw;
	}

	public void setReply_pw(String reply_pw) {
		this.reply_pw = reply_pw;
	}

	public String getReply_name() {
		return reply_name;
	}

	public void setReply_name(String reply_name) {
		this.reply_name = reply_name;
	}

	public String getReply_phone() {
		return reply_phone;
	}

	public void setReply_phone(String reply_phone) {
		this.reply_phone = reply_phone;
	}

	public String getReply_gender() {
		return reply_gender;
	}

	public void setReply_gender(String reply_gender) {
		this.reply_gender = reply_gender;
	}

	public String getReply_email() {
		return reply_email;
	}

	public void setReply_email(String reply_email) {
		this.reply_email = reply_email;
	}

	public int getReply_birthday() {
		return reply_birthday;
	}

	public void setReply_birthday(int reply_birthday) {
		this.reply_birthday = reply_birthday;
	}

	public int getReply_role() {
		return reply_role;
	}

	public void setReply_role(int reply_role) {
		this.reply_role = reply_role;
	}

	public int getReply_idx() {
		return reply_idx;
	}

	public void setReply_idx(int reply_idx) {
		this.reply_idx = reply_idx;
	}

	public Date getReply_date() {
		return reply_date;
	}

	public void setReply_date(Date reply_date) {
		this.reply_date = reply_date;
	}

	public String getReply_address() {
		return reply_address;
	}

	public void setReply_address(String reply_address) {
		this.reply_address = reply_address;
	}
	
	
}
