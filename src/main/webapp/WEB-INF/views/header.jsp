<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/header.css">
<style>
	.lastA{
		margin-right: 20px;
	}
</style>
</head>
<body>
	<div id="header">
		<div id="headerLeft">
			<a class="header"id="img" href="/">
				<img src="images/logo.png">
			</a>
			<a class="header" href="brand">Brand</a>
			<div class="dropdown">
				<a class="header" href="productMain">Product</a>
				<div class="dropdown-content">
					<a class="header" href="productMain">모든제품</a>
					<a class="header" href="productMain?findBy=product_category&product_category=클렌저">클렌저</a>
					<a class="header" href="productMain?findBy=product_category&product_category=크림" >크림</a>
					<a class="header" href="productMain?findBy=product_category&product_category=세럼">세럼</a>
					<a class="header" href="productMain?findBy=product_category&product_category=오일">오일</a>
				</div>
			</div>
			<a class="header" href="reviewMain">Review</a>
			<div class="dropdown">
				<a class="header" href="qnaMain">Support</a>
				<div class="dropdown-content">
					<a class="header" href="noticeMain">공지사항</a>
					<a class="header" href="qnaMain">Q&A</a>
				</div>
			</div>
		</div>
		<div>
			<c:choose>
				<c:when test="${member_role == 'admin'}">
					<span id="whoru">${member_id}님 환영합니다.</span>
					<a class="header" href="logout">Logout</a>
					<div id="third-dropdown" class="dropdown">
						<a class="header" href="aMain">AdminPage</a>
						<div class="dropdown-content">
								<a class="header" href="aMemberMain">회원관리</a>
								<a class="header" href="aNoticeMain">공지사항관리</a>
								<a class="header" href="aQnaMain">Q&A관리</a>
								<a class="header" href="aOrderMain">주문관리</a>
								<a class="header" href="aProductMain">상품관리</a>
						</div>
					</div>
				</c:when>
				<c:when test="${member_role == 'member'}">
					<span id="whoru">${member_id}님 환영합니다.</span>
					<a class="header" href="logout">Logout</a>
					<a href="myPageMain">MyPage</a>
					<a class="lastA" href="basket">Cart</a>
				</c:when>
				<c:otherwise>
					<a href="login">Login</a>
					<a class="lastA" href="join">Join</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>