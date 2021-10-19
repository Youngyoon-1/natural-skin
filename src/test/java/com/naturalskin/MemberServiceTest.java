package com.naturalskin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import com.naturalskin.dto.MemberDto;
import com.naturalskin.service.MemberService;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

@SpringBootTest
@Transactional
public class MemberServiceTest {
	@Autowired MemberService memberService;
	
	MemberDto memberDto = new MemberDto();
	
	@Test
	public void 회원가입() throws Exception{
		
		memberDto.setMember_id("hong1a");  //새로운 아이디 아이디
		memberDto.setMember_pw("1234567a");
		
		assertEquals(memberService.join(memberDto),1);
	}
	
	@Test 
	public void 로그인() throws Exception{
		memberDto.setMember_id("tjosserq12");  //기존에 있던 아이디
		memberDto.setMember_pw("1234567a");
		assertEquals(memberService.findByIdNPw(memberDto),1);
	}
}
