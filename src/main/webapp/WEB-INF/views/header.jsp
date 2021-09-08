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
</head>
<body>
	<div id="header">
		<div id="headerLeft">
			<a class="header"id="img" href="/">
				<img src="images/logo.png">
			</a>
			<a class="header" href="brand">Brand</a>
			<div class="dropdown">
				<a class="header" href="brand">Product</a>
				<div class="dropdown-content">
					<a class="header" href="/">모든제품</a>
					<a class="header">클렌저</a>
					<a class="header">로션&크림</a>
					<a class="header">앰플&세럼</a>
					<a class="header">오일</a>
				</div>
			</div>
			<a class="header" href="review">Review</a>
			<div class="dropdown">
				<a class="header" href="support">Support</a>
				<div class="dropdown-content">
					<a class="header" href="/">공지사항</a>
					<a class="header">Q&A</a>
				</div>
			</div>
		</div>
		<div>
			관리자님 환영합니다.
			<a class="header" href="#">Logout</a>
			<a class="header" href="aMain">AdminPage</a>
		</div>
	</div>
</body>
</html>