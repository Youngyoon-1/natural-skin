<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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
.bold{
	font-weight:bold;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/myPage.png"/>
	<h1>나의게시물</h1>
	<hr style="border: solid 2px;">
	<h2>리뷰게시물</h2>
	<br>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
		<tr id="first-tr">
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>별점</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="review" items="${list}" varStatus="status">
			<c:set var="imgPath" value="${fn:split(review.review_board_img_path,',')}"/>
			<tr onclick="location.href='reviewV?review_board_id=${review.review_board_id}'">
				<td>${pagingDto.startRN + status.index}</td>
				<td><img class="reviewImg" style="display:${(review.review_board_img_path == '' || review.review_board_img_path == null)?'none':''}" src="upload/${imgPath[0]}">${review.review_board_title}</td>
				<td><fmt:formatDate value="${review.review_board_date}" pattern="yyyy-MM-dd" /></td>
				<td><img src="images/star${review.review_board_score}.png" class="star"></td>
				<td>${review.review_board_hit}</td>
			</tr>
		</c:forEach>
	</table>
	<div>
		<a href="myPageReview?page=1">처음</a>
		<a href="myPageReview?page=${pagingDto.page-1}">이전</a>
		<c:forEach var="no" begin="${pagingDto.startPage}" end="${pagingDto.endPage}">
			<a class="${(pagingDto.page == no)?'bold':''}" href="myPageReview?page=${no}">${no}</a>
		</c:forEach>
		<a href="myPageReview?page=${pagingDto.page+1}">다음</a>
		<a href="myPageReview?page=${pagingDto.totalPage}">마지막</a>
	</div>
	<br>
	<div id="btns">
		<button type="button" onclick="location.href='myPageQna'">Q&A게시물</button>
		<button type="button" onclick="location.href='myPageMain'">마이페이지</button>
	</div>
	<c:import url="../../footer.jsp"/>
</body>
</html>