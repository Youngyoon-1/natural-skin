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
		<div id="first-div"	><span>제목</span>
		<input id="" value="공지사항입니다" type="text"></div>
		<hr style="border: solid 1px;">	
		<div id="second-div"><textarea id="content" placeholder="공지사항입니다" onkeydown="resize(this)" onkeyup="resize(this)"></textarea><br></div>
		<div id="btns">
			<button type="button" onclick="history.back();">취소</button>
			<button onclick="javascript:btn()" type="submit">글쓰기</button>
			
		</div>
	</form>
	<script src="js/admin/notice/aNoticeW.js"></script>
</body>
</html>