<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/user/myPage/myPageMain.css">
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/myPage.png"/>
	<h1>마이페이지</h1>
	<hr style="border: solid 2px;">
	
	<table>
		<tr id="first-tr">
			<th>주문일</th>
			<th>주문상태</th>
			<th>상품명</th>
			<th>금액</th>
		</tr>
		<tr onclick="location.href='myPageOrder'">
			<td>2021-09-27</td>
			<td>주문완료</td>
			<td>body Oil</td>
			<td>25000</td>
		</tr>
		<tr onclick="location.href='myPageOrder'">
			<td>2021-09-27</td>
			<td>주문완료</td>
			<td>body Oil, Natural Cream</td>
			<td>70000</td>
		</tr>
	</table>
	
	<div id="btns">
		<div>
			<a href="myPageM">
				<div class="front">
					<div><img src="images/a-member-logo.png"/></div>
					<div>회원정보</div>
				</div>
			</a>
		</div>
		<div>
			<div class="front hover">
				<div><img src="images/task.png"/></div>
				<div>게시글관리</div>
			</div>
			<p class="p">
				<a class="myPageMain" href="myPageReview">리뷰게시글</a><br><br>
				<a class="myPageMain" href="myPageQna">Q&A게시글</a>
			</p>
		</div>
	</div>
	
	<c:import url="../../footer.jsp"/>
</body>
</html>