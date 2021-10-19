package com.naturalskin.dto;

import java.util.Date;

public class ReviewDto {
	private int review_board_id;
    private String member_id;
    private int product_id;
    private String product_name;
    private String review_board_title;
    private String review_board_content;
    private Date review_board_date;
    private int review_board_score;
    private int review_board_hit;
    private String review_board_img_path;
    private String findBy;
    private int reply_count;
    
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
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getReview_board_title() {
		return review_board_title;
	}
	public void setReview_board_title(String review_board_title) {
		this.review_board_title = review_board_title;
	}
	public String getReview_board_content() {
		return review_board_content;
	}
	public void setReview_board_content(String review_board_content) {
		this.review_board_content = review_board_content;
	}
	public Date getReview_board_date() {
		return review_board_date;
	}
	public void setReview_board_date(Date review_board_date) {
		this.review_board_date = review_board_date;
	}
	public int getReview_board_score() {
		return review_board_score;
	}
	public void setReview_board_score(int review_board_score) {
		this.review_board_score = review_board_score;
	}
	public int getReview_board_hit() {
		return review_board_hit;
	}
	public void setReview_board_hit(int review_board_hit) {
		this.review_board_hit = review_board_hit;
	}
	public String getReview_board_img_path() {
		return review_board_img_path;
	}
	public void setReview_board_img_path(String review_board_img_path) {
		this.review_board_img_path = review_board_img_path;
	}
	public String getFindBy() {
		return findBy;
	}
	public void setFindBy(String findBy) {
		this.findBy = findBy;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getReply_count() {
		return reply_count;
	}
	public void setReply_count(int reply_count) {
		this.reply_count = reply_count;
	}
	
}
