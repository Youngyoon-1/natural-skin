package com.naturalskin.dto;

import java.util.Date;

public class amemberDto {
	private String member_id;
	private String memeber_pw;
	private String member_name;
	private String member_phone;
	private String member_gender;
	private String member_email;
	private int member_birthday;
	private int member_role;
	
	public  amemberDto() {
		
	}

	public amemberDto(String member_id, String memeber_pw, String member_name, String member_phone,
			String member_gender, String member_email, int member_birthday, int member_role) {
		super();
		this.member_id = member_id;
		this.memeber_pw = memeber_pw;
		this.member_name = member_name;
		this.member_phone = member_phone;
		this.member_gender = member_gender;
		this.member_email = member_email;
		this.member_birthday = member_birthday;
		this.member_role = member_role;
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
	
	
}
