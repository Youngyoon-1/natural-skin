package com.naturalskin.controller;


import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.naturalskin.dto.MemberDto;
import com.naturalskin.dto.OrderDto;
import com.naturalskin.dto.PagingDto;
import com.naturalskin.dto.QnaDto;
import com.naturalskin.service.MemberService;
import com.naturalskin.service.OrderService;
import com.naturalskin.service.QnaService;

@Controller
public class AdminController {
	
	final private MemberService memberService;	
	final private OrderService orderService;	
	final private QnaService qnaService;
	
	private AdminController(MemberService memberService, OrderService orderService, QnaService qnaService) {
		this.memberService = memberService;
		this.orderService = orderService;
		this.qnaService = qnaService;
	}
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping("aMain")
	public String aMain() {
		return "admin/aMain";
	}
	@RequestMapping("aMemberMain")
	public String aMemberMain(Model model, PagingDto pagingDto, MemberDto memberDto) {
		pagingDto.init(memberService.findMemberCount(memberDto)); //pagingDto에 담겨있는 요청값과 전체멤버수로 시작페이지, 마지막페이지 구함
		model.addAttribute("allMemberList",memberService.findMemberList(memberDto, pagingDto));
		return "admin/member/aMemberMain";
	}
	@RequestMapping("aMemberV")
	public String aMemberV(@RequestParam("member_id")String member_id, Model model) {
		model.addAttribute("memberInfo", memberService.findById(member_id));
		return "admin/member/aMemberV";
	}
	@RequestMapping("aMemberModify")
	@ResponseBody
	public String aMemberModify(MemberDto memberDto) {
		int result = memberService.modify(memberDto);
		if(result == 1) {                             //수정완료시
			return "<script>"
					+"alert('회원정보 수정이 완료되었습니다.');"
					+"location.href='aMemberV?member_id="
					+ memberDto.getMember_id()+"';"
					+"</script>";
		}
		return "<script>"
				+"alert('회원정보 수정에 실패했습니다.');"
				+"location.href='aMemberV?member_id="
				+ memberDto.getMember_id()+"';"
				+ "</script>";
	}
	@RequestMapping("aMemberAlert")
	public String dropAlert() {
		return "admin/member/aMemberAlert";
	}
	@RequestMapping("aMemberDelete")
	@ResponseBody
	public String aMemberDelete(@RequestParam("member_id")String member_id) {
		int result = memberService.deleteById(member_id);    
		if(result == 1) {                             //삭제성공시
			return "<script>"
					+"alert('회원 탈퇴 되었습니다.');"
					+"window.close();"
					+"opener.close();"
					+"opener.opener.location.reload();"
					+"</script>";
		}
		return "<script>"
				+"alert('회원 탈퇴가 실패됐습니다.');"
				+"window.close();"
				+"</script>";
	}
	@RequestMapping("aOrderMain")
	public String aOrderMain(OrderDto orderDto,PagingDto pagingDto, Model model) {
		pagingDto.init(orderService.findOrderCount(orderDto));
		model.addAttribute("orderList", orderService.findList(orderDto, pagingDto));
		return "admin/order/aOrderMain";
	}
	@RequestMapping("aOrderV")
	public String aOrderV(OrderDto orderDto, Model model) {
		model.addAttribute("order", orderService.findById(orderDto));
		return "admin/order/aOrderV";
	}
	@RequestMapping("aOrderAlert")
	public String aOrderAlert() {
		return "admin/order/aOrderAlert";
	}
	@RequestMapping("aOrderModify")
	@ResponseBody
	public String aOrderModify(OrderDto orderDto) {
		int result = orderService.modify(orderDto);
		if(result == 1) {
			return "<script>"
					+"alert('주문수정이 완료되었습니다.');"
					+"window.location.href='aOrderV?member_id="
					+orderDto.getMember_id()+"';"
					+"opener.location.reload();"
					+"</script>";
		}
		return "<script>"
				+"alert('주문수정이 실패됐습니다.');"
				+"window.location.href='aOrderV?member_id="
				+orderDto.getMember_id()+"';"
				+"</script>";
		
	}
	@RequestMapping("aOrderDelete")
	@ResponseBody
	public String aOrderDelete(OrderDto orderDto){
		int result = orderService.delete(orderDto);
		if(result == 1) {
			return "<script>"
					+"alert('해당 주문건이 삭제되었습니다.');"
					+"window.close();"
					+"opener.close();"
					+"opener.opener.location.reload();"
					+"</script>";
		}
		return "<script>"
				+"alert('삭제가 실패되었습니다.');"
				+"window.location.href='aOrderV?member_id="
				+orderDto.getMember_id()+"';"
				+"</script>";
		
	}
	@RequestMapping("aQnaMain")
	public String aQnaMain(Model model, PagingDto pagingDto, QnaDto qnaDto) {
		pagingDto.init(qnaService.findQnaCount(qnaDto));
		model.addAttribute("qnaList", qnaService.findList(qnaDto, pagingDto));
		return "admin/qna/aQnaMain";
	}
	@RequestMapping("aQnaV")
	public String aQnaV(Model model, QnaDto qnaDto) {
		model.addAttribute("qna",qnaService.findByGroup(qnaDto));
		return "admin/qna/aQnaV";
	}
	@RequestMapping("aQnaModify")
	@ResponseBody
	public String aQnaModify(QnaDto qnaDto) {
		int result = qnaService.modify(qnaDto);
		if(result == 1) {		//수정성공시
			return "<script>"
					+ "alert('답변내용이 수정되었습니다.');"
					+ "window.location.href='aQnaV?qna_board_group_no="+ qnaDto.getQna_board_group_no()
					+ "&qna_board_reply_state="+ qnaDto.getQna_board_reply_state()+ "';"
					+ "</script>";
		}
		return "<script>"
		+ "alert('수정에 실패했습니다.');"
		+ "window.location.href='aQnaV?qna_board_group_no="+ qnaDto.getQna_board_group_no()
		+ "&qna_board_reply_state="+ qnaDto.getQna_board_reply_state()+ "';"
		+ "</script>";
	}
	@RequestMapping("aQnaDelete")
	@ResponseBody
	public String aQnaDelete(QnaDto qnaDto) {
		int result = qnaService.delete(qnaDto);
		if(result != 0) {
			return "<script>"
					+ "alert('삭제완료되었습니다.');"
					+ "window.close();"
					+ "opener.close();"
					+ "opener.opener.location.reload();"
					+ "</script>";
		}
		return "<script>"
		+ "alert('삭제에 실패했습니다.');"
		+ "window.close();"
		+ "opener.reload();"
		+ "</script>";
	}
	@RequestMapping("aQnaAlert")  //삭제시 알림창
	public String aQnaAlert() {
		return "admin/qna/aQnaAlert";
	}
	@RequestMapping("aQnaReply")
	public String aQnaReply(Model model,QnaDto qnaDto){
		model.addAttribute("qna", qnaService.findById(qnaDto));
		return "admin/qna/aQnaReply";
	}
	@RequestMapping("aQnaWriteReply")
	@ResponseBody
	public String aQnaWriteReply(QnaDto qnaDto) {
		int result = qnaService.WriteReply(qnaDto);
		if(result != 0) {
			return	"<script>"
					+ "alert('답변이 등록됐습니다.');"
					+ "window.location.href='aQnaV?qna_board_group_no=" + qnaDto.getQna_board_id()+"&qna_board_reply_state=2';"
					+ "opener.location.reload();"
					+ "</script>";
		}
		return	"<script>"
		+ "alert('답변이 등록에 실패했습니다.');"
		+ "window.location.href='aQnaReply?qna_board_id=" + qnaDto.getQna_board_id() + "';"
		+ "</script>";
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
