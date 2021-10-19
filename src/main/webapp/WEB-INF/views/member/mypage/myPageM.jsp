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
.pwAlert{
	color:red;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/myPage.png"/>
	<h1>회원정보</h1>
	<hr style="border: solid 2px;">
	<form action="myPageModifyDo" method="post" onsubmit="return checkPws()">
		<input value="${member.member_id}" name="member_id" type="hidden">
		<div id="first-div">
				<label>아이디</label><br>&ensp;<span>${member.member_id}</span>
		</div><br>
		<label>비밀번호</label><br>
		<input id="pw" name="member_pw" type="password" onblur="checkPw1(this.value)"><br>
		<p id="pwAlert1"></p>
		<label>비밀번호 확인</label><br>
		<input id="checkPw" type="password" onblur="checkPw2(this.value)"><br>
		<p id="pwAlert2"></p>
		<label>이름</label><br>
		<input name="member_name" value="${member.member_name}" type="text"><br>
		<label>생년월일</label><br>
		<div id="birth">
			<input name="member_year" value="${member.member_year}" type="number">
			<input name="member_month" value="${member.member_month}" type="number">
			<input name="member_day" value="${member.member_day}" type="number">
		</div>
		<label>성별</label><br>
		<select name="member_gender">
			<option ${(member.member_gender == 'man')?'selected':''} value="man">남자</option>
			<option ${(member.member_gender == 'woman')?'selected':''} value="woman">여자</option>
			<option ${(member.member_gender == null || member.member_gender == '')?'selected':''}>선택안함</option>
		</select><br>
		<label>주소</label><button type="button" onclick="searchAdd()" id="search-address">주소찾기</button><br>
		<input name="member_address" id="member_address" value="${member.member_address}" type="text"><br>
		<label>상세주소</label><br>
		<input name="member_address_detail" value="${member.member_address_detail}" type="text"><br>
		<label>전화번호</label><br>
		<input name="member_phone" value="${member.member_phone}" type="tel"><br>
		<label>이메일</label><br>
		<input name="member_email" value="${member.member_email}" type="email"><br>
		<div id="btns">
			<button type="button" onclick="location.href='myPageMain'">마이페이지</button>
			<button>회원정보 수정</button>
			<button type="button" onclick="window.open('quitAlert?member_id=${member.member_id}','','width=600, height=200');">회원탈퇴</button>
		</div>
	</form><br><br>
	<c:import url="../../footer.jsp"/>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		let pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
		let pwAlert1 = document.getElementById("pwAlert1");
		let pwAlert2 = document.getElementById("pwAlert2");
		let pw = document.getElementById("pw");
		let checkPw = document.getElementById("checkPw");
		let flagObj = {
				flag1: false,
				flag2: false
		}
		function checkPws(){
			let trueCount = 0;
			for(const i in flagObj){
				if(flagObj[i]){
					trueCount++;
				}
			}
			if(trueCount !== 2){
				alert("비밀번호를 확인해주세요.");
				return false;
			}
		}
		function checkPw1(value){
			checkPw.value = "";
			flagObj.flag2 = false;
			if(!pwPattern.test(value)){
				flagObj.flag1 = false;
				pwAlert1.innerText = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
				pwAlert1.style.color="red";
				pwAlert1.style.fontSize = "13px";
			}else{
				flagObj.flag1 = true;
				pwAlert1.innerText = "";
			}			
		}
		function checkPw2(value){
			if(value === pw.value){
				flagObj.flag2 = true;
				pwAlert2.innerText = "비밀번호가 일치합니다.";
				pwAlert2.style.color = "green";
				pwAlert2.style.fontSize = "13px";
			}else{
				flagObj.flag2 = false;
				pwAlert2.innerText = "비밀번호가 일치하지 않습니다.";
				pwAlert2.style.color = "red";
				pwAlert2.style.fontSize = "13px";
			}
		}
		function searchAdd(){
			new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById("member_address").value = addr;
	            }
	        }).open();
		}
	</script>
</body>
</html>