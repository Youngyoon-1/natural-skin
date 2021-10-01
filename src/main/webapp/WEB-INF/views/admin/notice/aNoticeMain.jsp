<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/notice/aNoticeMain.css">
<script type="text/javascript"></script>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<h1>관리자페이지</h1>
	<hr style="border: solid 2px;">
	<h2>공지사항관리</h2>
	<div id="search-bar">
		<select id="select-box" onchange="roleClick()">
			<option>아이디</option>
			<option>제목</option>
		</select>
		<input id="input" type="text">
		<img id="search-logo" src="images/search.png" style="border: solid 0.5px;">
	</div>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>제목</th>
		<th>아이디</th>
		<th>작성일</th>
	</tr>
	<c:forEach var="dto" items="${ list }" >
	<tr onclick="window.open('aNoticeV','child_window','width=650, height=500')">	
		<td>${dto.notice_board_id }</td>
		<td>${dto.notice_board_title }</td>
		<td>${dto.member_id} </td>
		<td>${dto.notice_board_date} </td>
	</tr>
	</c:forEach>

	</table>
	<button id="button1" type="button" onClick="location.href='aMain'">메인으로</button>
	<button id="button2" type="button" onClick="window.open('aNoticeW','','width=650, height=500')">글쓰기</button>
	<script src="js/admin/notice/aNoticeMain.js"></script>
</body>
</html>