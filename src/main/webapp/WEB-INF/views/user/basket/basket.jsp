<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/user/basket/basket.css">
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/basket.png"/>
	<h1>장바구니</h1>
	<hr style="border: solid 2px;"><br>
	<table>
		<tr>
			<th>상품이름</th>	
			<th>판매가</th>
			<th>수량</th>
			<th>합계</th>
		</tr>
		<tr>
			<td><img class="basketImg" src="images/basketproduct.png">Natural Ample</td>	
			<td>45,000원</td>
			<td>
				<input type=button value="-" style="width: 15px;">
				<input type="text" style="width: 30px; margin-left: -7px;" />
				<input type=button value="+" style="margin-left: -7px; width: 15px;" >
			</td>
			<td>90,000원</td>
			<td><button type="button">삭제</button></td>
		</tr>
	</table>
	<button type="button" style="float: right; margin-right: 7%;">장바구니비우기</button>
	<p style="clear: both; font-size: 1px">&nbsp;</p>
	<hr style="border: solid 2px;"><br>
	<table class="pay">
		<tr>
			<th>총상품금액</th>	
			<th>배송비</th>
			<th>결제예정금액</th>
		</tr>
		<tr>
			<td>135,000원</td>	
			<td>2,500원</td>
			<td>137,500원</td>
		</tr>
	</table>	
	<hr style="border: solid 2px;"><br>
	<button type="button" onclick="window.open('order','','width=700, height=700');">주문하기</button>
	<c:import url="../../footer.jsp"/>
</body>
</html>