package com.naturalskin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
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
	@RequestMapping("dropAlert")
	public String dropAlert() {
		return "admin/member/dropAlert";
	}
}
