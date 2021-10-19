package com.naturalskin.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.naturalskin.dto.MemberDto;
import com.naturalskin.dto.PagingDto;

@Mapper
public interface MemberDao {
	public MemberDto findById(String member_id);
	public int modify(MemberDto memberDto);
	public int deleteById(String member_id);
	public List<MemberDto> findMemberList(Map hashMap);
	public int findMemberCount(MemberDto memberDto);
	public int findByIdNPw(MemberDto memberDto);
	public int findRoleById(MemberDto memberDto);
	public String findId(MemberDto memberDto);
	public int findPw(MemberDto memberDto);
	public int modifyPw(MemberDto memberDto);
	public String findPwById(MemberDto memberDto);
	public int join(MemberDto memberDto) throws SQLException;
}
