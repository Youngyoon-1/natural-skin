<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="com.naturalskin.dto.MemberDto" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="java.util.List"%>

<%
		List<MemberDto> list = (List<MemberDto>)request.getAttribute("list");
		System.out.println( "list count:" + list.size() );
		String list_page = (String)request.getAttribute("page");
		System.out.println( "list_page:" + list_page );
		String page1_active = "";
		String page2_active = "";
		String page3_active = "";
		if(list_page.equals("1")) 
			page1_active = "active";
		if(list_page.equals("2")) 
			page2_active = "active";
		if(list_page.equals("3")) 
			page3_active = "active";
	%>
	    

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
	<c:forEach var="dto" items="${ list }" >
	<tr onclick="window.open('aMemberV','child_window','width=650, height=700')">
		<td>${dto.member_idx }</td>
		<td>${dto.member_role }</td>
		<td>${dto.member_id }</td>
		<td>${dto.member_name }</td>
		<td>${dto.member_date }</td>
	</tr>
	</c:forEach>
	</table>
	<button type="button" onClick="location.href='aMain'">메인으로</button>
	<script src="js/admin/member/aMemberMain.js"></script>
		<nav aria-label="...">
	  	<ul class="pagination">
		    <li class="page-item disabled">
		      	<span class="page-link">Previous</span>
		    </li>
		    <li class="page-item <%= page1_active %>">
		    	<a class="page-link"  href="list?page=1">1</a>
		    </li>
		    <li class="page-item <%= page2_active %>">
		      	<a class="page-link" href="list?page=2">2</a>
		    </li>
		    <li class="page-item <%= page3_active %>">
		    	<a class="page-link" href="list?page=3">3</a>
		    </li>
		    <li class="page-item">
		      	<a class="page-link" href="#">Next</a>
		    </li>
	  	</ul>
	</nav>
</body>
</html>