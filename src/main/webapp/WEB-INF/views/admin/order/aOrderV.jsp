<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/order/aOrderV.css">
<script type="text/javascript"></script>
</head>
<body>
	<h2>주문상세페이지</h2>
	<hr style="border: solid 1px;">
	<form action="aOrderModify" onsubmit="return aOrderM();">
		<label>주문자아이디</label><span>son</span>
		<label>주문일</label><span>2021-09-09</span>
		<label>결제금액</label><span>92,500원</span>
		<label>주문번호</label><span>202109091</span><br>
		<hr id="second-hr">
		<label>받는분이름</label><br>
		<input value="손흥민" type="text"><br>
		<label>받는분주소</label><button id="search-address" type="button">주소찾기</button><br>
		<input value="서울시 중랑구 상봉동 000-00" type="text"><br>
		<label>상세주소</label><br>
		<input value="ooo빌라 101호" type="text"><br>
		<label>받는분전화번호</label><br>
		<input value="010-0000-0000" type="text"><br>
		<label>주문상태</label><br>
		<select>
			<option>배송준비중</option>
			<option>배송중</option>
			<option>배송완료</option>
			<option>주문취소요청</option>
			<option>주문취소완료</option>
		</select>
		<hr class="second-hr" style="border: solid 1px;">
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button type="submit">수정</button>
			<button type="button" onclick="window.open('aOrderAlert','','width=600, height=200')">삭제</button>
		</div>
	</form>
	<script>
		function aOrderM(){
			alert("주문이 수정되었습니다.");
			return true;
		}
	</script>
</body>
</html>