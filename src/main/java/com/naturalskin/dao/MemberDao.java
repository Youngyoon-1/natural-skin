package com.naturalskin.dao;

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
}
