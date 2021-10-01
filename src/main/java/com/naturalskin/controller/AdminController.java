package com.naturalskin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

//@Controller
public class AdminController {
	
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
	@RequestMapping("aMemberAlert")
	public String dropAlert() {
		return "admin/member/aMemberAlert";
	}
	@RequestMapping("aOrderMain")
	public String aOrderMain() {
		return "admin/order/aOrderMain";
	}
	@RequestMapping("aOrderV")
	public String aOrderV() {
		return "admin/order/aOrderV";
	}
	@RequestMapping("aOrderAlert")
	public String aOrderAlert() {
		return "admin/order/aOrderAlert";
	}
	@RequestMapping("aOrderModify")
	@ResponseBody
	public String aOrderModify() {
		return "<script>"
				+"window.close();"
				+"opener.location.href='aOrderMain';"
				+"</script>";
	}
	@RequestMapping("aOrderDelete")
	@ResponseBody
	public String aOrderDelete(){
		return "<script>"
				+"window.close();"
				+"opener.close();"
				+"opener.opener.location.href='aOrderMain';"
				+"</script>";
	}
	@RequestMapping("aQnaMain")
	public String aQnaMain() {
		return "admin/qna/aQnaMain";
	}
	@RequestMapping("aQnaV1")
	public String aQnaV1() {
		return "admin/qna/aQnaV1";
	}
	@RequestMapping("aQnaV2")
	public String aQnaV2() {
		return "admin/qna/aQnaV2";
	}
	@RequestMapping("aQnaAlert")
	public String aQnaAlert() {
		return "admin/qna/aQnaAlert";
	}
	@RequestMapping("aQnaReply")
	public String aQnaReply() {
		return "admin/qna/aQnaReply";
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
	@RequestMapping("aProductMain")
	public String productMain() {
		return "admin/product/aProductMain";
	}
	@RequestMapping("aProductW")
	public String productW() {
		return "admin/product/aProductW";
	}
	@RequestMapping("aProductV")
	public String productV() {
		
		return "admin/product/aProductV";
	}
	@RequestMapping("aProductAlert")
	public String productAlert() {
		return "admin/product/aProductAlert";
	}		
	}

