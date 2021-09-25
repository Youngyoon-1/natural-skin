<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/order/aOrderV.css">
<script type="text/javascript"></script>
</head>
<body>
	<h2>주문상세페이지</h2>
	<hr style="border: solid 1px;">
	<form action="aOrderModify?member_id=${param.member_id}" method="post" onsubmit="return aOrderM();">
		<label>주문자아이디</label><span>${order.member_id}</span>
		<label>주문일</label>
		<span>
			<fmt:formatDate value="${order.member_order_date}" pattern="yyyy-MM-dd"/>
		</span>
		<label>결제금액</label>
		<span>
			<fmt:formatNumber value="${order.member_order_price}" pattern="#,###"/>원
		</span>
		<label>주문번호</label><span>${order.member_order_id}</span><br>
		<hr id="second-hr">
		<label>받는분이름</label><br>
		<input name="member_order_receive_name" value="${order.member_order_receive_name}" type="text"><br>
		<label>받는분주소</label><button id="search-address" type="button" onclick="findAdd()">주소찾기</button><br>
		<input name="member_order_receive_address" id="address" value="${order.member_order_receive_address}" type="text"><br>
		<label>상세주소</label><br>
		<input name="member_order_receive_address_detail" id="address_detail"value="${order.member_order_receive_address_detail}" type="text"><br>
		<label>받는분전화번호</label><br>
		<input name="member_order_receive_phone" value="${order.member_order_receive_phone}" type="text"><br>
		<label>주문상태</label><br>
		<select name="member_order_state">
			<option ${(order.member_order_state == "배송준비중")?"selected":""} value="배송준비중">배송준비중</option>
			<option ${(order.member_order_state == "배송중")?"selected":""} value="배송중">배송중</option>
			<option ${(order.member_order_state == "배송완료")?"selected":""} value="배송완료">배송완료</option>
			<option ${(order.member_order_state == "주문취소요청")?"selected":""} value="주문취소요청">주문취소요청</option>
			<option ${(order.member_order_state == "주문취소완료")?"selected":""} value="주문취소완료">주문취소완료</option>
		</select>
		<hr class="second-hr" style="border: solid 1px;">
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button type="submit">수정</button>
			<button type="button" onclick="window.open('aOrderAlert?member_id=${param.member_id}','','width=600, height=200')">삭제</button>
		</div>
	</form>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		/* function aOrderM(){
			return true;
		} */
		
		function findAdd(){
			 new daum.Postcode({
			        oncomplete: function(data) {
			        	 var addr = ''; // 주소 변수
			        	//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }
			        	let address = document.getElementById("address");
			        	address.value = addr;
			        	document.getElementById("address_detail").focus();
			        }
			    }).open();
		}
	</script>
</body>
</html>