<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/admin/aMain.css">
</head>
<body>
	<c:import url="../header.jsp"/>
	<h1>관리자페이지</h1>
	<hr style="border: solid 2px;">
	<div id="btns">
		<div>
			<div class="front"><div><img src="images/a-member-logo.png"/></div>회원관리</div>
			<a href="aMemberMain"><p>일반회원수: <span>${memberCount}</span>명<br>관리자: <span>${adminCount}</span>명</p></a>
		</div>
		<div>
			<div class="front"><div><img src="images/task.png"/></div>게시글관리<div><span style="display:${(newNoticeCount==0)?'none':''}">New!</span></div></div>
			<p class="p"><a class="aMain" href="aNoticeMain">공지사항관리</a><br><a class="aMain" href="aQnaMain">Q&A관리(새로운 <span>${newNoticeCount}</span>건)</a></p>
		</div>
		<div>
			<div class="front"><div><img src="images/task.png"/></div>주문관리<div><span style="display:${(newOrderCount==0 && cancelReqCount==0)?'none':''}">New!</span></div></div>
			<p class="p"><a class="aMain" href="aOrderMain?findBy=member_order_state&member_order_state=배송준비중">신규주문(새로운 <span>${newOrderCount}</span>건)</a><br><a class="aMain" href="aOrderMain?findBy=member_order_state&member_order_state=주문취소요청">취소요청(새로운 <span>${cancelReqCount}</span>건)</a></p>
		</div>
		<div>
			<div class="front"><div><img src="images/task.png"/></div>상품관리</div>
			<a href="aProductMain"><p>판매중인상품: <span>${productCount}</span>개</p></a>
		</div>
	</div>
</body>
</html>