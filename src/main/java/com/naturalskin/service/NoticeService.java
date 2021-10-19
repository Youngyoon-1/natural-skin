package com.naturalskin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.naturalskin.dao.NoticeDao;
import com.naturalskin.dto.NoticeDto;
import com.naturalskin.dto.PagingDto;

@Service
public class NoticeService {
	
	private final NoticeDao noticeDao;
	
	public NoticeService(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

	public List<NoticeDto> findBy(NoticeDto noticeDto, PagingDto pagingDto) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("noticeDto", noticeDto);
		map.put("pagingDto", pagingDto);
		
		return noticeDao.findBy(map);
	}

	public int countNotice(NoticeDto noticeDto) {
		return noticeDao.countNotice(noticeDto);
	}

	public int write(NoticeDto noticeDto) {
		return noticeDao.write(noticeDto);
	}

	public NoticeDto findById(NoticeDto noticeDto) {
		return noticeDao.findById(noticeDto);
	}

	public int modify(NoticeDto noticeDto) {
		return noticeDao.modify(noticeDto);
	}

	public int delete(NoticeDto noticeDto) {
		return noticeDao.delete(noticeDto);
	}

	public int updateHit(NoticeDto noticeDto) {
		return noticeDao.updateHit(noticeDto);
	}

	public List<NoticeDto> findListByCount(int count) {
		return noticeDao.findListByCount(count);
	}
}
