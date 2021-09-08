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
	<tr onclick="window.open('aNoticeV','child_window','width=650, height=700')">
		<td>1</td>
		<td>공지사항1입니다</td>
		<td>admin1</td>
		<td>2020-09-23</td>
	</tr>
	<tr onclick="window.open('aNoticeV','child_window','width=650, height=700')">
		<td>2</td>
		<td>공지사항2입니다</td>
		<td>admin2</td>
		<td>2020-09-23</td>
	
	</tr>
	</table>
	<button id="button1" type="button" onClick="location.href='aMain'">메인으로</button>
	<button id="button2" type="button" onClick="location.href='aNoticeW'">글쓰기</button>
	<script src="js/admin/notice/aNoticeMain.js"></script>
</body>
</html>