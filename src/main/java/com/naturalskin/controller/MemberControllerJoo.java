package com.naturalskin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberControllerJoo {

	@RequestMapping("myPageMain")
	public String myPageMamin() {
		return "user/myPage/myPageMain";
	}
	
	@RequestMapping("myPageM")
	public String myPageM() {
		return "user/myPage/myPageM";
	}
	
	@RequestMapping("quitAlert")
	public String quitAlert() {
		return "user/myPage/quitAlert";
	}
	
	@RequestMapping("myPageReview")
	public String myPageReview() {
		return "user/myPage/myPageReview";
	}
	
	@RequestMapping("myPageQna")
	public String myPageQna() {
		return "user/myPage/myPageQna";
	}
	
	@RequestMapping("myPageOrder")
	public String myPageOrder() {
		return "user/myPage/myPageOrder";
	}
	
	@RequestMapping("trackAlert")
	public String trackAlert() {
		return "user/myPage/trackAlert";
	}
	
	@RequestMapping("myPageOrderM")
	public String myPageOrderM() {
		return "user/myPage/myPageOrderM";
	}

	@RequestMapping("cancelAlert")
	public String cancelAlert() {
		return "user/myPage/cancelAlert";
	}
	
	@RequestMapping("basket")
	public String basket() {
		return "user/basket/basket";
	}
	
	@RequestMapping("order")
	public String order() {
		return "user/order/order";
	}
	
	@RequestMapping("orderAlert")
	public String orderAlert() {
		return "user/order/orderAlert";
	}
	
	@RequestMapping("join")
	public String join() {
		return "user/member/join";
	}
	
	@RequestMapping("join2")
	public String join2() {
		return "user/member/join2";
	}

}
