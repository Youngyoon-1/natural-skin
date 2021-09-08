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
		
		
	
}



