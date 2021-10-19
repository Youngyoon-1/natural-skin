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
    .searchIdDiv{
    	display: flex;
    	flex-direction: column;
    	margin:45px 25% 0px 25%;
    	
    }
    .searchIdDiv *{
    	margin-bottom: 15px;
    }
    
    input{
    	margin-left:10px;
    }
    .p{
    	font-size:20px;
    	margin-bottom:45px;
    }
    button{
    	margin-bottom:50px;
    }
    span, label{
    font-size:18px;
    }
    .input{
    	width:60%;
    	height:30px;
    }
   #radioDiv > span{
    	margin-right:3%;
    }
     #radioDiv input{
     	margin-right: 10px;
     }
      #radioDiv {
      	margin-bottom: 35px;
      }
      button{
      	width:70px;
      	height:25px;
      }
  </style>
</head>
<body>
<c:import url="../../header.jsp"/>
  <img id="login" src="images/login-top.png" width="100%">
    <h1>아이디 찾기</h1>
    <hr>
    <form action="searchId" method="post">
	    <div class="searchIdDiv">
	    	<p class="p">가입하신 방법에 따라 아이디 찾기가 가능합니다.<br>
	    	이메일 또는 휴대폰 번호를 입력해주세요.</p>
	    	<div id="radioDiv">
	    		<span>찾을수단</span><input type="radio" name="findBy" value="member_email" onclick="showMailInput();" checked><label>이메일</label><input type="radio" name="findBy" value="member_phone" onclick="showPhoneInput();"${(memberDto.findBy=='member_phone')?'checked':''}><label>휴대폰번호</label>
	    	</div>
	    	<div>
	    		<label>이름</label><input name="member_name" class="input" type="text">
	    	</div>
	    	<div id="emailDiv" style="display:${(memberDto.findBy == 'member_phone')?'none':''}" >
	    		<label>이메일</label><input name="member_email" class="input" type="email">
	    	</div>
	    	<div id="phoneDiv" style="display:${(memberDto.findBy != 'member_phone')?'none':''}">
	    		<label>휴대폰번호</label><input name="member_phone"class="input" type="tel">
	    	</div>
	    </div>
	    
	    <button>찾기</button>
    </form>
    <c:import url="../../footer.jsp"/>
  <script>
	  let emailDiv = document.getElementById("emailDiv");
	  let phoneDiv = document.getElementById("phoneDiv");
	  function showMailInput(){
		  emailDiv.style.display = "inline-block";
		  phoneDiv.style.display = "none";
	  }
	  function showPhoneInput(){
		  emailDiv.style.display = "none"; 
		  phoneDiv.style.display = "inline-block";
	  }
	  <c:if test="${msg != null}">
	  	alert("${msg}");
	  </c:if>
  </script>
 
</body>
</html>