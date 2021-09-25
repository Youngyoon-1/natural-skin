package com.naturalskin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naturalskin.dao.MemberDao;
import com.naturalskin.dto.MemberDto;
import com.naturalskin.dto.PagingDto;

@Service
public class MemberService {
	
	private final MemberDao memberDao;
	
	private MemberService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public MemberDto findById(String member_id) {
		return memberDao.findById(member_id);
	}

	public int modify(MemberDto memberDto) {
		return memberDao.modify(memberDto);
	}

	public int deleteById(String member_id) {
		return memberDao.deleteById(member_id);
	}

	public List<MemberDto> findMemberList(MemberDto memberDto, PagingDto pagingDto) {
		HashMap hashMap = new HashMap();
		hashMap.put("memberDto", memberDto);
		hashMap.put("pagingDto", pagingDto);
		return memberDao.findMemberList(hashMap);
	}

	public int findMemberCount(MemberDto memberDto) {
		return memberDao.findMemberCount(memberDto);
	}
}
