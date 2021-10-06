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
		margin-left: 75px;
		margin-top: 30px;
		
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
</style>
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
		<td id="title"><img class="product-image" src="images/product1.png" alt="" width="70px" height="70px"/><span>만족해요(3)</span></td>
		<td >park</td>
		<td>2020-09-23</td>
		<td><img class="star-image" src="images/star5.png" alt="" /></td>
		<td>1</td>
	</tr>
	<tr onClick="location.href='reviewV'">
		<td>1</td>
		<td id="title"><img class="product-image" src="images/product1.png" alt="" width="70px" height="70px"/><span>만족해요</span></td>
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
		<br><br>
	
	<c:import url="../../footer.jsp" />
</body>
</html>