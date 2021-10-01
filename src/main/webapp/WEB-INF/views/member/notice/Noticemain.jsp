<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/member/notice/Noticemain.css">
<script type="text/javascript"></script>
</head>
<body>
	<c:import url="../../Memberheader.jsp"/>
	<img id="noticemain" src="images/notice.png">
	<h2>공지사항</h2>
	
	<hr class="second-hr" style="border: solid 1px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>제목</th>
		<th>아이디</th>
		<th>작성일</th>
	</tr>
	<%--  <c:forEach var="dto" items="${ list }" >--%>
	<tr onclick="location.href='noticeV'">	
		<td>1</td>
		<td>공지사항</td>
		<td>관리자</td>
		<td>2021/09/29</td>
	</tr>
	<%--  </c:forEach>--%>

	</table>

	<div id="search-bar">
		<select id="select-box" onchange="roleClick()">
			<option>제목</option>
		</select>
		<input id="input" type="text">
		<img id="search-logo" src="images/search.png" style="border: solid 0.5px;">
	</div>
	<script src="js/member/notice/Noticemain.js"></script>
<c:import url="../../footer.jsp"/>
	
</body>
</html>