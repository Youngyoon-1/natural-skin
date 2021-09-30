<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/user/myPage/myPageBoard.css">
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/myPage.png"/>
	<h1>나의게시물</h1>
	<hr style="border: solid 2px;">
	<h2>Q&A게시물</h2>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
		<tr id="first-tr">
			<th>번호</th>
			<th>구분</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>
		<tr onclick="location.href='#'">
			<td>3</td>
			<td>배송</td>
			<td>질문드립니다.</td>
			<td>2021-09-27</td>
		</tr>
		<tr onclick="location.href='#'">
			<td>4</td>
			<td>배송</td>
			<td><img id="re" src="images/re.png">질문드립니다.</td>
			<td>2021-09-27</td>
		</tr>
		<tr onclick="location.href='#'">
			<td>2</td>
			<td>배송</td>
			<td>배송문의입니다.</td>
			<td>2021-09-27</td>
		</tr>
		<tr onclick="location.href='#'">
			<td>1</td>
			<td>상품</td>
			<td>배송문의입니다.<img id="lock" src="images/lock.png" alt="잠금" /></td>
			<td>2021-09-27</td>
		</tr>
	</table>
	<br>
	<div id="search-bar">
		<select>
			<option>제목</option>
			<option>구분</option>
		</select>
		<input type="text">
		<input type="image" id="search-logo" src="images/search.png" style="border: solid 0.5px;"/>
	</div>
	<div id="btns">
		<button type="button" onclick="location.href='myPageReview'">리뷰게시물</button>
		<button type="button" onclick="location.href='myPageMain'">마이페이지</button>
	</div>
	<c:import url="../../footer.jsp"/>
</body>
</html>