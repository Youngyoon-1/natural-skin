package com.naturalskin.controller;


import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.naturalskin.dto.MemberDto;
import com.naturalskin.dto.NoticeDto;
import com.naturalskin.dto.OrderDto;
import com.naturalskin.dto.PagingDto;
import com.naturalskin.dto.ProductDto;
import com.naturalskin.dto.QnaDto;
import com.naturalskin.service.FileService;
import com.naturalskin.service.MemberService;
import com.naturalskin.service.NoticeService;
import com.naturalskin.service.OrderService;
import com.naturalskin.service.ProductService;
import com.naturalskin.service.QnaService;

@Controller
public class AdminController {
	
	final private MemberService memberService;	
	final private OrderService orderService;	
	final private QnaService qnaService;
	final private ProductService productService;
	final private FileService fileService;
	final private NoticeService noticeService;
	
	
	private AdminController(MemberService memberService, OrderService orderService, QnaService qnaService, ProductService productService, FileService fileService,NoticeService noticeService) {
		this.memberService = memberService;
		this.orderService = orderService;
		this.qnaService = qnaService;
		this.productService = productService;
		this.fileService = fileService;
		this.noticeService = noticeService;
	}
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping("aMain")
	public String aMain(Model model,MemberDto memberDto,QnaDto qnaDto, OrderDto orderDto) {
		memberDto.setFindBy("member_role");
		memberDto.setMember_role(0);
		model.addAttribute("memberCount", memberService.findMemberCount(memberDto));
		memberDto.setMember_role(1);
		model.addAttribute("adminCount", memberService.findMemberCount(memberDto));
		qnaDto.setFindBy("qna_board_reply_state");
		qnaDto.setQna_board_reply_state(0);
		model.addAttribute("newNoticeCount", qnaService.findQnaCount(qnaDto));
		orderDto.setFindBy("member_order_state");
		orderDto.setMember_order_state("배송준비중");
		model.addAttribute("newOrderCount", orderService.findOrderCount(orderDto));
		orderDto.setMember_order_state("주문취소요청");
		model.addAttribute("cancelReqCount", orderService.findOrderCount(orderDto));
		model.addAttribute("productCount", productService.getCountOf(null));
		
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
	public String aNoticeMain(Model model, NoticeDto noticeDto, PagingDto pagingDto) {
		pagingDto.init(noticeService.countNotice(noticeDto));
		model.addAttribute("noticeList", noticeService.findBy(noticeDto,pagingDto));
		return "admin/notice/aNoticeMain";
	}
	@RequestMapping("aNoticeW")
	public String aNoticeW() {
		return "admin/notice/aNoticeW";
	}	
	@RequestMapping("aNoticeWrite")
	@ResponseBody
	public String aNoticeWrite(NoticeDto noticeDto) {
		int result = noticeService.write(noticeDto);
		if( result == 1) {
			return "<script>"
					+ "alert('공지사항이 등록됐습니다.');"
					+ "window.close();"
					+ "opener.location.reload();"
					+ "</script>";
		}
		return "<script>"
		+ "alert('공지사항 등록에 실패했습니다.');"
		+ "window.location.href='aProductW';"
		+ "</script>";
	}
	@RequestMapping("aNoticeV")
	public String aNoticeV(NoticeDto noticeDto, Model model) {
		model.addAttribute("notice", noticeService.findById(noticeDto));
		return "admin/notice/aNoticeV";
	}
	@RequestMapping("aNoticeModify")
	@ResponseBody
	public String aNoticeModify(NoticeDto noticeDto) {
		System.out.println(noticeDto.getNotice_board_id());
		int result = noticeService.modify(noticeDto);
		if( result == 1) {
			return "<script>"
					+ "alert('공지사항이 수정됐습니다.');"
					+ "window.location.href='aNoticeV?notice_board_id="
					+  noticeDto.getNotice_board_id() +"';"
					+ "opener.location.reload();"
					+ "</script>";
		}
		return "<script>"
		+ "alert('공지사항 수정에 실패했습니다.');"
		+ "window.location.href='aNoticeV?notice_board_id="
		+  noticeDto.getNotice_board_id() +"';"
		+ "</script>";
	}
	@RequestMapping("noticeAlert")
	public String noticeAlert() {
		return "admin/notice/noticeAlert";
	}
	@RequestMapping("aNoticeDelete")
	@ResponseBody
	public String aNoticeDelete(NoticeDto noticeDto) {
		int result = noticeService.delete(noticeDto);
		if( result == 1) {
			return "<script>"
					+ "alert('공지사항이 삭제됐습니다.');"
					+ "window.close();"
					+ "opener.close();"
					+ "opener.opener.location.reload();"
					+ "</script>";
		}
		return "<script>"
		+ "alert('공지사항 삭제에 실패했습니다.');"
		+ "window.close();"
		+ "opener.location.href='aNoticeV?notice_board_id="
		+  noticeDto.getNotice_board_id() +"';"
		+ "</script>";
	}
	@RequestMapping("aProductMain")
	public String productMain(Model model,ProductDto productDto,PagingDto pagingDto) {
		pagingDto.init(productService.getCountOf(productDto));
		model.addAttribute("productList", productService.findBy(productDto, pagingDto));
		return "admin/product/aProductMain";
	}
	@RequestMapping("aProductW")
	public String productW() {
		return "admin/product/aProductW";
	}
	@RequestMapping("aProductWrite")
	@ResponseBody
	public String aProductWrite(
			List<MultipartFile> mainImgs,
			List<MultipartFile> contentImgs,
			ProductDto productDto) throws IOException{
		productDto.setProduct_img_path(fileService.save(mainImgs,"product"));
		productDto.setProduct_content_img_path(fileService.save(contentImgs,"product"));
		int result = productService.save(productDto);
		if( result == 1) {
			return "<script>"
					+ "alert('상품등록이 완료됐습니다.');"
					+ "window.close();"
					+ "opener.location.reload();"
					+ "</script>";
		}
		return "<script>"
		+ "alert('상품등록이 실패했습니다.');"
		+ "window.location.href='aProductW';"
		+ "</script>";
	}
	@RequestMapping("aProductV")
	public String productV(Model model, ProductDto productDto) {
		model.addAttribute("product", productService.findById(productDto));
		return "admin/product/aProductV";
	}
	
	@RequestMapping("aProductDelImg")
	@ResponseBody
	public String aProductDelImg(
			@RequestParam("delImgPath") String delImgPath,
			ProductDto productDto) {
		int result = productService.deleteImg(productDto);
		if(result == 1) {				//성공시 파일삭제
			fileService.delete(delImgPath);
			return "<script>"
					+ "window.location.href='/aProductV?product_id="
					+ productDto.getProduct_id() + "';"
					+ "opener.location.reload();"
					+ "</script>";
		}
		return "<script>"
				+ "window.location.href='/aProductV?product_id="
				+ productDto.getProduct_id() + "';"
				+ "</script>";
	}
	@RequestMapping("aProductDelContentImg")
	@ResponseBody
	public String aProductDelContentImg(
			@RequestParam("delImgPath") String delImgPath,
			ProductDto productDto) {
		int result = productService.deleteContentImg(productDto);
		if(result == 1) {				//성공시 파일삭제
			fileService.delete(delImgPath);
			return "<script>"
					+ "window.location.href='/aProductV?product_id="
					+ productDto.getProduct_id() + "';"
					+ "opener.location.reload();"
					+ "</script>";
		}
		return "<script>"
				+ "window.location.href='/aProductV?product_id="
				+ productDto.getProduct_id() + "';"
				+ "</script>";
	}
	@RequestMapping("aProductModify")
	@ResponseBody
	public String aProductModify(
			List<MultipartFile> mainImgs,
			List<MultipartFile> contentImgs,
			ProductDto productDto) throws IOException {
		
			String originImgPath = productService.findImgPath(productDto);
			System.out.println(originImgPath);
			String savePath = fileService.save(mainImgs,"product");
			if(originImgPath == null || originImgPath.equals("")) {
				System.out.println("통과");
				productDto.setProduct_img_path(savePath);
			}else if(savePath == null || savePath.equals("")) {
				System.out.println(originImgPath);
				productDto.setProduct_img_path(originImgPath);
			}else {
				productDto.setProduct_img_path(originImgPath + "," + savePath);
			}
			
			String originContentImgPath = productService.findContentImgPath(productDto);
			System.out.println(originContentImgPath);
			savePath = fileService.save(contentImgs,"product");
			if(originContentImgPath == null || originContentImgPath.equals("")) {
				System.out.println("통과");
				productDto.setProduct_content_img_path(savePath);
			}else if(savePath == null || savePath.equals("")){
				productDto.setProduct_content_img_path(originContentImgPath);
				System.out.println(originContentImgPath);
			}else{
				productDto.setProduct_content_img_path(originContentImgPath + "," + savePath);
			}
			
			int result = productService.modify(productDto);
			
			if( result == 1) {
				return "<script>"
						+ "alert('상품수정이 완료됐습니다.');"
						+ "window.location.href='/aProductV?product_id="
						+ productDto.getProduct_id() + "';"
						+ "opener.location.reload();"
						+ "</script>";
			}
			return "<script>"
			+ "alert('상품수정에 실패했습니다.');"
			+ "window.location.href='/aProductV?product_id="
			+ productDto.getProduct_id() + "';"
			+ "</script>";
	}
	@RequestMapping("aProductDelete")
	@ResponseBody
	public String aProductDelete(ProductDto productDto) {
		fileService.delete(productService.findImgPath(productDto));
		fileService.delete(productService.findContentImgPath(productDto));
		int result = productService.delete(productDto);
		if( result == 1) {
			return "<script>"
					+ "alert('상품이 삭제되었습니다.');"
					+ "window.close();"
					+ "opener.close();"
					+ "opener.opener.location.reload();"
					+ "</script>";
		}
		return "<script>"
		+ "alert('상품삭제에 실패했습니다.');"
		+ "window.close();"
		+ "oneper.location.href='/aProductV?product_id="
		+ productDto.getProduct_id() + "';"
		+ "</script>";
	}
	@RequestMapping("aProductAlert")
	public String productAlert() {
		return "admin/product/aProductAlert";
	}
}
