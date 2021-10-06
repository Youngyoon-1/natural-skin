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
    text-align: center;
}
hr{
	margin-left: 40px;
    margin-right: 40px;
}
textarea {
	width: 70%;
	text-align: left;
}
.agree {
	padding-top:30px;
	padding-left: 15%;
	float: left;
	font-size: 24px;
}
.agree input {
	zoom: 1.5;
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
button:hover{
	cursor: pointer;
}
.userInfo{
	padding-left: 15%;
	margin-top: 30px;
	text-align:left;
}
label, input, select{
	margin: 3px;
}
.userInfo input, .userInfo select{
	width:80%;
	height: 31px;
	border:none;
	padding-left: 3px;
}
.userInfo input:not(#id), .userInfo select{
	width:80%;
	height: 31px;
	border:none;
	background-color: #f1f1f1;
	padding-left: 3px;
}
#birth{
	display: flex;
	width:80.5%;
}
.btn{
	margin-left: 39%;
	padding-left:7px;
	padding-right:7px;
}

	
</style>
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
			<input type="number" placeholder="년(4자)">
			<input type="number" placeholder="월(2자)">
			<input type="number" placeholder="일(2자)">
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
	<br><br>
	<c:import url="../../footer.jsp"/>
</body>
</html>