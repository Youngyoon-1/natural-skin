<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/user/basket/basket.css">
<style>
*{
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 15px;
    text-align: center;
}
.mainImg {
	width: 100%;
}
.basketImg {
	width: 100px;
	height: 100px;
	vertical-align: middle;
	margin-right: 5px; 
}
h1{
    margin: 50px;
    font-size: 50px;
}
hr{
	margin-left: 40px;
    margin-right: 40px;
}
table{
	width:85%;
	margin: 10px auto;
	border-collapse: collapse;
}
td{
	padding: 10px;
	width: 20%;
}

td:last-child {
	width: 10%;
}

tr {
	border-bottom:.5px solid #7B7C95;
}

th, tr {
	padding-top: 5px;
	padding-bottom: 10px;
}

.pay tr:last-child {
	border-bottom:.5px solid #ffffff;
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
.price{
	border:none; 
}
#emptyBasket{
	line-height:300px;
	font-size: 24px;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/basket.png"/>
	<h1>장바구니</h1>
	<hr style="border: solid 2px;"><br>
	<c:choose>
		<c:when test="${fn:length(basketList) != 0}">
			<table>
				<tr>
					<th>상품이름</th>	
					<th>판매가</th>
					<th>수량</th>
					<th>합계</th>
				</tr>
				<c:forEach var="basket" items="${basketList}" varStatus="status">
					<c:set var="imgPath"  value="${fn:split(basket.product_img_path,',')}"/>
					<tr id="tr${status.count}">
						<td><img class="basketImg" src="upload/${imgPath[0]}">${basket.product_name}</td>	
						<td>
							<fmt:formatNumber value="${basket.product_price}" pattern="#,###" />원	
						</td>
						<td>
							<input value="${basket.product_amount}" min="1" max="999" type="number" style="width:35px;" onchange="modify(this.value,${basket.product_id},${status.count})">
							<!-- <input type=button value="-" style="width: 15px;">
							<input type="text" style="width: 30px; margin-left: -7px;" />
							<input type=button value="+" style="margin-left: -7px; width: 15px;" > -->
						</td>
						<td>
							<input id="basketPriceInput1${status.count}" class="basketPrice" type="hidden" value="${basket.basket_price}">
							<fmt:formatNumber var="price" value="${basket.basket_price}" pattern="#,###" />
							<input id="basketPriceInput2${status.count}" class="price"value="${price}원" readOnly>
						</td>
						<td><button type="button" onclick="deleteBasket(${basket.product_id},${status.count})">삭제</button></td>
					</tr>
				</c:forEach>
			</table>
			<button type="button" style="float: right; margin-right: 7%;" onclick="deleteAll()">장바구니비우기</button>
			<p style="clear: both; font-size: 1px">&nbsp;</p>
			<hr style="border: solid 2px;"><br>
			<table class="pay">
				<tr>
					<th>총상품금액</th>	
					<th>배송비</th>
					<th>결제예정금액</th>
				</tr>
				<tr>
					<td id="price1"></td>	
					<td id="courierFee">2,500원</td>
					<td id="price2"></td>
				</tr>
			</table>	
			<hr style="border: solid 2px;"><br>
			<button type="button" onclick="window.open('order2','','width=700, height=790');">주문하기</button><br><br>
		</c:when>
		<c:otherwise>
			<p id="emptyBasket">장바구니가 비어있습니다.</p>
		</c:otherwise>
	</c:choose>
	<c:import url="../../footer.jsp"/>
	<script>
		let msg = '${msg}';
		if(msg !== ''){
			alert(msg);
			window.history.back();
		}
		let price1 = document.getElementById("price1");
		let price2 = document.getElementById("price2");
		let priceArr = document.querySelectorAll(".basketPrice");
		let courierFee = document.getElementById("courierFee");
		let totalPrice = 0;
		for(let price of priceArr){
			totalPrice += Number(price.value);
		}
		price1.innerText = totalPrice.toLocaleString() + '원';
		price2.innerText = (totalPrice + 2500).toLocaleString() + '원';
		
		function modify(productAmount,productId,resultRowNo){
			fetch("basketModify?product_id="+productId+"&product_amount="+productAmount)
			.then(res => res.json())
			.then(res =>{
				if(res === 0){
					return alert("장바구니 수정에 실패했습니다. 관리자에게 문의바랍니다.");
				}else{
					let input2 = document.getElementById("basketPriceInput2"+resultRowNo);
					input2.value = res.toLocaleString() + '원';
					let input1 = document.getElementById("basketPriceInput1"+resultRowNo);
					input1.value = res;
				}
				let totalPrice = 0;
				for(let price of priceArr){
					totalPrice += Number(price.value);
				}
				price1.innerText = totalPrice.toLocaleString() + '원';
				price2.innerText = (totalPrice + 2500).toLocaleString() + '원';
			})
		}
		
		function deleteBasket(productId,resultRowNo){
			fetch("basketDelete?member_id=${member_id}&product_id="+productId)
			.then(res => res.json())
			.then(res => {
				if(res === 1){
					let tr = document.getElementById("tr"+resultRowNo);
					tr.remove();
					let totalPrice = 0;
					let priceArr = document.querySelectorAll(".basketPrice");
					for(let price of priceArr){
						console.log(price);
						totalPrice += Number(price.value);
					}
					if(totalPrice === 0){
						return location.href = "basket";
					}
					price1.innerText = totalPrice.toLocaleString() + '원';
					price2.innerText = (totalPrice + 2500).toLocaleString() + '원';
					return;
				}
				return alert("장바구니 삭제에 실패했습니다. 관리자에게 문의바랍니다.");
			}) 
		}
		
		function deleteAll(){
			location.href = "basketDeleteAll?member_id=${member_id}";
		}
	</script>
</body>
</html>