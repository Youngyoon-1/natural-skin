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
	<form action="aMemberModify" method="post" onsubmit="return aMemberM();">
		<div id="first-div">
			<label>아이디</label><br>
			<input id="id" name="member_id" value="${memberInfo.member_id}" readonly style="border:none">
		</div>
		<button id="orderBtn" type="button">최근주문내역보기</button><br>
		<label>비밀번호</label><br>
		<input id="member_pw" name="member_pw" value="${memberInfo.member_pw}" type="text"><br>
		<label>이름</label><br>
		<input id="member_name" name="member_name" value="${memberInfo.member_name}" readonly type="text"><br>
		<label>생년월일</label><br>
		<div id="birth">
			<input id="member_year" name="member_year" value="${memberInfo.member_year}" type="text">
			<input id="member_month" name="member_month" value="${memberInfo.member_month}" type="text">
			<input id="member_day" name="member_day" value="${memberInfo.member_day}" type="text">
		</div>
		<label>성별</label><br>
		<select id="member_gender" name="member_gender">
			<option value="null">선택안함</option>
			<option value="woman">여자</option>
			<option value="man">남자</option>
		</select><br>
		<label>주소</label><button id="search-address" type="button" onclick="searchAdd();">주소찾기</button><br>
		<input id="member_address" name="member_address" value="${memberInfo.member_address}" type="text"><br>
		<label>상세주소</label><br>
		<input id="member_address_detail" name="member_address_detail" value="${memberInfo.member_address_detail}" type="text"><br>
		<label>전화번호</label><br>
		<input id="member_phone" name="member_phone" value="${memberInfo.member_phone}" type="text"><br>
		<label>이메일</label><br>
		<input id="member_email" name="member_email" value="${memberInfo.member_email}" type="email"><br>
		<hr class="second-hr" style="border: solid 1px;">
		<div id="btns">
			<button type="button" onclick="cancel();">취소</button>
			<button type="submit">수정</button>
			<button type="button" onclick="window.open('aMemberAlert?member_id=${memberInfo.member_id}','','width=600, height=200')">회원탈퇴</button>
		</div>
	</form>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		let member_pw_m = document.getElementById("member_pw");
		let member_name_m = document.getElementById("member_name");
		let member_year_m = document.getElementById("member_year");
		let member_month_m = document.getElementById("member_month");
		let member_day_m = document.getElementById("member_day");
		let member_gender_m = document.getElementById("member_gender");
		let member_address_m = document.getElementById("member_address");
		let member_address_detail_m = document.getElementById("member_address_detail");
		let member_phone_m = document.getElementById("member_phone");
		let member_email_m = document.getElementById("member_email");
	
		let genderOpts = document.querySelectorAll("#member_gender > option");     //서버에서 넘어온 데이터로 select박스 자동완성
		for(opt of genderOpts){
			if(opt.value === '${memberInfo.member_gender}'){
				opt.setAttribute("selected","selected");
				break;
			}
		}
		
		function searchAdd(){
			new daum.Postcode({
				oncomplete: data => {
					let addr = '';
					if (data.userSelectedType === 'R') {
						addr = data.roadAddress;
					} else { 
						addr = data.jibunAddress;
					}
					member_address_m.value = addr;
					member_address_detail_m.focus();
				}
			}).open();
		}
	
		function cancel(){				//취소버튼클릭시
			if(isChange()){
				if(confirm("수정된 정보가 저장되지 않았습니다. 화면을 닫으시겠습니까?") == true){
					window.close();
				}
			}else{
				window.close();
			}
		}
	
		function aMemberM(){				//수정시
	
			if(isEmptyPW()){				//비밀번호가 빈값인지 체크
				alert("비밀번호를 입력해주세요!");		
				return false;
			}
			if(!isChange()){              //초기 데이터를 담고있는 객체와 submit한 데이터를 담고있는 객체 비교
				alert("수정된 정보가 없습니다.");
				return false;
			}
			return true;
		}
	
		function isChange(){			//서버에서 넘어온 데이터를 담고있는 객체와 submit한 데이터를 담고있는 객체 비교함수
			let member_obj = {
					member_pw: '${memberInfo.member_pw}',
					member_name: '${memberInfo.member_name}',
					member_year: '${memberInfo.member_year}',
					member_month: '${memberInfo.member_month}',
					member_day: '${memberInfo.member_day}',
					member_gender: '${memberInfo.member_gender}',
					member_address: '${memberInfo.member_address}',
					member_address_detail: '${memberInfo.member_address_detail}',
					member_phone: '${memberInfo.member_phone}',
					member_email: '${memberInfo.member_email}'
			}
			let member_obj_m = {
					member_pw: member_pw_m.value,
					member_name: member_name_m.value,
					member_year: member_year_m.value,
					member_month: member_month_m.value,
					member_day: member_day_m.value,
					member_gender: member_gender_m.value,
					member_address: member_address_m.value,
					member_address_detail: member_address_detail_m.value,
					member_phone: member_phone_m.value,
					member_email: member_email_m.value
			}
			return JSON.stringify(member_obj) !== JSON.stringify(member_obj_m);
		}
	
		function isEmptyPW(){						//빈값체크
			if(!member_pw_m.value){
				return true;
			}
			return false;
		}
	</script>
</body>
</html>