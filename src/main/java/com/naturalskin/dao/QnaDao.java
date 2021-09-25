package com.naturalskin.dao;

import java.util.HashMap;
import java.util.List;

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
}
