<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/user/order/order.css">
</head>
<body>
	<header><h3>주문하기</h3></header>
	<table class="order">
		<tr>
			<th>주문상품[1건]</th>	
			<th>상품명</th>
			<th>수량</th>
			<th>가격</th>
		</tr>
		<tr>
			<td><img class="orderImg" src="images/basketproduct.png"></td>
			<td>Natural Ample</td>
			<td>1개</td>
			<td>45,000원</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td>총상품금액</td>
			<td>45,000원</td>
		</tr>
	</table>
	<h3 style="margin-left: 7%;">배송정보</h3>
	<hr style="border: solid 2px; margin-left: 7%; margin-right: 7%;"><br>
	<div class="main">
		<div class="recipient">
			<div><input type="checkbox">주문자 정보와 동일</div>
			<!-- <p style="clear: both; font-size: 1px">&nbsp;</p> -->
			<label>받는사람</label><br>
			<input type="text"><br>
			<label>주소</label>
			<button id="search-address">주소찾기</button><br>
			<input type="text"><br>
			<input type="text"><br>
			<label>전화번호</label><br>
			<input type="text"><br>
		</div>
		<div class="orderer">
			<h4>주문자정보</h4>
			<label>고객명</label><br>
			<input type="text"><br>
			<label>전화번호</label><br>
			<input type="text"><br>
			<label>이메일</label><br>
			<input type="email"><br>
		</div>
	</div>
	<h3 style="margin-left: 7%;">결제정보 및 금액</h3>
	<hr style="border: solid 2px; margin-left: 7%; margin-right: 7%;"><br>
	<table class="payment">
		<tr>
			<th>결제방법 선택</th>
			<td>
				<input type="radio" name="radio" />무통장입금&nbsp;&nbsp;
				<input type="radio" name="radio" />신용카드&nbsp;&nbsp;
				<input type="radio" name="radio" />핸드폰결제
			</td>
		</tr>
		<tr>
			<th>배송비</th>
			<td>2,500원</td>
		</tr>
		<tr>
			<th>총 결제 금액</th>
			<td>47,500원</td>
		</tr>
	</table>
	<div id="btns">
		<button type="button" onclick="window.close()">취소</button>
		<button type="button" onclick="window.open('orderAlert','','width=600, height=200');">결제하기</button>
	</div>
</body>
</html>