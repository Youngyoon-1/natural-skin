package com.naturalskin.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.naturalskin.dto.BasketDto;
import com.naturalskin.dto.MemberDto;
import com.naturalskin.dto.NoticeDto;
import com.naturalskin.dto.OrderDetailDto;
import com.naturalskin.dto.OrderDto;
import com.naturalskin.dto.OrderListDto;
import com.naturalskin.dto.PagingDto;
import com.naturalskin.dto.ProductDto;
import com.naturalskin.dto.QnaDto;
import com.naturalskin.dto.ReplyDto;
import com.naturalskin.dto.ReviewDto;
import com.naturalskin.service.BasketService;
import com.naturalskin.service.FileService;
import com.naturalskin.service.MailService;
import com.naturalskin.service.MemberService;
import com.naturalskin.service.NoticeService;
import com.naturalskin.service.OrderService;
import com.naturalskin.service.ProductService;
import com.naturalskin.service.QnaService;
import com.naturalskin.service.ReviewReplyService;
import com.naturalskin.service.ReviewService;

@Controller
public class MemberController {
	
	
	private final MemberService memberService;
	private final ProductService productService;
	private final OrderService orderService;
	private final BasketService basketService;
	private final FileService fileService;
	private final ReviewService reviewService;
	private final ReviewReplyService reviewReplyService;
	private final QnaService qnaService;
	private final NoticeService noticeService;
	private final MailService mailService;
	
	public MemberController(MemberService memberService,ProductService productService,OrderService orderService, BasketService basketService,FileService fileService,ReviewService reviewService,ReviewReplyService reviewReplyService,QnaService qnaService,NoticeService noticeService,MailService mailService) {
		this.memberService = memberService;
		this.productService = productService;
		this.orderService = orderService;
		this.basketService = basketService;
		this.fileService = fileService;
		this.reviewService = reviewService;
		this.reviewReplyService = reviewReplyService;
		this.qnaService = qnaService;
		this.noticeService = noticeService;
		this.mailService = mailService;
		
	}
	
	@RequestMapping("brand")
	public String brand() {
		return "member/brand/brand";
	}
	
	@RequestMapping("login")
	public String login() {
		return "member/login/login";
	}
	@RequestMapping("loginDo")
	public String loginDo(
			MemberDto memberDto,
			HttpServletRequest request, 
			HttpServletResponse response,
			Model model) {
		
		int result = memberService.findByIdNPw(memberDto);
		if(result == 1) {  //로그인 성공시
			Cookie cookie = new Cookie("savedMemberId",memberDto.getMember_id());
			cookie.setPath("/"); 
			if(request.getParameter("isChecked") != null) {
				cookie.setMaxAge(60*60*24*15);
			}else{
				cookie.setMaxAge(0);
			}
			response.addCookie(cookie);
			
			HttpSession session = request.getSession();
			if(memberService.findRoleById(memberDto) == 0) {
				session.setAttribute("member_role", "member");
			}else {
				session.setAttribute("member_role", "admin");
			}
			session.setAttribute("member_id",memberDto.getMember_id());
			return "redirect:/";
		}
		model.addAttribute("msg", "아이디 또는 비밀번호를 다시 확인해주세요.");
		return "member/login/login";
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@RequestMapping("loginSearch")
	public String passwordfind1() {
		return "member/login/loginSearch";
	}
	@RequestMapping("searchId")
	public String searchId(MemberDto memberDto, Model model) {
		if(memberService.findId(memberDto) == null) {
			model.addAttribute("msg", "가입정보를 다시 확인해주세요.");
			return "member/login/loginSearch";
		}
		memberDto.setMember_id(memberService.findId(memberDto));
		model.addAttribute("showMemberId","showMemberId");
		return "member/login/login";
	}
	@RequestMapping("searchIdAlert")
	public String searchIdAlert() {
		return "member/login/searchIdAlert";
	}
	@RequestMapping("loginSearch2")
	public String passwordfind2() {
		return "member/login/loginSearch2";
	}
	@RequestMapping("searchPw")
	@ResponseBody
	public String searchPw(MemberDto memberDto, Model model) {
		int result = memberService.findPw(memberDto);
		if(result == 1) {
			String newPw = memberService.modifyPwToRandom(memberDto);
			if(newPw != null) {
				mailService.gmailSendPw(newPw,memberDto.getMember_email());
				return "<script>"
						+ "window.open('searchPwAlert','','width=600, height=200');"
						+ "window.location.href='login';"
						+ "</script>";
			}else {
				return "<script>"						// 비밀번호변경 실패시
						+ "alert('서버오류 관리자에게 문의 바랍니다.');"
						+ "window.history.back();"
						+ "</script>";
			}
		}
		return "<script>"
				+ "alert('가입정보를 다시 확인해주세요.');"
				+ "window.history.back();"
				+ "</script>";
	}
	@RequestMapping("searchPwAlert")
	public String searchPwAlert(MemberDto memberDto){
		memberDto.setMember_pw(memberService.findPwById(memberDto));
		return "member/login/searchPwAlert";
	}
	@RequestMapping("join")
	public String join() {
		return "member/join/join";
	}
	@RequestMapping("joinDo")
	public String joinDo(MemberDto memberDto,Model model) throws SQLException{
		int result = memberService.join(memberDto);
		if(result == 1) {
			return "member/login/login";
		}
		model.addAttribute("msg", "회원가입에 실패했습니다.");
		return "member/join/join";
	}
	@RequestMapping("join2")
	public String join2() {
		return "member/join/join2";
	}
	@RequestMapping("checkId")
	@ResponseBody
	public int checkId(@RequestParam("member_id") String member_id) {
		if(memberService.findById(member_id) != null) {
			return 0;
		}
		return 1;
	}
	@RequestMapping("/reviewMain")
	public String reviewMain(Model model,PagingDto pagingDto,ReviewDto reviewDto) {
		pagingDto.setCountPerPage(10);
		pagingDto.init(reviewService.getCountBy(reviewDto));
		model.addAttribute("list", reviewService.findList(pagingDto, reviewDto));
		return "member/review/reviewMain";
	}
	@RequestMapping("/reviewW")
	public String reviewW(OrderDetailDto orderDetailDto, Model model) {
		model.addAttribute("orderDetail", orderService.findDetailById(orderDetailDto));
		return "member/review/reviewW";
	}
	@RequestMapping("addReviewImg")
	@ResponseBody
	public Map<String, String> addReviewImg(List<MultipartFile> imgs) {
		Map<String,String> map = new HashMap<String,String>();
		try {
			map.put("imgPaths", fileService.save(imgs, "review"));
			return map;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return map;
	}
	@RequestMapping("deleteReviewImg")
	@ResponseBody
	public Map<String, Integer> deleteReviewImg(@RequestBody String imgPath){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("result", fileService.delete(imgPath));
		return map;
		
	}
	@RequestMapping("/reviewProductChoice")
	public String reviewProductChoice(Model model,HttpServletRequest req) {
		HttpSession session = req.getSession();
		model.addAttribute("list", orderService.findCanReview((String)session.getAttribute("member_id")));
		return "member/review/reviewProductChoice";
	}
	@RequestMapping("reviewWrite")
	@ResponseBody
	public String reviewWrite(ReviewDto reviewDto,String order_detail_id) {
		int result = reviewService.save(reviewDto);
		if(result == 1) {
			result = orderService.updateReviewState(order_detail_id);
			return "<script>"
					+ "location.href='reviewMain';"
					+ "</script>";
		}
		return "<script>"
				+ "alert('리뷰작성에 실패했습니다.');"
				+ "window.history.back();"
				+ "</script>";
	}
	@RequestMapping("/reviewV")
	public String reviewV(String review_board_id, Model model) {
		reviewService.updateHit(review_board_id);
		model.addAttribute("review", reviewService.findById(review_board_id));
		model.addAttribute("list", reviewReplyService.findById(review_board_id));
		return "member/review/reviewV";
	}
	@RequestMapping("writeReply")
	@ResponseBody
	public String writeReply(ReplyDto replyDto) {
		int result = reviewReplyService.write(replyDto);
		if(result == 1) {
			reviewService.updateReplyCnt(replyDto.getReview_board_id());
			return "<script>"
					+ "window.location.href='reviewV?review_board_id="
					+ replyDto.getReview_board_id()
					+ "';"
					+ "</script>";
		}
		return "<script>"
				+ "alert('댓글작성에 실패했습니다.');"
				+ "window.history.back();"
				+ "</script>";
		
	}
	@RequestMapping("deleteReply")
	@ResponseBody
	public String deleteReply(ReplyDto replyDto) {
		int result = reviewReplyService.delete(replyDto);
		if(result != 0) {
			reviewService.updateReplyCnt(replyDto.getReview_board_id());
			return "<script>"
					+ "window.location.href='reviewV?review_board_id="
					+ replyDto.getReview_board_id()
					+ "';"
					+ "</script>";
		}
		return "<script>"
				+ "alert('댓글삭제에 실패했습니다.');"
				+ "window.history.back();"
				+ "</script>";
	}
	@RequestMapping("reviewReplyM")
	public String reviewReplyM(int review_reply_id,Model model) {
		model.addAttribute("reply", reviewReplyService.findOneById(review_reply_id));
		return "member/review/reviewReplyM";
	}
	@RequestMapping("modifyReply")
	@ResponseBody
	public String modifyReply(ReplyDto replyDto) {
		int result = reviewReplyService.modify(replyDto);
		if(result == 1) {
			return "<script>"
					+ "window.close();"
					+ "opener.location.href='reviewV?review_board_id="
					+ replyDto.getReview_board_id()
					+ "';"
					+ "</script>";
		}
		return "<script>"
				+ "alert('댓글수정에 실패했습니다.');"
				+ "window.history.back();"
				+ "</script>";
	}
	@RequestMapping("/reviewM")
	public String reviewM(String review_board_id, Model model) {
		model.addAttribute("review", reviewService.findById(review_board_id));
		return "member/review/reviewM";
	}
	@RequestMapping("modifyReview")
	@ResponseBody
	public String modifyReview(ReviewDto reviewDto) {
		int result = reviewService.modify(reviewDto);
		if(result == 1) {
			return "<script>"
					+ "alert('리뷰가 수정됐습니다.');"
					+ "window.location.href='reviewV?review_board_id="
					+ reviewDto.getReview_board_id()
					+ "';"
					+ "</script>";
		}
		return "<script>"
				+ "alert('리뷰수정에 실패했습니다.');"
				+ "window.history.back();"
				+ "</script>";
	}
	@RequestMapping("modifyReviewImg")
	@ResponseBody
	public String modifyReviewImg(@RequestBody String imgPath,ReviewDto reviewDto) {
		reviewDto.setReview_board_img_path(imgPath);
		int result = reviewService.modifyImgPath(reviewDto);
		if(result == 1) {
			return "<script>"
					+ "window.location.href='reviewM?review_board_id="
					+ reviewDto.getReview_board_id()
					+ "';"
					+ "</script>";
		}
		return "<script>"
				+ "alert('이미지삭제에 실패했습니다.');"
				+ "window.history.back();"
				+ "</script>";
	}
	@RequestMapping("/reviewAlert")
	public String reviewAlert() {
		return "member/review/reviewAlert";
	}
	@RequestMapping("deleteReview")
	@ResponseBody
	public String deleteReview(String review_board_id) {
		int result = reviewService.delete(review_board_id);
		if(result == 1) {
			return "<script>"
					+ "window.close();"
					+ "opener.location.href='reviewMain';"
					+ "</script>";
		}
		return "<script>"
				+ "alert('리뷰삭제에 실패했습니다.');"
				+ "window.history.back();"
				+ "</script>";
	}
	@RequestMapping("noticeMain")
	public String noticeMain(PagingDto pagingDto, NoticeDto noticeDto,Model model) {
		pagingDto.setCountPerPage(10);
		pagingDto.init(noticeService.countNotice(noticeDto));
		model.addAttribute("list",noticeService.findBy(noticeDto, pagingDto));
		return "member/notice/noticeMain";
	}
	
	@RequestMapping("noticeV")
	public String noticeV(Model model,NoticeDto noticeDto) {
		noticeService.updateHit(noticeDto);
		model.addAttribute("notice", noticeService.findById(noticeDto));
		return "member/notice/noticeV";
	}
	
	@RequestMapping("qnaV")
	public String qnaV1(QnaDto qnaDto,Model model) {
		qnaService.updateHit(qnaDto);
		QnaDto qna = qnaService.findById(qnaDto);
		if(qna.getQna_board_reply_state() == 2) { //답글일경우
			qnaDto.setQna_board_group_no(qna.getQna_board_group_no());
			model.addAttribute("list",qnaService.findByGroup(qnaDto));
			return "member/qna/qnaV2";
		}else {
			model.addAttribute("qna",qna);
			return "member/qna/qnaV";
		}
	}
	@RequestMapping("qnaAlert")
	public String qnaAlert() {
		return "member/qna/qnaAlert";
	}
	@RequestMapping("qnaM")
	public String qnaM(QnaDto qnaDto, Model model) {
		model.addAttribute("qna", qnaService.findById(qnaDto));
		model.addAttribute("productList", productService.findAll());
		return "member/qna/qnaM";
	}
	@RequestMapping("/qnaMain")
	public String qnaMain(PagingDto pagingDto, QnaDto qnaDto,Model model) {
		pagingDto.setCountPerPage(10);
		pagingDto.init(qnaService.findQnaCount(qnaDto));
		model.addAttribute("productList", productService.findAll());
		model.addAttribute("list", qnaService.findList(qnaDto, pagingDto));
		return "member/qna/qnaMain";
	}
	@RequestMapping("/qnaW")
	public String qnaW(Model model) {
		model.addAttribute("productList", productService.findAll());
		return "member/qna/qnaW";
	}
	@RequestMapping("deleteQna")
	@ResponseBody
	public String deleteQna(QnaDto qnaDto) {
		qnaDto.setQna_board_group_no(qnaDto.getQna_board_id());
		int result = qnaService.delete(qnaDto);
		if(result != 0) {
			return "<script>"
					+ "window.close();"
					+ "opener.location.href='qnaMain';"
					+ "</script>";
		}
		return "<script>"
		+ "alert('글삭제에 실패했습니다.');"
		+ "window.history.back();"
		+ "</script>";
	}
	@RequestMapping("writeQna")
	@ResponseBody
	public String writeQna(QnaDto qnaDto) {
		int result = qnaService.writeQna(qnaDto);
		if(result == 1) {
			return "<script>"
					+ "window.location.href='qnaMain';"
					+ "</script>";
		}
		return "<script>"
		+ "alert('글작성에 실패했습니다.');"
		+ "window.history.back();"
		+ "</script>";
	}
	@RequestMapping("modifyQna")
	@ResponseBody
	public String modifyQna(QnaDto qnaDto) {
		System.out.println(qnaDto.getQna_board_id());
		int result = qnaService.modifyQna(qnaDto);
		if(result == 1) {
			return "<script>"
					+ "window.location.href='qnaV?qna_board_id="
					+ qnaDto.getQna_board_id()
					+ "';"
					+ "</script>";
		}
		return "<script>"
		+ "alert('글수정에 실패했습니다.');"
		+ "window.history.back();";
	}
	@RequestMapping("myPageMain")
	public String myPageMamin(Model model,OrderDto orderDto,HttpServletRequest req,PagingDto pagingDto) {
		HttpSession session = req.getSession();
		orderDto.setMember_id((String)session.getAttribute("member_id"));
		pagingDto.setCountPerPage(10);
		pagingDto.init(orderService.findOrderCountById(orderDto));
		model.addAttribute("list", orderService.findListById(orderDto, pagingDto));
		return "member/mypage/myPageMain";
	}
	
	@RequestMapping("myPageM")
	public String myPageM(HttpServletRequest req,Model model) {
		HttpSession session = req.getSession();
		model.addAttribute("member", memberService.findById((String)session.getAttribute("member_id")));
		return "member/mypage/myPageM";
	}
	@RequestMapping("myPageModifyDo")
	@ResponseBody
	public String myPageModifyDo(MemberDto memberDto) {
		int result = memberService.modify(memberDto);
		if(result == 1) {
			return "<script>"
					+ "window.location.href='myPageM';"
					+ "</script>";
		}
		return "<script>"
		+ "alert('수정에 실패했습니다.');"
		+ "window.history.back();"
		+ "</script>";
	}
	@RequestMapping("quitAlert")
	public String quitAlert() {
		return "member/mypage/quitAlert";
	}
	@RequestMapping("myPageMemberDelete")
	@ResponseBody
	public String myPageMemberDelete(String member_id, HttpSession session) {
		session.invalidate();
		int result = memberService.deleteById(member_id);
		if(result == 1) {
			return "<script>"
					+ "alert('회원탈퇴 되었습니다.');"
					+ "window.close();"
					+ "opener.location.href='/';"
					+ "</script>";
		}
		return "<script>"
			+ "alert('회원탈퇴에 실패했습니다.');"
			+ "window.close();"
			+ "</script>";
	}
	@RequestMapping("myPageReview")
	public String myPageReview(Model model, PagingDto pagingDto,ReviewDto reviewDto, HttpServletRequest req){
		HttpSession session = req.getSession();
		reviewDto.setMember_id((String)session.getAttribute("member_id"));
		pagingDto.setCountPerPage(10);
		pagingDto.init(reviewService.findCountById(reviewDto));
		model.addAttribute("list", reviewService.findListById(pagingDto,reviewDto));
		return "member/mypage/myPageReview";
	}
	
	@RequestMapping("myPageQna")
	public String myPageQna(Model model, PagingDto pagingDto, QnaDto qnaDto,HttpServletRequest req) {
		HttpSession session = req.getSession();
		qnaDto.setMember_id((String)session.getAttribute("member_id"));
		pagingDto.setCountPerPage(10);
		pagingDto.init(qnaService.findCountById(qnaDto));
		model.addAttribute("list", qnaService.findListById(pagingDto,qnaDto));
		return "member/mypage/myPageQna";
	}
	
	@RequestMapping("myPageOrder")
	public String myPageOrder(OrderDto orderDto, Model model) {
		model.addAttribute("order",orderService.findById(orderDto));
		model.addAttribute("list",orderService.findOrderDetail(orderDto));
		return "member/mypage/myPageOrder";
	}
	
	@RequestMapping("trackAlert")
	public String trackAlert(OrderDto orderDto, Model model) {
		model.addAttribute("order",orderService.findById(orderDto));
		return "member/mypage/trackAlert";
	}
	
	@RequestMapping("myPageOrderM")
	public String myPageOrderM(OrderDto orderDto, Model model,@RequestParam(value="msg",required=false) String msg) {
		model.addAttribute("msg", msg);
		model.addAttribute("order",orderService.findById(orderDto));
		return "member/mypage/myPageOrderM";
	}
	
	@RequestMapping("myPageOrderModifyDo")
	public String myPageOrderModifyDo(OrderDto orderDto,Model model,RedirectAttributes reAtt) {
		int result = orderService.update(orderDto);
		if(result == 1) {
			return "redirect:myPageOrderM?member_order_id="+orderDto.getMember_order_id();
		}
		reAtt.addAttribute("msg", "수정에 실패했습니다");
		return "redirect:myPageOrderM?member_order_id="+orderDto.getMember_order_id();
	}
	@RequestMapping("myPageOrderCancelDo")
	@ResponseBody
	public String myPageOrderCancelDo(OrderDto orderDto,Model model) {
		int result = orderService.updateState(orderDto);
		if(result == 1) {
			return "<script>"
					+ "window.close();"
					+ "opener.location.href='myPageOrder?member_order_id="
					+ orderDto.getMember_order_id() +"';"
					+ "</script>";
		}
		return "<script>"
				+ "alert('취소요청에 실패했습니다.');"
				+ "window.history.back();"
				+ "</script>";
	}
	@RequestMapping("cancelAlert")
	public String cancelAlert(OrderDto orderDto,Model model,@RequestParam(value="msg",required=false) String msg) {
		model.addAttribute("msg", msg);
		model.addAttribute("order", orderService.findById(orderDto));
		return "member/mypage/cancelAlert";
	}
	
	@RequestMapping("productMain")
	public String productMain(ProductDto productDto, Model model) {
		model.addAttribute("productList", productService.findByCategory(productDto));
		return "member/product/productMain";
	}
	
	@RequestMapping("productV")
	public String productV(ProductDto productDto, Model model) {
		model.addAttribute("product", productService.findById(productDto));
		model.addAttribute("reviewList", reviewService.findByProductId(productDto, 10));
		model.addAttribute("qnaList", qnaService.findByProductId(productDto, 10));
		return "member/product/productV";
	}
	@RequestMapping("productAlert")
	public String productAlert() {
		return "member/product/productAlert";
	}
	@RequestMapping("addToBasket")
	@ResponseBody
	public int addToBasket(BasketDto basketDto, HttpServletRequest req) {
		HttpSession session = req.getSession();
		basketDto.setMember_id((String)session.getAttribute("member_id"));
		System.out.println(basketDto.getProduct_img_path());
		if(basketService.add(basketDto)) {
			return 1;
		}
		return 0;
	}
	@RequestMapping("basket")
	public String basket(HttpServletRequest req, Model model, @RequestParam(value="msg",required=false) String msg) {
		HttpSession session = req.getSession();
		String member_id = (String)session.getAttribute("member_id");
		List<BasketDto> basketList = basketService.findById(member_id);
		if(msg != null) {
			model.addAttribute("msg",msg);
		}
		model.addAttribute("basketList",basketList);
		return "member/basket/basket";
	}
	@RequestMapping("basketModify")
	@ResponseBody
	public String basketModify(HttpServletRequest req,BasketDto basketDto) {
		HttpSession session = req.getSession();
		basketDto.setMember_id((String)session.getAttribute("member_id"));
		if(basketService.modify(basketDto)) {
			return basketService.getBasketPrice(basketDto);
		}
		return "0";
	}
	@RequestMapping("basketDelete")
	@ResponseBody
	public int basketDelete(BasketDto basketDto) {
		return basketService.deleteById(basketDto);
	}
	@RequestMapping("basketDeleteAll")
	public String basketDeleteAll(BasketDto basketDto,Model model,RedirectAttributes redAtt) {
		int result = basketService.deleteAll(basketDto);
		if(result != 0) {
			return "redirect:/basket";
		}
		redAtt.addAttribute("msg", "장바구니 삭제에 실패했습니다.");
		return "redirect:/basket";
	}
	
	@RequestMapping("order")
	public String order(
			ProductDto productDto,HttpServletRequest res,
			String product_amount,Model model) {
		String member_id = (String) res.getSession().getAttribute("member_id");
		model.addAttribute("member",memberService.findById(member_id));
		model.addAttribute("productCount", product_amount);
		return "member/order/order";
	}
	@RequestMapping("order2")
	public String order2(
			HttpServletRequest res,
			Model model) {
		String member_id = (String) res.getSession().getAttribute("member_id");
		model.addAttribute("member",memberService.findById(member_id));
		model.addAttribute("list", basketService.findById(member_id));
		return "member/order/order2";
	}
	@RequestMapping("orderDo")
	@ResponseBody
	public String orderDo(OrderDto orderDto, OrderDetailDto orderDetailDto,OrderListDto orderListDto) {
		int result = orderService.insert(orderDto, orderDetailDto,orderListDto);
		if(result == 1) {
			return "<script>"
					+ "window.close();"
					+ "opener.open('orderAlert?member_order_id="
					+ orderDto.getMember_order_id()
					+ "','','width=600, height=200');"
					+ "</script>";
		}
		return "<script>"
		+ "alert('결제에 실패했습니다.');"
		+ "window.history.back();"
		+ "</script>";
	}
	@RequestMapping("order2Do")
	@ResponseBody
	public String order2Do(OrderDto orderDto, OrderDetailDto orderDetailDto,OrderListDto orderListDto, BasketDto basketDto) {
		int result1 = orderService.insert(orderDto, orderDetailDto,orderListDto);
		int result2 = basketService.deleteAll(basketDto);
		if(result1 == 1 && result2 != 0) {
			return "<script>"
					+ "window.close();"
					+ "opener.open('orderAlert?member_order_id="
					+ orderDto.getMember_order_id()
					+ "','','width=600, height=200');"
					+ "</script>";
		}
		return "<script>"
		+ "alert('결제에 실패했습니다.');"
		+ "window.history.back();"
		+ "</script>";
	}

	@RequestMapping("orderAlert")
	public String orderAlert() {
		return "member/order/orderAlert";
	}
}
