<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/member/order/orderAlert.css">
<title></title>
</head>
<body>
	<header><h3>주문완료</h3></header>
	<form action="">
	<main>
		<p>주문이 완료됐습니다!</p>
		<p>Natural Skin을 이용해주셔서 감사합니다!</p>
		<button id="btns" type="button" onclick="window.close(); opener.location.href='/'">메인으로</button>
		<button type="button"type="button" onclick="window.close(); opener.location.href='myPageOrder?member_order_id=${param.member_order_id}'">주문현황보기</button>		
	</main>
	</form>
</body>
</html>