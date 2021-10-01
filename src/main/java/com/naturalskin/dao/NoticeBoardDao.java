package com.naturalskin.dao;

import java.util.Date;
import java.util.List;

import com.naturalskin.dto.NoticeBoardDto;

public interface NoticeBoardDao {
	public List<NoticeBoardDto> list();
	
	public NoticeBoardDto contentView(String notice_board_id);
	public int write(String notice_board_title, String notice_board_content);
	public int hit(String notice_board_id);
	
	public int modify(String notice_board_title, String member_id,
			Date notice_board_date, int notice_board_hit,
			String notice_board_content);
	public  int delete(String notice_board_id);
}
