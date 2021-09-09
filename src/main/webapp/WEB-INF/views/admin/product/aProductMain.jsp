<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리</title>
<link rel="stylesheet" href="/css/admin/product/productMain.css">
<script type="text/javascript"></script>
</head>
<body>
<c:import url="../../header.jsp"/>
	<h1>관리자페이지</h1>
	<hr style="border: solid 2px;">
	<h2> 상품관리 </h2>
	
	<div id="search-bar">
		<select id="select-box">
			<option>상품명</option>
		</select>
		<input id="input" type="text">
		<img id="search-logo" src="images/search.png" style="border: solid 0.5px;">
	</div>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>이미지</th>
		<th>상품명</th>
		<th>등록일</th>
	</tr>
	<tr onclick="window.open('aProductV','child_window','width=780, height=700')">
		<td>1</td>
		<td><img src="images/product1.png" alt="업로드된 이미지" /></td>
		<td >product</td>
		<td>2020-09-23</td>
	</tr>
	<tr onclick="window.open('aProductV','child_window','width=780, height=700')">
		<td>2</td>
		<td><img src="images/product1.png" alt="업로드된 이미지" /></td>
		<td>product1</td>
		<td>2020-09-23</td>
	</tr>
	</table>
	<button id="button1" type="button" onClick="location.href='aMain'">메인으로</button>
	<button id="button2" type="button" onClick="window.open('aProductW','','width=650, height=650')">상품등록</button>
</body>
</html>