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
	
	<select id = "productmanage">
		<option value = "productname">상품명</option>
	</select>
		<input type = "text" id = "searchbar" value = ""/>
		<img id="search-logo" src="images/search.png" style="border: solid 0.5px;">
	
	<hr style="border: solid 2px;">
	<table >
	<tr id="first-tr">
		<th>번호</th>
		<th>이미지</th>
		<th>상품명</th>
		<th>등록일</th>
	</tr>
	<tr >
		<td>1</td>
		<td><img src="images/product1.png" alt="업로드된 이미지" /></td>
		<td ><a href="productV">product</a></td>
		<td>2020-09-23</td>
	</tr>
	<tr >
		<td>2</td>
		<td><img src="images/product1.png" alt="업로드된 이미지" /></td>
		<td>product1</td>
		<td>2020-09-23</td>
	</tr>
	</table>
	<button  type="button" class = "main-logo" onClick="location.href='aMain'" ><img src="/images/main.png" width = "90px" height="35px"></button>
	<button type="button" class = "save-logo" onClick="location.href='productW'"><img src="/images/save.png" width = "90px" height="35px"></button>
</body>
</html>