package com.naturalskin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.naturalskin.dao.QnaDao;
import com.naturalskin.dto.PagingDto;
import com.naturalskin.dto.ProductDto;
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

	
	@Transactional
	public int WriteReply(QnaDto qnaDto) {
		qnaDao.updateReplyState(qnaDto);  //답변글 작성시 해당 질문글 상태 1으로 업데이트
		return qnaDao.insert(qnaDto);
	}
	
	public QnaDto findById(QnaDto qnaDto) {
		return qnaDao.findById(qnaDto);
	}
	
	public int updateHit(QnaDto qnaDto) {
		return qnaDao.updateHit(qnaDto);
	}

	public int writeQna(QnaDto qnaDto) {
		return qnaDao.writeQna(qnaDto);
	}

	public int modifyQna(QnaDto qnaDto) {
		return qnaDao.modifyQna(qnaDto);
	}

	public int findCountById(QnaDto qnaDto) {
		return qnaDao.findCountById(qnaDto);
	}

	public List<QnaDto> findListById(PagingDto pagingDto, QnaDto qnaDto) {
		Map map = new HashMap();
		map.put("pagingDto",pagingDto);
		map.put("qnaDto",qnaDto);
		return qnaDao.findListById(map);
	}

	public List<QnaDto> findByProductId(ProductDto productDto, int count) {
		Map map = new HashMap();
		map.put("productDto", productDto);
		map.put("count", count);
		return qnaDao.findByProductId(map);
	}

}
