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
	<form class="userInfo" action="joinDo" method="post" onsubmit="return checkAll()">
		<label>아이디</label><br>
		<input id="memberId" name="member_id" type="text" onblur="checkId()"><br>
		<span id="notice1"></span><br>
		<label>비밀번호</label><br>
		<input id="memberPw" name="member_pw" type="password" onblur="checkPw()"><br>
		<span id="notice2"></span><br>
		<label>비밀번호 확인</label><br>
		<input id="memberPw2" type="password" onblur="checkPw2()"><br>
		<span id="notice3"></span><br>
		<label>이름</label><br>
		<input id="memberName" name="member_name" onblur="checkName()" type="text"><br>
		<span id="notice4"></span><br>
		<label>생년월일</label><br>
		<div id="birth">
			<input name="member_year" value=0000 type="number" placeholder="년(4자)">
			<input name="member_month" value=00 type="number" placeholder="월(2자)">
			<input name="member_day" value=00 type="number" placeholder="일(2자)">
		</div>
		<span></span><br>
		<label>성별</label><br>
		<select name="member_gender">
			<option value="man">남자</option>
			<option value="woman">여자</option>
			<option selected value="">선택안함</option>
		</select><br>
		<label>주소</label><button type="button" id="search-address" onclick="searchAddr()">주소찾기</button><br>
		<input name="member_address" id="memberAddress" type="text"><br>
		<label>상세주소</label><br>
		<input name="member_address_detail" type="text"><br>
		<span></span><br>
		<label>전화번호</label><br>
		<input name="member_phone" type="tel" placeholder="xxx-xxxx-xxxx"><br>
		<span></span><br>
		<label>이메일</label><br>
		<input name="member_email" type="email" placeholder="xxxxxx@gmail.com"><br>
		<button class="btn">가입하기</button>
	</form>
	<br><br>
	<c:import url="../../footer.jsp"/>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		let memberId = document.getElementById("memberId");
		let memberPw = document.getElementById("memberPw");
		let memberPw2 = document.getElementById("memberPw2");
		let memberName = document.getElementById("memberName");
		let address = document.getElementById("memberAddress");
		let notice1 = document.getElementById("notice1");
		let notice2 = document.getElementById("notice2");
		let notice3 = document.getElementById("notice3");
		let notice4 = document.getElementById("notice4");
		let idPattern = /[a-zA-Z0-9_-]{5,20}/;
		let pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
		
		let flagObj = {
			idFlag: false,
			pwFlag: false,
			pw2Flag: false,
			nameFlag: false,
		};
		function checkId(){
			if(!idPattern.test(memberId.value)){
				flagObj.idFlag = false;
				notice1.innerText = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
				notice1.style.color="red";
				notice1.style.fontSize = "13px";
				return;
			}
			
			fetch("checkId?member_id="+memberId.value)
				.then(res => res.json())
				.then(res => {
					if(res === 0){
						flagObj.idFlag = false;
						notice1.innerText = "이미 사용중인 아이디입니다.";
						notice1.style.color="red";
						notice1.style.fontSize = "13px";
					}else{
						flagObj.idFlag = true;
						notice1.innerText = "멋진 아이디네요!";
						notice1.style.color="green";
						notice1.style.fontSize = "13px";
					}
				})
		}
		function checkPw(){
			memberPw2.value = "";
			flagObj.pw2Flag = false;
			if(!pwPattern.test(memberPw.value)){
				flagObj.pwFlag = false;
				notice2.innerText = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
				notice2.style.color="red";
				notice2.style.fontSize = "13px";
				notice3.innerText = "";
			}else{
				flagObj.pwFlag = true;
				notice2.innerText = "";
				notice3.innerText = "";
			}
			
		}
		function checkPw2(){
			if(memberPw.value !== memberPw2.value){
				flagObj.pw2Flag = false;
				notice3.innerText = "비밀번호가 일치하지 않습니다.";
				notice3.style.color="red";
				notice3.style.fontSize = "13px";
			}else if(memberPw.value === ''){
				flagObj.pw2Flag = false;
				notice3.innerText = "비밀번호를 입력하세요.";
				notice3.style.color="red";
				notice3.style.fontSize = "13px";
			}else{
				flagObj.pw2Flag = true;
				notice3.innerText = "비밀번호가 일치합니다.";
				notice3.style.color="green";
				notice3.style.fontSize = "13px";
			}
		}
		function checkName(){
			if(memberName.value === ''){
				flagObj.nameFlag = false;
				notice4.innerText = "필수 정보입니다.";
				notice4.style.color="red";
				notice4.style.fontSize = "13px";
			}else{
				flagObj.nameFlag = true;
				notice4.innerText = "";
			}
		}
		function checkAll(){
			let trueCount = 0;
			for(const key in flagObj){
				if(flagObj[key]){
					trueCount++;
				}
			}
			if(trueCount === 4){
				return true;
			}
			alert("입력사항을 다시 확인해주세요.");
			return false;
		}
		function searchAddr(){
			new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                let addr = ''; // 주소 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	                address.value = addr;
	            }
            }).open();
		}
	</script>
</body>
</html>