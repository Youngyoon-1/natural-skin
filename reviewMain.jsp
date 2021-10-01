<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리</title>
<link rel="stylesheet" href="/css/user/review/reviewMain.css">
<script type="text/javascript"></script>
</head>
<body>
<c:import url="../../header.jsp"/>
<div><img class="banner-image" src="images/banner2.png"></div>
	<h1>리뷰게시판</h1>
	<hr style="border: solid 2px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>제목</th> 
		<th>아이디</th>
		<th>작성일</th>
		<th>별점</th>
		<th>조회수</th>
	</tr>
	<tr onClick="location.href='reviewV'">
		<td>1</td>
		<td id="title"><img class="product-image" src="images/product1.png" alt=""/>&nbsp;&nbsp;<span>만족해요<img id="attach-image" src="images/attach.png" alt="" />(3)</span></td>
		<td >park</td>
		<td>2020-09-23</td>
		<td><img class="star-image" src="images/star5.png" alt="" /></td>
		<td>1</td>
	</tr>
	<tr onClick="location.href='reviewV'">
		<td>1</td>
		<td id="title"><img class="product-image" src="images/product1.png" alt=""/>&nbsp;&nbsp;<span>만족해요<img id="attach-image" src="images/attach.png" alt="" /></span></td>
		<td >park</td>
		<td>2020-09-23</td>
		<td><img class="star-image" src="images/star5.png" alt="" /></td>
		<td>1</td>
	</tr>
	<tr onClick="location.href='reviewV'">
		<td>1</td>
		<td id="title">보통이에요</td>
		<td >park</td>
		<td>2020-09-23</td>
		<td><img class="star-image" src="images/star4.png" alt="" /></td>
		<td>1</td>
	</tr>
	</table>
	    <div id="search-bar">
		<select id="select-box">
			<option>제목</option>
			<option>아이디</option>
		</select>
		<input id="input" type="text">
		<img id="search-logo" src="images/search.png" style="border: solid 0.5px;">
		
		<button id="review-write" onClick="location.href='reviewW'">리뷰작성</button>
		
		</div>
	
	<c:import url="../../footer.jsp" />
</body>
</html>