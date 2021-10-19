package com.naturalskin.dto;

import java.util.Date;

public class ReplyDto {
	private int review_reply_id;
    private int review_board_id;
    private String member_id;
    private String review_reply_content;
    private Date review_reply_date;
    private int review_reply_group_no;
    
	public int getReview_reply_id() {
		return review_reply_id;
	}
	public void setReview_reply_id(int review_reply_id) {
		this.review_reply_id = review_reply_id;
	}
	public int getReview_board_id() {
		return review_board_id;
	}
	public void setReview_board_id(int review_board_id) {
		this.review_board_id = review_board_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getReview_reply_content() {
		return review_reply_content;
	}
	public void setReview_reply_content(String review_reply_content) {
		this.review_reply_content = review_reply_content;
	}
	public Date getReview_reply_date() {
		return review_reply_date;
	}
	public void setReview_reply_date(Date review_reply_date) {
		this.review_reply_date = review_reply_date;
	}
	public int getReview_reply_group_no() {
		return review_reply_group_no;
	}
	public void setReview_reply_group_no(int review_reply_group_no) {
		this.review_reply_group_no = review_reply_group_no;
	}
    
}
