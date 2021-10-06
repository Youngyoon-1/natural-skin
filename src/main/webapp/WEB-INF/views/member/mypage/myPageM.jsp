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
<style>
*{
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 15px;
    text-align: left;
}
.mainImg {
	width: 100%;
}

h1{
    margin: 50px;
    font-size: 50px;
    text-align:center;
}
hr{
	margin-left: 40px;
    margin-right: 40px;
}
form{
	margin-left: 40px;
	margin-top: 15px;
	text-align:left;
}
label, input, select{
	margin: 3px;
}
input, select{
	width:90%;
	height: 31px;
	border:none;
	padding-left: 3px;
}
input:not(#id), select{
	width:90%;
	height: 31px;
	border:none;
	background-color: #f1f1f1;
	padding-left: 3px;
}
#birth{
	display: flex;
	width:90.5%;
}
button{
	letter-spacing: .5px;
	padding: 2px;
	margin: 10px;
}
#btns{
	display: flex;
	justify-content: center;
	margin-top: 6px;
}
#first-div{
	display: inline-block;
	line-height: 20px;
}
#search-address{
	margin: 0;
	font-size: 13px;
}
button:hover{
	cursor: pointer;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/myPage.png"/>
	<h1>회원정보</h1>
	<hr style="border: solid 2px;">
	<form action="">
		<div id="first-div">
				<label>아이디</label><br>&ensp;<span>son</span>
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
	</form><br><br>

	<c:import url="../../footer.jsp"/>
</body>
</html>