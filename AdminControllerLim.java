package com.naturalskin.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class AdminControllerLim {
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping("aMain")
	public String aMain() {
		return "admin/aMain";
	}
	@RequestMapping("aMemberMain")
	public String aMemberMain() {
		return "admin/member/aMemberMain";
	}
	@RequestMapping("aMemberV")
	public String aMemberV() {
		return "admin/member/aMemberV";
	}
	@RequestMapping("dropAlert")
	public String dropAlert() {
		return "admin/member/dropAlert";
	}
	@RequestMapping("aNoticeMain")
	public String aNoticeMain() {
		return "admin/notice/aNoticeMain";
	}
	@RequestMapping("aNoticeW")
	public String aNoticeW() {
    return "admin/notice/aNoticeW";
		}	
	@RequestMapping("aNoticeV")
	public String aNoticeV() {
    return "admin/notice/aNoticeV";
		}
	
	@RequestMapping("noticeAlert")
	public String noticeAlert() {
		return "admin/notice/noticeAlert";
	}
	@RequestMapping("qnaV1")
	public String qnaV1() {
		return "user/qna/qnaV1";
	}
	@RequestMapping("qnaAlert")
	public String qnaAlert() {
		return "user/qna/qnaAlert";
	}
	@RequestMapping("qnaM")
	public String qnaM() {
		return "user/qna/qnaM";
	}
	@RequestMapping("qnaV2")
	public String qnaV2() {
		return "user/qna/qnaV2";
	}
	@RequestMapping("/qnaMain")
	public String qnaMain() {
		return "user/qna/qnaMain";
	}
	@RequestMapping("/qnaW")
	public String qnaW() {
		return "user/qna/qnaW";
	}
	@RequestMapping("/reviewMain")
	public String reviewMain() {
		return "user/review/reviewMain";
	}
	@RequestMapping("/reviewW")
	public String reviewW() {
		return "user/review/reviewW";
	}
	@RequestMapping("/reviewProductChoice")
	public String reviewProductChoice() {
		return "user/review/reviewProductChoice";
	}
	@RequestMapping("/reviewV")
	public String reviewV() {
		return "user/review/reviewV";
	}
	@RequestMapping("/reviewM")
	public String reviewM() {
		return "user/review/reviewM";
	}
	@RequestMapping("/reviewAlert")
	public String reviewAlert() {
		return "user/review/reviewAlert";
	}
}   	
		
	




