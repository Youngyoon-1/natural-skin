package com.naturalskin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.naturalskin.dto.ReplyDto;

@Mapper
public interface ReplyDao {

	List<ReplyDto> findById(String review_board_id);

	int write(ReplyDto replyDto);

	int delete(ReplyDto replyDto);

	ReplyDto findOneById(int review_reply_id);

	int modify(ReplyDto replyDto);

}
