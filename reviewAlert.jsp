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
<script type="text/javascript"></script>
</head>
<body>
	<header><h3>문의글삭제</h3></header>
	<main>
		<p>해당 게시물을 삭제하시겠습니까?<br>
		(해당 게시물의 모든 리뷰도 삭제되오니 유의하세요.)
		</p>
		<button id="first-btn" type="button" onclick="window.close()">취소</button>
		<button onclick="javascript:btn()" type="button">확인</button>
	</main>
	<script> function btn(){ 
		alert('해당 게시물이 삭제되었습니다.'); 
		window.close()} </script>
</body>
</html>