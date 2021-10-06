<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/member/notice/Noticemain.css">
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
	margin-left: 65px;
}
h2{
	font-size: 45px;
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
	margin-left: 65px;
	margin-top: 20px;
	float:left;
	padding: 3px;
}
#button2{
	margin-right: 65px;
	margin-top: 20px;
	float:right;
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
#noticemain{
	width: 100%;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img id="noticemain" src="images/notice.png">
	<br>
	<h2>공지사항</h2>
	<br>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>제목</th>
		<th>아이디</th>
		<th>작성일</th>
	</tr>
	<tr onclick="location.href='noticeV'">	
		<td>1</td>
		<td>공지사항</td>
		<td>관리자</td>
		<td>2021/09/29</td>
	</tr>
	</table>
	<div id="search-bar">
		<select id="select-box" onchange="roleClick()">
			<option>제목</option>
		</select>
		<input id="input" type="text">
		<img id="search-logo" src="images/search.png" style="border: solid 0.5px;">
	</div>
	<br>
	<br>
	<script src="js/member/notice/Noticemain.js"></script>
<c:import url="../../footer.jsp"/>
	
</body>
</html>