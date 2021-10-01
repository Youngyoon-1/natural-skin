package com.naturalskin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.naturalskin.dto.MemberDto;

@Mapper
public interface MemberDao {
	public List<MemberDto> listDao();
	public List<MemberDto> listPageDao(String start, String end);
	public int modify(String member_id, String member_pw,
			String member_name, int member_birthday, String member_gender,
			String member_address, String member_phone, String member_email);
}
