<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/notice/aNoticeV.css">
<script type="text/javascript"></script>
</head>
<body>
	<h2>공지사항 상세보기</h2>
	<hr style="border: solid 2px;">
	<form action="">
		<label id="title-label">제목</label>
		<input id="title" value="공지사항입니다" type="text">
		<hr style="border: solid 1px;">
		<label>아이디</label><span>admin1</span>
		<label>작성일</label><span>2021-09-09</span>
		<label>조회수</label><span>100</span>
		<hr style="border: solid 1px;">
		<div id="second-div"><textarea id="content" placeholder="공지사항입니다" onkeydown="resize(this)" onkeyup="resize(this)"></textarea><br></div>
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button onclick="javascript:btn()" type="submit">수정</button>
			<button type="button" onclick="window.open('noticeAlert','','width=600, height=200')">삭제</button>
		</div>
	</form>
	<script src="js/admin/notice/aNoticeV.js"></script>
</body>
</html>