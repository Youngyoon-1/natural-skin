package com.naturalskin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.naturalskin.dao.MemberDao;
//import com.naturalskin.dao.NoticeBoardDao;

//@Controller
public class AdminControllerYoo {
	@Autowired // 객체 초기화해줌.
	private MemberDao member_dao;

//	@Autowired
//	private NoticeBoardDao notice_board_dao;

	@RequestMapping("/")
	public String index() {
		
		return "index";
	}

	@RequestMapping("aMain")
	public String aMain() {
		return "admin/aMain";
	}

	@RequestMapping("/aMemberMain.do")
	public String aMemberMain(HttpServletRequest request, Model model) {
		String page = request.getParameter("page");
		System.out.println( "page:" + page);
		model.addAttribute("page", page);
		
		int num_page_no = Integer.parseInt( page ); //page번호 1,2,3,4
		int num_page_size = 5; //한페이지당 Row갯수
		int startRowNum = (num_page_no - 1) * num_page_size + 1; // 1, 6, 11 페이지 시작 줄번호
		int endRowNum = (num_page_no * num_page_size); //5, 10, 15 페이지 끝 줄번호
		
		System.out.println("startRowNum:"+startRowNum);
		System.out.println("endRowNum:"+endRowNum);
		
		//model.addAttribute("list", dao.listDao());
		model.addAttribute("list", member_dao.listPageDao(String.valueOf(startRowNum), String.valueOf(endRowNum)));  //최상위 10개
	

		return "admin/member/aMemberMain";
	}

	//@RequestMapping("aMemberV")
	//public String aMemberV(@RequestParam("member_id") String member_id, Model model) {
	//	return "admin/member/aMemberV";
	//}

	
	  @RequestMapping("aMemberV") public String amemberV(@RequestParam("member_id")  String member_id,
	  
	  @RequestParam("member_pw") String member_pw,
	  
	  @RequestParam("member_name") String member_name,
	  
	  @RequestParam("member_birthday") int member_birthday,
	  
	  @RequestParam("member_gender") String member_gender,
	  
	  @RequestParam("member_address") String member_address,
	  
	  @RequestParam("member_phone") String member_phone,
	  
	  @RequestParam("member_email") String member_email, Model model) {
	  
	  
	  member_dao.modify(member_id, member_pw, member_name, member_birthday,
	 member_gender, member_address, member_phone, member_email);
	 
	  return "admin/member/aMemberV"; // /list 로 리다이렉트함..
	  
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
		return "<script>" + "window.close();" + "opener.location.href='aOrderMain';" + "</script>";
	}

	@RequestMapping("aOrderDelete")
	@ResponseBody
	public String aOrderDelete() {
		return "<script>" + "window.close();" + "opener.close();" + "opener.opener.location.href='aOrderMain';"
				+ "</script>";
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
	public String aNoticeV(@RequestParam("notice_board_id") String notice_board_id, Model model) {

		// 조회수 증가
		// notice_board_dao.hit(notice_board_id);
		// model.addAttribute("dto", notice_board_dao.contentView(notice_board_id));

		// 댓글 목록
		// List<ReplyDto> reply_list = reply_dao.reply_list( notice_board_id);
		// model.addAttribute("reply_list", reply_list);

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

	@RequestMapping("/aProductV.do")
	public String productV() {

		return "admin/product/aProductV";
	}

	@RequestMapping("aProductAlert")
	public String productAlert() {
		return "admin/product/aProductAlert";
	}
}
