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
.reviewImg {
	margin-right: 5px; 
	width:70px;
	height: 70px; 
	vertical-align: middle;
}
.star{
	width: 100px;
}
table{
	width:85%;
	margin: 10px auto;
	border-collapse: collapse;
}
 th, td{
	border-bottom:.5px solid #7B7C95;
	padding: 10px;
}
tr:hover:not(#first-tr){
	background-color: #f2f2f2;
	opacity: .7;
	cursor: pointer;
	transition-duration: .2s;
}
button:hover{
	cursor: pointer;
}
#btns{
    margin: 50px;
    margin-top:10px;
    display:inline-block;
}
#btns button:first-child {
	margin-right: 20px;
}
h1{
    margin: 50px;
    font-size: 50px;
}
hr{
	margin-left: 50px;
    margin-right: 50px;
}
h2{
	font-size: 30px;
	margin: 15px;
	margin-top: 30px;
}
.second-hr{
	margin-left: 7%;
    margin-right: 7%;
}
#search-logo{
	vertical-align:middle;
	margin-bottom:2px;
}
#search-logo:hover{
	cursor: pointer;
}
#search-bar{
	text-align: left;
	margin-left: 7%;
}
img {
	vertical-align:middle;
}
#lock {
	width: 20px;
	height: 20px;
}
#re {
	width: 30px;
	height: 15px;
	padding-bottom: 3px;
	padding-right: 3px;
}
button{
padding-right:7px;
padding-left:7px;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/myPage.png"/>
	<h1>나의게시물</h1>
	<hr style="border: solid 2px;">
	<h2>리뷰게시물</h2>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
		<tr id="first-tr">
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>별점</th>
			<th>조회수</th>
		</tr>
		<tr onclick="location.href='#'">
			<td>2</td>
			<td><img class="reviewImg" src="images/myPageReview.png">만족합니다.</td>
			<td>2021-09-27</td>
			<td><img src="images/star3.png" class="star"></td>
			<td>0</td>
		</tr>
		<tr onclick="location.href='#'">
			<td>1</td>
			<td><img class="reviewImg" src="images/myPageReview.png">만족합니다.</td>
			<td>2021-09-27</td>
			<td><img src="images/star3.png" class="star"></td>
			<td>0</td>
		</tr>
	</table>
	<br>
	<div id="search-bar">
		<select>
			<option>제목</option>
		</select>
		<input type="text">
		<input type="image" id="search-logo" src="images/search.png" style="border: solid 0.5px;"/>
	</div>
	<div id="btns">
		<button type="button" onclick="location.href='myPageQna'">Q&A게시물</button>
		<button type="button" onclick="location.href='myPageMain'">마이페이지</button>
	</div>
	<c:import url="../../footer.jsp"/>
</body>
</html>