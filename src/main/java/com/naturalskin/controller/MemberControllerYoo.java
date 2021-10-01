package com.naturalskin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberControllerYoo {
	@RequestMapping("/")
	public String index() {
		
		return "index";
	}

	@RequestMapping("brand")
	public String brand() {
		return "member/brand/Brand";
	}
	
	@RequestMapping("noticemain")
	public String noticemain() {
		return "member/notice/Noticemain";
	}
	
	@RequestMapping("noticeV")
	public String noticeV() {
		return "member/notice/NoticeV";
	}
	
	@RequestMapping("login")
	public String login() {
		return "member/login/Login";
	}
	@RequestMapping("idfind1")
	public String idfind1() {
		return "member/login/Idfind1";
	}
	@RequestMapping("idfind2")
	public String idfind2() {
		return "member/login/Idfind2";
	}
	@RequestMapping("passwordfind1")
	public String passwordfind1() {
		return "member/login/Passwordfind1";
	}
	@RequestMapping("passwordfind2")
	public String passwordfind2() {
		return "member/login/Passwordfind2";
	}
	@RequestMapping("idalert")
	public String idalert() {
		return "member/login/Idalert";
	}
	@RequestMapping("passwordalert")
	public String passwordalert() {
		return "member/login/Passwordalert";
	}
}
