package com.naturalskin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.naturalskin.dto.NoticeDto;

@Mapper
public interface NoticeDao {

	List<NoticeDto> findBy(Map map);

	int countNotice(NoticeDto noticeDto);

	int write(NoticeDto noticeDto);

	NoticeDto findById(NoticeDto noticeDto);

	int modify(NoticeDto noticeDto);

	int delete(NoticeDto noticeDto);

}
