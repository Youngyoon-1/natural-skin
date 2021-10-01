package com.naturalskin.dto;

import java.util.Date;

public class MemberDto {
	
	private String member_id;
	private String memeber_pw;
	private String member_name;
	private String member_phone;
	private String member_gender;
	private String member_email;
	private int member_birthday;
	private int member_role;
	private int member_idx;
	private Date member_date;
	private String member_address;
	
	public  MemberDto() {
		
	}

	public MemberDto(String member_id, String memeber_pw, String member_name, String member_phone,
			String member_gender, String member_email, int member_birthday, int member_role, int member_idx,
			Date member_date, String member_address) {
		super();
		this.member_id = member_id;
		this.memeber_pw = memeber_pw;
		this.member_name = member_name;
		this.member_phone = member_phone;
		this.member_gender = member_gender;
		this.member_email = member_email;
		this.member_birthday = member_birthday;
		this.member_role = member_role;
		this.member_idx = member_idx;
		this.member_date = member_date;
		this.member_address = member_address;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMemeber_pw() {
		return memeber_pw;
	}

	public void setMemeber_pw(String memeber_pw) {
		this.memeber_pw = memeber_pw;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getMember_gender() {
		return member_gender;
	}

	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public int getMember_birthday() {
		return member_birthday;
	}

	public void setMember_birthday(int member_birthday) {
		this.member_birthday = member_birthday;
	}

	public int getMember_role() {
		return member_role;
	}

	public void setMember_role(int member_role) {
		this.member_role = member_role;
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public Date getMember_date() {
		return member_date;
	}

	public void setMember_date(Date member_date) {
		this.member_date = member_date;
	}

	public String getMember_address() {
		return member_address;
	}

	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}

	
	
}
