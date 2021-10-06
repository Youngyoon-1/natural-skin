<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/user/qna/qnamain.css">
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
#lock-logo,#reply-logo{
    width: 20px;
    position: relative;
    top: 3px;
    
}
.banner-image{
	width: 100%;
}
#reply-logo{
    width: 30px;
    
}
#search-logo:hover{
	cursor: pointer;
}
#search-bar{
	text-align: left;
	margin-right: px;
	margin-left: 55px;	
	
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
#role{
	display: none;
}
table{
	width:90%;
	margin: 10px auto;
	border-collapse: collapse;
}
 th, td{
	border-bottom:.5px solid #7B7C95;
	padding: 10px;
}

#button1{
	padding: 3px;
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
#btn{
	display:flex;
	justify-content: space-between;
	margin-right: 5%;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<div><img class="banner-image" src="images/banner.png"></div>
	<h1>Q&A</h1>
	<hr style="border: solid 2px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>구분</th>
		<th>제목</th>
		<th>아이디</th>
		<th>작성일</th>
	</tr>
	<tr onclick="location.href='qnaV1'">
		<td>1</td>
		<td>배송</td>
		<td>상품문의입니다<img id="lock-logo" src="images/lock.png"></td>
		<td>son</td>
		<td>2020-09-23</td>
	</tr>
	<tr onclick="location.href='qnaV2'">
		<td>1</td>
		<td>배송</td>
		<td><img id="reply-logo" src="images/re.png">상품문의입니다<img id="lock-logo" src="images/lock.png"></td>
		<td>admin1</td>
		<td>2020-09-23</td>
	</tr>
	<tr onclick="location.href='qnaV1'">
		<td>2</td>
		<td>배송</td>
		<td>배송문의입니다</td>
		<td>park</td>
		<td>2020-09-23</td>
	</tr>
	<tr onclick="location.href='qnaV2'">
		<td>2</td>
		<td>배송</td>
		<td><img id="reply-logo" src="images/re.png">배송문의입니다</td>
		<td>admin2</td>
		<td>2020-09-23</td>
	</tr>
	</table>
	<div id="btn">
		<div id="search-bar">
			<select id="select-box" onchange="roleClick()">
				<option>아이디</option>
				<option>구분</option>
				<option>제목</option>
			</select>
			<input id="input" type="text">
			<img id="search-logo" src="images/search.png" style="border: solid 0.5px;">
		</div>
		<button id="button1" type="button" onclick="location.href='qnaW'">글쓰기</button>
	</div>
	<br><br><br>
	<c:import url="../../footer.jsp"/>
	<script></script>
</body>
</html>