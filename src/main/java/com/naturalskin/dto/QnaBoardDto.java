package com.naturalskin.dto;

import java.util.Date;

public class QnaBoardDto {

   private int qna_board_id; 
   private String member_id;
   private int product_id;
   private String qna_board_title;
   private Date qna_board_date;
   private String qna_board_content;
   private int qna_board_group_no;
   private int qna_board_lock;
   private int qna_board_reply_state;
   private int qna_board_hit;
   private String qna_board_type;
	
	public  QnaBoardDto() {
		
	}

	public QnaBoardDto(int qna_board_id, String member_id, int product_id, String qna_board_title, Date qna_board_date,
			String qna_board_content, int qna_board_group_no, int qna_board_lock, int qna_board_reply_state,
			int qna_board_hit, String qna_board_type) {
		super();
		this.qna_board_id = qna_board_id;
		this.member_id = member_id;
		this.product_id = product_id;
		this.qna_board_title = qna_board_title;
		this.qna_board_date = qna_board_date;
		this.qna_board_content = qna_board_content;
		this.qna_board_group_no = qna_board_group_no;
		this.qna_board_lock = qna_board_lock;
		this.qna_board_reply_state = qna_board_reply_state;
		this.qna_board_hit = qna_board_hit;
		this.qna_board_type = qna_board_type;
	}

	public int getQna_board_id() {
		return qna_board_id;
	}

	public void setQna_board_id(int qna_board_id) {
		this.qna_board_id = qna_board_id;
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

	public String getQna_board_title() {
		return qna_board_title;
	}

	public void setQna_board_title(String qna_board_title) {
		this.qna_board_title = qna_board_title;
	}

	public Date getQna_board_date() {
		return qna_board_date;
	}

	public void setQna_board_date(Date qna_board_date) {
		this.qna_board_date = qna_board_date;
	}

	public String getQna_board_content() {
		return qna_board_content;
	}

	public void setQna_board_content(String qna_board_content) {
		this.qna_board_content = qna_board_content;
	}

	public int getQna_board_group_no() {
		return qna_board_group_no;
	}

	public void setQna_board_group_no(int qna_board_group_no) {
		this.qna_board_group_no = qna_board_group_no;
	}

	public int getQna_board_lock() {
		return qna_board_lock;
	}

	public void setQna_board_lock(int qna_board_lock) {
		this.qna_board_lock = qna_board_lock;
	}

	public int getQna_board_reply_state() {
		return qna_board_reply_state;
	}

	public void setQna_board_reply_state(int qna_board_reply_state) {
		this.qna_board_reply_state = qna_board_reply_state;
	}

	public int getQna_board_hit() {
		return qna_board_hit;
	}

	public void setQna_board_hit(int qna_board_hit) {
		this.qna_board_hit = qna_board_hit;
	}

	public String getQna_board_type() {
		return qna_board_type;
	}

	public void setQna_board_type(String qna_board_type) {
		this.qna_board_type = qna_board_type;
	}
	
	
}
