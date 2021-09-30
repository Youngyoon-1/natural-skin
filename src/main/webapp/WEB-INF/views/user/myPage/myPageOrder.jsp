<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/user/myPage/myPageOrder.css">
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/myPage.png"/>
	<h1>주문상세페이지</h1>
	<span class="orderNum">주문번호 : 20210927</span><br>
	<p style="clear: both; font-size: 1px">&nbsp;</p>
	<hr style="border: solid 2px;"><br>
	<div>
		<div class="div1">주문완료(배송준비중)</div>
		<div class="div2"><input type="button" value="배송조회" onclick="window.open('trackAlert','','width=600, height=200');"></input></div>
	</div>
	<br>
	<table class="order">
		<tr>
			<td><img class="orderImg" src="images/myPageOrder.png"></td>	
			<td>BodyOil</td>
			<td>25,000원</td>
			<td>1개</td>
			<td><button type="button">리뷰쓰기</button></td>
		</tr>
		<tr>
			<td><img class="orderImg" src="images/myPageOrder.png"></td>	
			<td>BodyOil</td>
			<td>25,000원</td>
			<td>2개</td>
			<td><input type="hidden"></td>
		</tr>
	</table>
	
	<hr style="border: solid 2px;"><br>
	<div class="div1">배송정보</div><br>
	<table class="deliver">
		<tr>
			<th>받는사람</th>
			<td>홍길동</td>
			<td rowspan="3"><button type="button" onclick="window.open('myPageOrderM','','width=600, height=400');">배송정보변경</button></td>
		</tr>
		<tr>
			<th>주소</th>
			<td>서울특별시 중랑구 면목동 110-22 이렐리아 101호</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>000-2222-3333</td>
		</tr>
	</table>
	<hr style="border: solid 2px;"><br>
	<div class="div1">결제정보</div><br>
	<table class="pay">
		<tr>
			<th>결제수단</th>
			<th>결제금액</th>
			<th rowspan="2"><button type="button" onclick="window.open('cancelAlert','','width=600, height=200');">결제/주문취소</button></th>		
		</tr>
		<tr>
			<td>무통장입금</td>
			<td>75,000원</td>
		</tr>
	</table>
	<hr style="border: solid 2px;">
	
	<div id="btns">
		<button type="button" onclick="location.href='myPageMain'">목록</button>
	</div>

	<c:import url="../../footer.jsp"/>
</body>
</html>