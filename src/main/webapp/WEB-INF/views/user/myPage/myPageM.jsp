<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/user/myPage/myPageM.css">

</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/myPage.png"/>
	<h1>회원정보</h1>
	<hr style="border: solid 2px;">
	<form action="">
		<div id="first-div">
				<label>아이디</label><br>
				<input value="yoon" readonly style="border:none">
		</div><br>
		<label>비밀번호</label><br>
		<input type="password"><br>
		<label>비밀번호 확인</label><br>
		<input type="password"><br>
		<label>이름</label><br>
		<input type="text"><br>
		<label>생년월일</label><br>
		<div id="birth">
			<input type="text">
			<input type="text">
			<input type="text">
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
		<input type="text"><br>
		<label>이메일</label><br>
		<input type="email"><br>
		<div id="btns">
			<button type="button" onclick="location.href='myPageMain'">마이페이지</button>
			<button type="button">회원정보 수정</button>
			<button type="button" onclick="window.open('quitAlert','','width=600, height=200');">회원탈퇴</button>
		</div>
	</form>

	<c:import url="../../footer.jsp"/>
</body>
</html>