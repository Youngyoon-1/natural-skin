package com.naturalskin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("brand")
	public String brand() {
		return "member/brand/brand";
	}
	
	@RequestMapping("/reviewMain")
	public String reviewMain() {
		return "member/review/reviewMain";
	}
	@RequestMapping("/reviewW")
	public String reviewW() {
		return "member/review/reviewW";
	}
	@RequestMapping("/reviewProductChoice")
	public String reviewProductChoice() {
		return "member/review/reviewProductChoice";
	}
	@RequestMapping("/reviewV")
	public String reviewV() {
		return "member/review/reviewV";
	}
	@RequestMapping("/reviewM")
	public String reviewM() {
		return "member/review/reviewM";
	}
	@RequestMapping("/reviewAlert")
	public String reviewAlert() {
		return "member/review/reviewAlert";
	}
	
	@RequestMapping("noticeMain")
	public String noticeMain() {
		return "member/notice/noticeMain";
	}
	
	@RequestMapping("noticeV")
	public String noticeV() {
		return "member/notice/noticeV";
	}
	
	@RequestMapping("qnaV1")
	public String qnaV1() {
		return "member/qna/qnaV1";
	}
	@RequestMapping("qnaAlert")
	public String qnaAlert() {
		return "member/qna/qnaAlert";
	}
	@RequestMapping("qnaM")
	public String qnaM() {
		return "member/qna/qnaM";
	}
	@RequestMapping("qnaV2")
	public String qnaV2() {
		return "member/qna/qnaV2";
	}
	@RequestMapping("/qnaMain")
	public String qnaMain() {
		return "member/qna/qnaMain";
	}
	@RequestMapping("/qnaW")
	public String qnaW() {
		return "member/qna/qnaW";
	}
	
	@RequestMapping("join")
	public String join() {
		return "member/join/join";
	}
	
	@RequestMapping("join2")
	public String join2() {
		return "member/join/join2";
	}
	
	@RequestMapping("login")
	public String login() {
		return "member/login/login";
	}
	@RequestMapping("loginSearch")
	public String passwordfind1() {
		return "member/login/loginSearch";
	}
	@RequestMapping("searchIdAlert")
	public String searchIdAlert() {
		return "member/login/searchIdAlert";
	}
	@RequestMapping("loginSearch2")
	public String passwordfind2() {
		return "member/login/loginSearch2";
	}
	@RequestMapping("searchPwAlert")
	public String searchPwAlert() {
		return "member/login/searchPwAlert";
	}
	@RequestMapping("myPageMain")
	public String myPageMamin() {
		return "member/mypage/myPageMain";
	}
	
	@RequestMapping("myPageM")
	public String myPageM() {
		return "member/mypage/myPageM";
	}
	
	@RequestMapping("quitAlert")
	public String quitAlert() {
		return "member/mypage/quitAlert";
	}
	
	@RequestMapping("myPageReview")
	public String myPageReview() {
		return "member/mypage/myPageReview";
	}
	
	@RequestMapping("myPageQna")
	public String myPageQna() {
		return "member/mypage/myPageQna";
	}
	
	@RequestMapping("myPageOrder")
	public String myPageOrder() {
		return "member/mypage/myPageOrder";
	}
	
	@RequestMapping("trackAlert")
	public String trackAlert() {
		return "member/mypage/trackAlert";
	}
	
	@RequestMapping("myPageOrderM")
	public String myPageOrderM() {
		return "member/mypage/myPageOrderM";
	}

	@RequestMapping("cancelAlert")
	public String cancelAlert() {
		return "member/mypage/cancelAlert";
	}
	
	@RequestMapping("productMain")
	public String productMain() {
		return "member/product/productMain";
	}
	
	@RequestMapping("productV")
	public String productV() {
		return "member/product/productV";
	}
	@RequestMapping("productAlert")
	public String productAlert() {
		return "member/product/productAlert";
	}
	
	@RequestMapping("basket")
	public String basket() {
		return "member/basket/basket";
	}
	
	@RequestMapping("order")
	public String order() {
		return "member/order/order";
	}
	
	@RequestMapping("orderAlert")
	public String orderAlert() {
		return "member/order/orderAlert";
	}
}
