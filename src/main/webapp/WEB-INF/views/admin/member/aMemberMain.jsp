<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/member/aMemberMain.css">
<script type="text/javascript"></script>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<h1>관리자페이지</h1>
	<hr style="border: solid 2px;">
	<h2>회원리스트</h2>
	<div id="search-bar">
		<select id="select-box" onchange="roleClick()">
			<option>아이디</option>
			<option>이름</option>
			<option>분류</option>
		</select>
		<input id="input" type="text">
		<select id="role" onchange="">
			<option>일반회원</option>
			<option>관리자</option>
		</select>
		<img id="search-logo" src="images/search.png" style="border: solid 0.5px;">
	</div>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>분류</th>
		<th>아이디</th>
		<th>이름</th>
		<th>가입일</th>
	</tr>
	<tr onclick="window.open('aMemberV','child_window','width=650, height=700')">
		<td>1</td>
		<td>일반회원</td>
		<td>abcdfd</td>
		<td>홍길동</td>
		<td>2020-09-23</td>
	</tr>
	<tr onclick="window.open('aMemberV','child_window','width=650, height=700')">
		<td>2</td>
		<td>일반회원</td>
		<td>safdfd</td>
		<td>홍길동</td>
		<td>2020-09-23</td>
	</tr>
		<tr onclick="window.open('aMemberV','child_window','width=650, height=700')">
		<td>3</td>
		<td>일반회원</td>
		<td>safdfd</td>
		<td>홍길동</td>
		<td>2020-09-23</td>
	</tr>
	</table>
	<button type="button" onClick="location.href='aMain'">메인으로</button>
	<script src="js/admin/member/aMemberMain.js"></script>
</body>
</html>