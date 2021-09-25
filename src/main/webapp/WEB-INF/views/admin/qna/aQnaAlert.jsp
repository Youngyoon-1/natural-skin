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
	<header><h3>문의글삭제</h3></header>
	<main>
		<p>해당 게시물을 삭제하시겠습니까?</p>
		<button id="first-btn" type="button" onclick="window.close()">취소</button>
		<button type="button" onclick="location.href='aQnaDelete?qna_board_id=${param.qna_board_id}&qna_board_reply_state=${param.qna_board_reply_state}&qna_board_group_no=${param.qna_board_group_no}'">확인</button>
	</main>
</body>
</html>