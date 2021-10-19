<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/member/qna/qnaAlert.css">
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
div{
	text-align: center;
	margin: 30px;
	
}
</style>
<script type="text/javascript"></script>
</head>
<body>
	<header><h3>댓글수정</h3></header>
	<main>
		<form action="modifyReply" method="post">
		<input name="review_reply_id" value="${param.review_reply_id}" type="hidden">
		<input name="review_board_id" value="${reply.review_board_id}" type="hidden">
		<div><textarea cols="50" rows="5" name="review_reply_content">${reply.review_reply_content}</textarea></div>
		<button id="first-btn" type="button" onclick="window.close()">취소</button>
		<button>수정</button>
		</form>
	</main>
	<script> 
	</script>
</body>
</html>