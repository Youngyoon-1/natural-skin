<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/member/mypage/myPageAlert.css">
<title></title>
</head>
<body>
	<header><h3>결제취소</h3></header>
	<main>
		<p>결제금액: <fmt:formatNumber value="${order.member_order_price}" pattern="#,###" />원</p>
		<p>환불예상금액:  ${order.member_order_price} - 2500(배송비) = <fmt:formatNumber value="${order.member_order_price-2500}" pattern="#,###" />원</p>
		<button id="btns" type="button" onclick="window.close()">돌아가기</button>
		<button type="button" onclick="location.href='myPageOrderCancelDo?member_order_id=${param.member_order_id}'">취소요청</button>		
	</main>
	<script>
		let msg = '${msg}';
		if(msg !== ''){
			alert(msg);
		}
	</script>
</body>
</html>