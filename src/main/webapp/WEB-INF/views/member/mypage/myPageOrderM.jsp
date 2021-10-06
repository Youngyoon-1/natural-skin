<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/user/myPage/myPageOrderM.css">
<style>
*{
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 15px;
}
header{
	background-color: #E9E9E9;
	height: 45px;	
}
h3{
	font-size: 20px;
	margin-left: 10px;
	vertical-align: middle;
    line-height: 45px;
}
form{
	margin-left: 40px;
	margin-top: 15px;
	text-align:left;
}
label, input{
	margin: 3px;
}
input{
	width:90%;
	height: 31px;
	border:none;
	padding-left: 3px;
}
input:not(#id){
	width:90%;
	height: 31px;
	border:none;
	background-color: #f1f1f1;
	padding-left: 3px;
}

button{
	letter-spacing: .5px;
	padding: 2px;
	margin: 10px;
}
#btns{
	display: flex;
	justify-content: center;
	margin-top: 6px;
}

#search-address{
	margin: 0;
	font-size: 13px;
}
button:hover{
	cursor: pointer;
}
</style>
</head>
<body>
	<header><h3>배송정보변경</h3></header>
	<form action="">
		<label>받는사람</label><br>
		<input type="text"><br>
		<label>주소</label><button id="search-address">주소찾기</button><br>
		<input type="text"><br>
		<label>상세주소</label><br>
		<input type="text"><br>
		<label>전화번호</label><br>
		<input type="text"><br>
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button type="button">수정</button>
		</div>		
	</form>
</body>
</html>