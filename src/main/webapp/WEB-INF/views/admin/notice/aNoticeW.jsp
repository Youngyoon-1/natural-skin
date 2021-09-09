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
	<form action="">
		<label id="title_label">제목</label>
		<input id="" value="공지사항입니다" type="text">
		<hr style="border: solid 1px;">	
		<textarea id="content" onkeydown="resize(this)" onkeyup="resize(this)">공지사항입니다.
		</textarea>
		<div id="btns">
			<button type="button" onclick="window.close();">취소</button>
			<button onclick="javascript:btn()" type="submit">글쓰기</button>
		</div>
	</form>
	<script src="js/admin/notice/aNoticeW.js"></script>
</body>
</html>