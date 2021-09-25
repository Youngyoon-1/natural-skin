package com.naturalskin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.naturalskin.dao.QnaDao;
import com.naturalskin.dto.PagingDto;
import com.naturalskin.dto.QnaDto;

@Service
public class QnaService {
	
	private final QnaDao qnaDao;
	
	public QnaService(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}
	
	public List<QnaDto> findList(QnaDto qnaDto, PagingDto pagingDto) {
		HashMap hashMap = new HashMap();
		hashMap.put("qnaDto", qnaDto);
		hashMap.put("pagingDto", pagingDto);
		return qnaDao.findList(hashMap);
	}

	public int findQnaCount(QnaDto qnaDto) {
		return qnaDao.findQnaCount(qnaDto);
	}

	public List<QnaDto> findByGroup(QnaDto qnaDto) {
		return qnaDao.findByGroup(qnaDto);
	}

	public int modify(QnaDto qnaDto) {
		return qnaDao.modify(qnaDto);
	}

	@Transactional
	public int delete(QnaDto qnaDto){
		if(qnaDto.getQna_board_reply_state() == 2) { //삭제하고자하는것이 답변글일때
			qnaDao.updateReplyState(qnaDto);   //답변글 삭제시 해당 질문글 상태 0으로 업데이트
		}
		return qnaDao.delete(qnaDto);
	}

	public QnaDto findById(QnaDto qnaDto) {
		return qnaDao.findById(qnaDto);
	}
	
	@Transactional
	public int WriteReply(QnaDto qnaDto) {
		qnaDao.updateReplyState(qnaDto);  //답변글 작성시 해당 질문글 상태 1으로 업데이트
		return qnaDao.insert(qnaDto);
	}

}
