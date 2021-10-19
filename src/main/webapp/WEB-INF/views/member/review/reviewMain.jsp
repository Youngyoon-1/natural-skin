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
<title>상품관리</title>
<link rel="stylesheet" href="/css/user/review/reviewMain.css">
<script type="text/javascript"></script>
<style>
	*{
	    margin: 0;
	    padding: 0;
	    font-style:initial;
	    color: #7B7C95;
	    font-size: 15px;
	    text-align: center;
	}
	#btns{
	    margin: 50px;
	    display:inline-block;
	}
	h1{
	    margin: 50px;
	    font-size: 50px;
	}
	hr{
		margin-left: 50px;
	    margin-right: 50px;
	    margin-top: 15px;
	    clear: both;
	}
	#search-logo{
		vertical-align:middle;
		margin-bottom:2px;
	}
	#search-logo:hover{
		cursor: pointer;
	}
	#search-bar{
		float: right;
		margin-right: 50px;
	    margin-bottom: 15px;
	}
	h2{
		font-size: 30px;
		margin: 15px;
		margin-top: 30px;
	}
	.second-hr{
		margin-left: 65px;
	    margin-right: 65px;
	    margin-top: 0;
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
	
	.product-image{
		vertical-align:middle;
		margin-right: 5px; 
	}
	.star-image{
		width: 100px;
	}
	
	#review-write{
		float: right;
		margin-right: 100px;
		width: 100px;
		height: 25px;
		
	}
	tr:last-child {
		border-bottom: none;
	}
	
	.banner-image{
		width: 100%;
	}
	.bold{
		font-weight:bold;
	}
</style>
</head>
<body>
<c:import url="../../header.jsp"/>
<div><img class="banner-image" src="images/banner2.png"></div>
	<h1>리뷰게시판</h1>
	<form action="reviewMain" method="post" onsubmit="return search()">
	    <div id="search-bar">
			<select name="findBy" id="select-box" onchange="change(this.value)">
				<option ${(reviewDto.findBy == '')?'selected':''} value="">전체보기</option>
				<option ${(reviewDto.findBy == 'review_board_title')?'selected':''} value="review_board_title">제목</option>
				<option ${(reviewDto.findBy == 'member_id')?'selected':''} value="member_id">아이디</option>
			</select>
			<input id="input" type="text" style="display:${(reviewDto.findBy == null || reviewDto.findBy == '')?'none':''}" value="${reviewDto.member_id}${reviewDto.review_board_title}">
			<input type="image"id="search-logo" src="images/search.png" style="border: solid 0.5px;" >
		</div>
	</form>
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
	<c:forEach var="review" items="${list}" varStatus="status">
		<c:set var="imgPath" value="${fn:split(review.review_board_img_path,',')}" />
		<tr onClick="location.href='reviewV?review_board_id=${review.review_board_id}'">
		<td>${pagingDto.startRN + status.index}</td>
		<td id="title"><img style="display:${(review.review_board_img_path == '')?'none':''}" class="product-image" src="upload/${imgPath[0]}" alt="" width="70px" height="70px"/><span>${review.review_board_title}&nbsp;${(review.reply_count == 0)?'':[review.reply_count]}</span></td>
		<td>${review.member_id}</td>
		<td>
			<fmt:formatDate value="${review.review_board_date}" pattern="yyyy-MM-dd" />
		</td>
		<td><img class="star-image" src="images/star${review.review_board_score}.png" alt="" /></td>
		<td>${review.review_board_hit}</td>
	</tr>
	</c:forEach>
	</table>
		<div>
			<a href="reviewMain?page=1&findBy=${reviewDto.findBy}&${reviewDto.findBy}=${reviewDto.member_id}${reviewDto.review_board_title}">처음</a>
			<a href="reviewMain?page=${pagingDto.page-1}&findBy=${reviewDto.findBy}&${reviewDto.findBy}=${reviewDto.member_id}${reviewDto.review_board_title}">이전</a>
			<c:forEach var="no" begin="${pagingDto.startPage}" end="${pagingDto.endPage}">
				<a href="reviewMain?page=${no}&findBy=${reviewDto.findBy}&${reviewDto.findBy}=${reviewDto.member_id}${reviewDto.review_board_title}" class="${(pagingDto.page == no)?'bold':''}" >${no}</a>
			</c:forEach>
			<a href="reviewMain?page=${pagingDto.page+1}&findBy=${reviewDto.findBy}&${reviewDto.findBy}=${reviewDto.member_id}${reviewDto.review_board_title}">다음</a>
			<a href="reviewMain?page=${pagingDto.totalPage}&findBy=${reviewDto.findBy}&${reviewDto.findBy}=${reviewDto.member_id}${reviewDto.review_board_title}">마지막</a>
		</div>
		<button id="review-write" type="button" onClick="location.href='reviewW'">리뷰작성</button>
		<br><br><br>
	<c:import url="../../footer.jsp" />
	<script>
		let input = document.getElementById("input");
		let select = document.getElementById("select-box");
		function search(){
			input.name = select.value;
		}
		function change(value){
			input.value = "";
			if(value === ''){
				input.style.display="none";
			}else{
				input.style.display="inline-block";
			}
		}
	</script>
</body>
</html>