<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/user/myPage/myPageOrder.css">
<style>
*{
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 15px;
    text-align: center;
}
.mainImg {
	width: 100%;
}
.orderImg {
	width: 100px;
	height: 100px;
}
.orderNum {
	float: right;
	margin-right: 7%;
	font-size: 20px;
}
h1{
    margin: 50px;
    font-size: 50px;
}
hr{
	margin-left: 40px;
    margin-right: 40px;
}
table{
	width:85%;
	margin: 10px auto;
	border-collapse: collapse;
}
.order td{
	padding: 10px;
	width: 20%;
}

.order tr {
	border-top:.5px solid #7B7C95;
}
.deliver tr, td {
	width: 33%;
}

th {
	padding-top: 5px;
}
.pay td{
	padding: 10px;
	width: 33%;
}

.pay tr:last-child {
	border-top:.5px solid #ffffff;
}
.div1 {
	float:left;
	margin-left: 8%;
	padding-right: 20px;
	font-size: 20px;
}
.div2 {
	float:right;
	margin-right: 8%;
}

button{
	letter-spacing: .5px;
	padding: 2px;
	margin: 10px;
	padding-right:5px;
	padding-left:5px;
}
#btns{
	display: flex;
	justify-content: center;
	margin-top: 6px;
}
button:hover{
	cursor: pointer;
}
.div2 > input{
	padding-right:5px;
	padding-left:5px;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/myPage.png"/>
	<h1>주문상세페이지</h1>
	<span class="orderNum">주문번호 : ${order.member_order_id}</span><br>
	<p style="clear: both; font-size: 1px">&nbsp;</p>
	<hr style="border: solid 2px;"><br>
	<div>
		<div class="div1">주문완료(${order.member_order_state})</div>
		<div class="div2"><input type="button" value="배송조회" onclick="window.open('trackAlert?member_order_id=${order.member_order_id}','','width=600, height=200');"></input></div>
	</div>
	<br>
	<table class="order">
		<c:forEach var="orderDetail" items="${list}">
			<tr>
				<td><img class="orderImg" src="upload/${orderDetail.product_img_path}"></td>	
				<td>${orderDetail.product_name}</td>
				<td><fmt:formatNumber value="${orderDetail.product_price}" pattern="#,###" />원</td>
				<td>${orderDetail.order_detail_amount}개</td>
				<td><button type="button" onclick="location.href='reviewW?order_detail_id=${orderDetail.order_detail_id}'" style="display:${(orderDetail.order_detail_review != 0 || order.member_order_state == '주문취소요청' || order.member_order_state == '주문취소완료')?'none':''}">리뷰쓰기</button></td>
			</tr>
		</c:forEach>
	</table>
	
	<hr style="border: solid 2px;"><br>
	<div class="div1">배송정보</div><br>
	<table class="deliver">
		<tr>
			<th>받는사람</th>
			<td>${order.member_order_receive_name}</td>
			<td rowspan="3"><button type="button" style="display:${(order.member_order_state == '주문취소요청'|| order.member_order_state == '주문취소완료')?'none':''}" onclick="window.open('myPageOrderM?member_order_id=${order.member_order_id}','','width=600, height=400');">배송정보변경</button></td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${order.member_order_receive_address}&nbsp;${order.member_order_receive_address_detail}</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>${order.member_order_receive_phone}</td>
		</tr>
	</table>
	<hr style="border: solid 2px;"><br>
	<div class="div1">결제정보</div><br>
	<table class="pay">
		<tr>
			<th>결제수단</th>
			<th>결제금액</th>
			<th rowspan="2">
				<button type="button" style="display:${(order.member_order_state == '주문취소요청'|| order.member_order_state == '주문취소완료')?'none':''}" onclick="window.open('cancelAlert?member_order_id=${order.member_order_id}','','width=600, height=200');">
					결제/주문취소
				</button>
			</th>		
		</tr>
		<tr>
			<td>${order.member_order_payment_method}</td>
			<td><fmt:formatNumber value="${order.member_order_price}" pattern="#,###" />원</td>
		</tr>
	</table>
	<hr style="border: solid 2px;">
	
	<div id="btns">
		<button type="button" onclick="location.href='myPageMain'">목록</button>
	</div>
	<br>
	<c:import url="../../footer.jsp"/>
</body>
</html>