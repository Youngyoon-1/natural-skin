<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/order/aOrderMain.css">
<script type="text/javascript"></script>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<h1>관리자페이지</h1>
	<hr style="border: solid 2px;">
	<h2>주문목록</h2>
	<div id="search-bar">
		<select id="select-box">
			<option>아이디</option>
			<option>이름</option>
			<option>주문번호</option>
		</select>
		<input id="input" type="text">
		<img id="search-logo" src="images/search.png" style="border: solid 0.5px;">
	</div>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>아이디</th>
		<th>이름</th>
		<th>주문번호</th>
		<th>주문일</th>
	</tr>
	<tr onclick="window.open('aOrderV','child_window','width=780, height=520')">
		<td>2</td>
		<td>abcdfk</td>
		<td>손흥민</td>
		<td>202009071</td>
		<td>2020-09-23</td>
	</tr>
	<tr onclick="window.open('aOrderV','child_window','width=780, height=520')">
		<td>1</td>
		<td>asdfafg</td>
		<td>손흥민</td>
		<td>202009052</td>
		<td>2020-09-23</td>
	</tr>
	</table>
	<button type="button" onClick="location.href='aMain'">메인으로</button>
	<script src="js/admin/member/"></script>
</body>
</html>