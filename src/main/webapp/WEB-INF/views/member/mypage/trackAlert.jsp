<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/user/myPage/myPageAlert.css">
<style>
*{
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 16px;
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
p{
	text-align: center;
	margin: 20px;
}
#first-btn{
	margin-left: 42%;
}
#btn{
	margin-left: 45%;
}
#btns{
	margin-left: 37%;
}
button{
	letter-spacing: .5px;
	padding:1px;
	margin-right:9px;
}
button:hover{
	cursor: pointer;
}
</style>
<title></title>
</head>
<body>
	<header><h3>배송조회</h3></header>
	<form action="">
	<main>
		<p>현재 고객님의 소중한 상품이 ‘배송준비중’ 입니다.</p>
		<button id="btn" type="button" onclick="window.close()">확인</button>
	</main>
	</form>
</body>
</html>