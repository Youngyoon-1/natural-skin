package com.naturalskin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminControllerJoo {

	// Q&A 메인 페이지
	@RequestMapping("aQnaMain")
	public String aQnaMain() {
		return "admin/qna/aQnaMain";
	}
	
	// Q&A 글 상세보기
	@RequestMapping("adminPage1")
	public String adminPage1() {
		return "admin/qna/adminPage1";
	}
	
	// Q&A 글 답변 상세보기
	@RequestMapping("adminPage2")
	public String adminPage2() {
		return "admin/qna/adminPage2";
	}
	
	// Q&A 글 삭제 View
	@RequestMapping("alert1")
	public String userWriteAlert() {
		return "admin/qna/alert1";
	}
	
	// Q&A 글 삭제 View
	@RequestMapping("alert2")
	public String adminWriteAlert() {
		return "admin/qna/alert2";
	}
	
	// Q&A 답변 View
	@RequestMapping("aQnaReply")
	public String aQnaReply() {
		return "admin/qna/aQnaReply";
	}
}
