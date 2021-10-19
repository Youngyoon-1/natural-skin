package com.naturalskin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.naturalskin.dao.ReplyDao;
import com.naturalskin.dto.ReplyDto;

@Service
public class ReviewReplyService {
	
	private final ReplyDao replyDao;
	
	public ReviewReplyService(ReplyDao replyDao) {
		this.replyDao = replyDao;
	}
	
	public List<ReplyDto> findById(String review_board_id) {
		return replyDao.findById(review_board_id);
	}

	public int write(ReplyDto replyDto) {
		return replyDao.write(replyDto);
	}

	public int delete(ReplyDto replyDto) {
		return replyDao.delete(replyDto);
	}

	public ReplyDto findOneById(int review_reply_id) {
		return replyDao.findOneById(review_reply_id);
	}

	public int modify(ReplyDto replyDto) {
		return replyDao.modify(replyDto);
	}
	
}
