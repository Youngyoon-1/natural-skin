package com.naturalskin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.naturalskin.dto.PagingDto;
import com.naturalskin.dto.QnaDto;

@Mapper
public interface QnaDao {

	List<QnaDto> findList(HashMap hashMap);

	int findQnaCount(QnaDto qnaDto);

	List<QnaDto> findByGroup(QnaDto qnaDto);

	int modify(QnaDto qnaDto);

	int delete(QnaDto qnaDto);

	QnaDto findById(QnaDto qnaDto);
	
	int insert(QnaDto qnaDto);

	int updateReplyState(QnaDto qnaDto);

	int updateHit(QnaDto qnaDto);

	int writeQna(QnaDto qnaDto);

	int modifyQna(QnaDto qnaDto);

	int findCountById(QnaDto qnaDto);

	List<QnaDto> findListById(Map map);

	List<QnaDto> findByProductId(Map map);
}
