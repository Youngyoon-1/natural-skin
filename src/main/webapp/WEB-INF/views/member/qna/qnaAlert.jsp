<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/user/qna/qnaAlert.css">
<style>
@charset "UTF-8";
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
button{
	letter-spacing: .5px;
	padding:1px;
	margin-right:9px;
}
button:hover{
	cursor: pointer;
}
</style>
<script type="text/javascript"></script>
</head>
<body>
	<header><h3>문의글삭제</h3></header>
	<main>
		<p>해당 게시물을 삭제하시겠습니까?
		</p>
		<button id="first-btn" type="button" onclick="window.close()">취소</button>
		<button onclick="javascript:btn()" type="">확인</button>
	</main>
	<script src="js/user/qna/qnaAlert.js"></script>
</body>
</html>