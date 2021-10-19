<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/user/myPage/myPageOrderM.css">
<style>
*{
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 15px;
}
header{
	background-color: #E9E9E9;
	height: 45px;	
}
h3{
	font-size: 20px;
	margin-left: 10px;
	vertical-align: middle;
    line-height: 45px;
}
form{
	margin-left: 40px;
	margin-top: 15px;
	text-align:left;
}
label, input{
	margin: 3px;
}
input{
	width:90%;
	height: 31px;
	border:none;
	padding-left: 3px;
}
input:not(#id){
	width:90%;
	height: 31px;
	border:none;
	background-color: #f1f1f1;
	padding-left: 3px;
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
	<header><h3>배송정보변경</h3></header>
	<form action="myPageOrderModifyDo" method="post">
		<input type="hidden" name="member_order_id" value="${order.member_order_id}">
		<label>받는사람</label><br>
		<input value="${order.member_order_receive_name}" name="member_order_receive_name" type="text"><br>
		<label>주소</label><button type="button" onclick="searchAdd()" id="search-address">주소찾기</button><br>
		<input value="${order.member_order_receive_address}" id ="add" name="member_order_receive_address" type="text"><br>
		<label>상세주소</label><br>
		<input value="${order.member_order_receive_address_detail}" name="member_order_receive_address_detail" type="text"><br>
		<label>전화번호</label><br>
		<input value="${order.member_order_receive_phone}" name="member_order_receive_phone" type="tel"><br>
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button>수정</button>
		</div>		
	</form>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		opener.location.reload();
		let msg = '${msg}';
		if(msg !== ''){
			alert(msg);
		}
		function searchAdd(){
			 new daum.Postcode({
		            oncomplete: function(data) {
		                var addr = ''; // 주소 변수
		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById("add").value = addr;
		            }
		        }).open();
		}
		
	</script>
</body>
</html>