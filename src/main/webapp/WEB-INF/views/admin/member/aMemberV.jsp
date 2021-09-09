<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/member/aMemberV.css">
<script type="text/javascript"></script>
</head>
<body>
	<h2>회원정보상세</h2>
	<hr style="border: solid 1px;">
	<form action="#">
		<div id="first-div">
			<label>아이디</label><br>
			<input id="id" value="yoon" readonly style="border:none">
		</div>
		<button id="orderBtn" type="button">최근주문내역보기</button><br>
		<label>비밀번호</label><br>
		<input value="abc123" type="text"><br>
		<label>이름</label><br>
		<input value="홍길동" type="text"><br>
		<label>생년월일</label><br>
		<div id="birth">
			<input value="1994" type="text">
			<input value="00" type="text">
			<input value="00" type="text">
		</div>
		<label>성별</label><br>
		<select>
			<option>선택안함</option>
			<option>여자</option>
			<option>남자</option>
		</select><br>
		<label>주소</label><button id="search-address" type="button">주소찾기</button><br>
		<input value="서울시 중랑구 상봉동 000-00" type="text"><br>
		<label>상세주소</label><br>
		<input value="ooo빌라 101호" type="text"><br>
		<label>전화번호</label><br>
		<input value="010-0000-0000" type="text"><br>
		<label>이메일</label><br>
		<input value="xxxxx@gmail.com" type="email"><br>
		<hr class="second-hr" style="border: solid 1px;">
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button type="submit">수정</button>
			<button type="button" onclick="window.open('aMemberAlert','','width=600, height=200')">회원탈퇴</button>
		</div>
	</form>
</body>
</html>