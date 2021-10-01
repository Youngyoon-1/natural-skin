package com.naturalskin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
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
}
