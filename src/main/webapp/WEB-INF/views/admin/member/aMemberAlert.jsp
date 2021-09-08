<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/member/aMemberAlert.css">
</head>
<body>
	<header><h3>회원탈퇴</h3></header>
	<main>
		<p>정말 탈퇴하시겠습니까?<br>
		(탈퇴시 모든 게시물과 댓글이 삭제되오니 유의바랍니다.)
		</p>
		<button id="first-btn" type="button" onclick="window.close()">취소</button>
		<button type="button" onclick="alert('회원탈퇴 되었습니다.'); location.href='aMemberDelete';">확인</button>
	</main>
</body>
</html>