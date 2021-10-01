package com.naturalskin.dao;

import java.util.Date;
import java.util.List;

import com.naturalskin.dto.QnaBoardDto;

public interface QnaBoardDao {
	public List<QnaBoardDto> list();
	
	public QnaBoardDto contentView(String qna_board_id);
	public int write(String qna_board_type, String qna_board_title, String member_id, Date qna_board_date, int qna_board_hit, String qna_board_content);
	public int hit(String qna_board_id);
	
	public int modify(String qna_board_type, String qna_board_title, String member_id, Date qna_board_date, int qna_board_hit, String qna_board_content);
	public  int delete(String qna_board_id);
}
