<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>로그인</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      text-align: center;
    }
    .login-text2 {
      font-size: 13px;
      color: #999;
      margin: 5px 0 45px;
    }
    .login-box {
    background-color:#f6f6f6;
      border: 1px solid #ebebeb;
      width: 700px;
      height: 250px;
      margin: 0 auto;
      padding: 40px;
    }
    .login-form {
      display: flex;
      flex-flow: row nowrap;
      justify-content: center;
      padding: 30px 0 0 0;
      margin-right:150px;
    }
    .login-input div {
    vertical-align: middle;
      width: 700px;
      height: 100px;
      margin:3px;
      margin-left:150px;
    }
    .login-id {
      padding-right: 10px;
      text-align: right;
      font: bold 12px dotum;
      color: #555;
      vertical-align: middle;
      line-height: 24px;
    }
    .box {
    
      width: 500px;
      height: 70px;
      border: 1px solid #cdcdcd;
      background-color: #f6f6f6;
    }
    .box:focus {
      outline: none;
    }
    .login-img {
    width: 700px;
      height: 23px;
      padding-left: 15px;
    }
    #login-submit{
    width:130px;
    height:50px;
    }
    #join-submit{
    margin-top:50px;
    width:300px;
    }

    #login{
    width:100%;
    }
    #id-check{
    display: flex;
    justify-content: space-between;
   	padding:10px;
   	margin-left:240px;
   	width: 507px;
    }
    h1{
    	font-size:40px;
    	margin-top: 60px;
    	margin-bottom: 50px;
    }
    hr{
    	margin-left: 40px;
    	margin-right: 40px;
    	 height: 2px;
    	 background-color: #e9e9e9;
    }
    input{
    	font-size: 20px;
    	padding-left: 5px;
    }
    .login {
     	display:flex;
     	flex-direction: column;
     	margin:45px 25% 45px 25%;
    }
    .login *{
    	margin-bottom: 15px;
    }
    .login input:not(#checkBox), button{
    	height: 35px;
    }
    #flexBox2{
    	display: flex;
    	justify-content: space-between;
    }
    input{
    	text-align: left;
    }
    input::placeholder {
	  color: #e9e9e9;  	
	}
    button:hover{
    	cursor: pointer;
    }
    #joinBox{
		background-color:   #e9e9e9;  	
		margin-top:25px;
		padding-top: 25px;
		padding-bottom: 15px;
    }
    #joinBtn{
    	width:100px;
    }
  </style>
</head>
<body>
<c:import url="../../header.jsp"/>
  <img id="login" src="images/login-top.png">
    <h1>로그인</h1>
    <hr>
    <form action="loginDo" method="post">
	    <div class="login">
		    <input name="member_id" value="${cookie.savedMemberId.value}" type="text" placeholder="Id">
		    <input name="member_pw" type="password" placeholder="Password">
		    <div id="flexBox2">
		    	<div><input id="checkBox" name="isChecked" type="checkbox" value="checked" ${(cookie.savedMemberId.value == null)?'':'checked'}>아이디 저장</div>
		    	<div><a href="loginSearch">아이디</a>/<a href="loginSearch2">비밀번호 찾기</a></div>
		    </div>
		    <button>로그인</button>
		    <div id="joinBox">
		    	<p>회원이 아니신가요?<br>고객님만을 위한 다양한 혜택이 준비되어 있습니다.</p>
		    	<button id="joinBtn" type="button" onclick="location.href='join'">회원가입</button>
		    </div>
	    </div>
    </form>
    <c:import url="../../footer.jsp"/>
  <script>
  	<c:if test="${msg != null}">
  		alert('${msg}');
  	</c:if>
  	<c:if test="${showMemberId != null}">
  		window.open('searchIdAlert?member_id=${memberDto.member_id}','','width=600, height=200');
	</c:if>
	/* <c:if test="${showMemberPw != null}">
		window.open('searchPwAlert','','width=600, height=200');
		window.open('searchPwAlert?member_id=${memberDto.member_id}','','width=600, height=200');
	</c:if> */
  </script>
</body>
</html>