package com.naturalskin.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naturalskin.dao.MemberDao;
import com.naturalskin.dto.MemberDto;
import com.naturalskin.dto.PagingDto;
import com.naturalskin.utils.GenerateRandomPw;

@Service
public class MemberService {
	
	private final MemberDao memberDao;
	private final GenerateRandomPw generateRandomPw;
	
	private MemberService(MemberDao memberDao, GenerateRandomPw generateRandomPw) {
		this.memberDao = memberDao;
		this.generateRandomPw = generateRandomPw;
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

	public int findByIdNPw(MemberDto memberDto) {
		return memberDao.findByIdNPw(memberDto);
	}

	public int findRoleById(MemberDto memberDto) {
		return memberDao.findRoleById(memberDto);
	}

	public String findId(MemberDto memberDto) {
		return memberDao.findId(memberDto);
	}

	public int findPw(MemberDto memberDto) {
		return memberDao.findPw(memberDto);
	}

	public String modifyPwToRandom(MemberDto memberDto) {
		memberDto.setMember_pw(generateRandomPw.init());
		int result = memberDao.modifyPw(memberDto);
		if(result == 1) {						//비밀번호 변경 성공시
			return memberDto.getMember_pw();
		}
		return null;
	}

	public String findPwById(MemberDto memberDto) {
		return memberDao.findPwById(memberDto);
	}

	public int join(MemberDto memberDto) throws SQLException {
		return memberDao.join(memberDto);
	}
}
