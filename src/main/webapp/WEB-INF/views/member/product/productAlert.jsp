<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/member/product/productAlert.css">
</head>
<body>
	<header><h3>장바구니</h3></header>
	<main>
		<br><p>해당 상품이 장바구니에 담겼습니다.</p>
		<button id="first-btn" type="button" onclick="window.close()">취소</button>
		<button type="button" onclick="window.close(); opener.location.href='basket'">장바구니로 이동</button>
	</main>
</body>
</html>