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
		<div><span>제목</span>
		<input id="title" value="공지사항입니다" type="text"></div>
		<hr style="border: solid 1px;">
		<div id="first-div">
		<div>아이디 &nbsp;<input id="" value="admin1" type="text" readonly style="background-color:transparent;"></div>
		<div>작성일 &nbsp;<input id="" value="2021-8-20" type="text" readonly style="background-color:transparent;"></div>
		<div>조회수<input id="" value="102" type="text" readonly style="background-color:transparent;"></div>
	    </div>
		<hr style="border: solid 1px;">
		<div id="second-div"><textarea id="content" placeholder="공지사항입니다" onkeydown="resize(this)" onkeyup="resize(this)"></textarea><br></div>
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button onclick="javascript:btn()" type="submit">저장</button>
			<button type="button" onclick="window.open('noticeAlert','','width=600, height=200')">삭제</button>
		</div>
	</form>
	<script src="js/admin/notice/aNoticeV.js"></script>
</body>
</html>