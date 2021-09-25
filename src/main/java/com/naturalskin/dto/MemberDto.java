package com.naturalskin.dto;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

public class MemberDto {
	int member_idx;
	String member_id;
	String member_pw;
    String member_name;
    String member_phone;
    String member_gender;
    String member_email;
    int member_year;
    int member_month;
    int member_day;
    int member_role;
//    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul") //ajax 통신시 json으로 변환할때 날짜차이가 나서 사용
    Date member_date;
    String member_address;
    String member_address_detail;
    String findBy;
    
    
	public String getFindBy() {
		return findBy;
	}

	public void setFindBy(String findBy) {
		this.findBy = findBy;
	}
	
	public String getMember_address_detail() {
		return member_address_detail;
	}
	public void setMember_address_detail(String member_address_detail) {
		this.member_address_detail = member_address_detail;
	}
	public int getMember_year() {
		return member_year;
	}
	public void setMember_year(int member_year) {
		this.member_year = member_year;
	}
	public int getMember_month() {
		return member_month;
	}
	public void setMember_month(int member_month) {
		this.member_month = member_month;
	}
	public int getMember_day() {
		return member_day;
	}
	public void setMember_day(int member_day) {
		this.member_day = member_day;
	}
	//    public MemberDto() {
//    	
//    }
//	public MemberDto(String member_id, String member_pw, String member_name, String member_phone, String member_gender,
//			String member_email, int member_birthday, int member_role, Date member_date, String member_address) {
//		super();
//		this.member_id = member_id;
//		this.member_pw = member_pw;
//		this.member_name = member_name;
//		this.member_phone = member_phone;
//		this.member_gender = member_gender;
//		this.member_email = member_email;
//		this.member_birthday = member_birthday;
//		this.member_role = member_role;
//		this.member_date = member_date;
//		this.member_address = member_address;
//	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
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
	public int getMember_role() {
		return member_role;
	}
	public void setMember_role(int member_role) {
		this.member_role = member_role;
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
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
    
}
