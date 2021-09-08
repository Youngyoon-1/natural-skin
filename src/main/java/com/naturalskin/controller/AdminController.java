package com.naturalskin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@RequestMapping("productMain")
	public String productMain() {
		
			
			//String page = request.getParameter("page");
			//System.out.println( "page:" + page);
			//model.addAttribute("page", page);
			
			//int num_page_no = Integer.parseInt( page ); //page번호 1,2,3,4
			//int num_page_size = 5; //한페이지당 Row갯수
			//int startRowNum = (num_page_no - 1) * num_page_size + 1; // 1, 6, 11 페이지 시작 줄번호
			//int endRowNum = (num_page_no * num_page_size); //5, 10, 15 페이지 끝 줄번호
			
			//System.out.println("startRowNum:"+startRowNum);
			//System.out.println("endRowNum:"+endRowNum);
			
			//model.addAttribute("list", dao.listDao());
			//model.addAttribute("list", dao.listPageDao(String.valueOf(startRowNum), String.valueOf(endRowNum)));  //최상위 10개
			
		return "admin/product/productMain";
	}
	@RequestMapping("productW")
	public String productW() {
		return "admin/product/productW";
	}
	@RequestMapping("productV")
	public String productV() {
		
		return "admin/product/productV";
	}
	@RequestMapping("productAlert")
	public String productAlert() {
		
		return "admin/product/productAlert";
	}
}
