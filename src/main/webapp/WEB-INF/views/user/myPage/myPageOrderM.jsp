<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/user/myPage/myPageOrderM.css">
</head>
<body>
	<header><h3>배송정보변경</h3></header>
	<form action="">
		<label>받는사람</label><br>
		<input type="text"><br>
		<label>주소</label><button id="search-address">주소찾기</button><br>
		<input type="text"><br>
		<label>상세주소</label><br>
		<input type="text"><br>
		<label>전화번호</label><br>
		<input type="text"><br>
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button type="button">수정</button>
		</div>		
	</form>
</body>
</html>