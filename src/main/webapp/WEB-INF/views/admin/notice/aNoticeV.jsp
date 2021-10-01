<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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
	<form action="aNoticeModify?notice_board_id=${notice.notice_board_id}" method="post">
		<label id="title-label">제목</label>
		<input id="title" name="notice_board_title" value="${notice.notice_board_title}" type="text">
		<hr style="border: solid 1px;">
		<label>아이디</label><span>${notice.member_id}</span>
		<label>작성일</label>
		<span>
			<fmt:formatDate value="${notice.notice_board_date}" pattern="yyyy-MM-dd"/>
		</span>
		<label>조회수</label><span>${notice.notice_board_hit}</span>
		<hr style="border: solid 1px;">
		<div id="second-div">
			<textarea name="notice_board_content" id="content">${notice.notice_board_content}</textarea><br>
		</div>
		<hr style="border: solid 1px;">
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button type="submit">수정</button>
			<button type="button" onclick="window.open('noticeAlert?notice_board_id=${notice.notice_board_id}','','width=600, height=200')">삭제</button>
		</div>
	</form>
	<script src="js/admin/notice/aNoticeV.js"></script>
</body>
</html>