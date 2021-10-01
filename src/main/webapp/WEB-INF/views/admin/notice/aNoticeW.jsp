<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/notice/aNoticeW.css">
<script type="text/javascript"></script>
</head>
<body>
	<h2>공지사항 작성하기</h2>
	<hr style="border: solid 2px;">
	<form action="aNoticeWrite">
		<label id="title_label">제목</label>
		<input id="" name="notice_board_title" value="" type="text">
		<hr style="border: solid 1px;">	
		<textarea id="content" name="notice_board_content"></textarea>
		<hr style="border: solid 1px;">
		<div id="btns">
			<button type="button" onclick="window.close();">취소</button>
			<button type="submit">글쓰기</button>
		</div>
	</form>
	<script src="js/admin/notice/aNoticeW.js"></script>
</body>
</html>