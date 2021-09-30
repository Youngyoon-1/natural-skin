<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/member/join.css">

</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/join.png"/>
	<h1>회원가입</h1>
	<hr style="border: solid 2px;">
	<form class="userInfo" action="">
		<label>아이디</label><br>
		<input type="text"><br>
		<label>비밀번호</label><br>
		<input type="password"><br>
		<label>비밀번호 확인</label><br>
		<input type="password"><br>
		<label>이름</label><br>
		<input type="text"><br>
		<label>생년월일</label><br>
		<div id="birth">
			<input type="text" placeholder="년(4자)">
			<input type="text" placeholder="월(2자)">
			<input type="text" placeholder="일(2자)">
		</div>
		<label>성별</label><br>
		<select>
			<option>남자</option>
			<option>여자</option>
			<option>선택안함</option>
		</select><br>
		<label>주소</label><button id="search-address">주소찾기</button><br>
		<input type="text"><br>
		<label>상세주소</label><br>
		<input type="text"><br>
		<label>전화번호</label><br>
		<input type="text" placeholder="xxx-xxxx-xxxx"><br>
		<label>이메일</label><br>
		<input type="email" placeholder="xxxxxx@gmail.com"><br>
		
		<button type="button" class="btn">가입하기</button>

	</form>
</body>
</html>