<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/member/order/order.css">
</head>
<body>
	<header><h3>주문하기</h3></header>
	<table class="order">
		<tr>
			<th>주문상품[1건]</th>	
			<th>상품명</th>
			<th>수량</th>
			<th>가격</th>
		</tr>
		<tr>
			<td><img class="orderImg" src="upload/${productDto.product_img_path}"></td>
			<td>${productDto.product_name}</td>
			<td>${productCount}개</td>
			<td>
			<fmt:formatNumber value="${productDto.product_price*productCount}" pattern="#,###" />원</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td>총상품금액</td>
			<td>
				<fmt:formatNumber value="${productDto.product_price*productCount}" pattern="#,###" />원</td>
		</tr>
	</table>
	<h3 style="margin-left: 7.5%;">배송정보</h3>
	<form action="orderDo" method="post">
		<input name="member_id" value="${member_id}" type="hidden">
		<input name="member_name" value="${member.member_name}" type="hidden">
		<input name="member_order_price" value="${productDto.product_price*productCount+2500}" type="hidden">
		
		<input name="product_id" value="${productDto.product_id}" type="hidden">
		<input name="order_detail_amount" value="${productCount}" type="hidden">
		<input name="order_detail_price" value="${productDto.product_price*productCount}" type="hidden">
		<input name="product_name" value="${productDto.product_name}" type="hidden">
		<input name="product_price" value="${productDto.product_price}" type="hidden">
		<input name="product_img_path" value="${productDto.product_img_path}" type="hidden">
		<div class="main">
			<div class="recipient">
				<div><input id="checkBox" type="checkbox" onclick="pushMemberInfo()">주문자 정보와 동일</div>
				<!-- <p style="clear: both; font-size: 1px">&nbsp;</p> -->
				<label>받는사람</label><br>
				<input id="receiveName" name="member_order_receive_name" type="text" onblur="checkM()"><br>
				<label>주소</label>
				<button id="search-address" type="button" onclick="searchAdd()">주소찾기</button><br>
				<input id="receiveAdd" name="member_order_receive_address" type="text" onblur="checkM()"><br>
				<input id="receiveAddDetail" name="member_order_receive_address_detail" type="text" onblur="checkM()"><br>
				<label>전화번호</label><br>
				<input id="receivePhone" name="member_order_receive_phone" type="text" onblur="checkM()"><br>
			</div>
			<div class="orderer">
				<h4>주문자정보</h4>
				<label>고객명</label><br>
				<input value="${member.member_name}" readOnly><br>
				<label>전화번호</label><br>
				<input value="${member.member_phone}" readOnly><br>
				<label>이메일</label><br>
				<input value="${member.member_email}" readOnly><br>
			</div>
		</div>
		<h3 style="margin-left: 7%;">결제정보 및 금액</h3>
		<hr style="border: solid 2px; margin-left: 7%; margin-right: 7%;">
		<table class="payment">
			<tr>
				<th>결제방법 선택</th>
				<td>
					<input class="radio" type="radio" value="무통장입금" name="member_order_payment_method" />무통장입금&nbsp;&nbsp;
					<input  class="radio" type="radio" value="신용카드" name="member_order_payment_method" />신용카드&nbsp;&nbsp;
					<input  class="radio" type="radio" value="핸드폰결제" name="member_order_payment_method" />핸드폰결제
				</td>
			</tr>
			<tr>
				<th>배송비</th>
				<td>2,500원</td>
			</tr>
			<tr>
				<th>총 결제 금액</th>
				<td>
					<fmt:formatNumber value="${productDto.product_price*productCount+2500}" pattern="#,###" />원
				</td>
			</tr>
		</table>
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button>결제하기</button>
		</div>
	</form>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		let receiveName = document.getElementById("receiveName");
		let receiveAdd = document.getElementById("receiveAdd");
		let receiveAddDetail = document.getElementById("receiveAddDetail");
		let receivePhone = document.getElementById("receivePhone");
		let checkBox = document.getElementById("checkBox");
		
		function pushMemberInfo(){
			receiveName.value = '${member.member_name}';
			receiveAdd.value = '${member.member_address}';
			receiveAddDetail.value = '${member.member_address_detail}';
			receivePhone.value = '${member.member_phone}';
		}
		function checkM(){
			checkBox.checked = false;
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
		                receiveAdd.value = addr;
		                receiveAddDetail.focus();
		            }
		        }).open();
		}
	</script>
</body>
</html>