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
<link rel="stylesheet" href="css/admin/order/aOrderMain.css">
<style>
#mainBtn{	
	margin-bottom: 50px;
}
</style>
<script type="text/javascript"></script>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<h1>관리자페이지</h1>
	<hr style="border: solid 2px;">
	<h2>주문목록</h2>
	<form action=aOrderMain method="get" onsubmit="return search();">
		<div id="search-bar">
			<select name="countPerPage" id="countPerPage">
				<option ${(pagingDto.countPerPage == 50)?"selected":""} class="countPerPage" value=50 >50개씩보기</option>
				<option ${(pagingDto.countPerPage == 100)?"selected":""} class="countPerPage" value=100>100개씩보기</option>
			</select>
			<select name="findBy" id="select-box" onchange="select(this.value)">
				<option ${(orderDto.findBy == "")?"selected":""} value="">전체보기</option>
				<option ${(orderDto.findBy == "member_id")?"selected":""} value="member_id">아이디</option>
				<option ${(orderDto.findBy == "member_name")?"selected":""} value="member_name">이름</option>
				<option ${(orderDto.findBy == "member_order_id")?"selected":""} value="member_order_id">주문번호</option>
			</select>
			<input value="${param.member_id}${param.member_name}${param.member_order_id}" id="input" type="text">
			<input id="search-logo" type="image" src="images/search.png" style="border: solid 0.5px;">
		</div>
	</form>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>아이디</th>
		<th>이름</th>
		<th>주문번호</th>
		<th>주문일</th>
	</tr>
	<c:forEach var="order" items='${orderList}' varStatus="status">
		<tr onclick="window.open('aOrderV?member_order_id=${order.member_order_id}','','width=780, height=520')">
		<td>${pagingDto.startRN + status.index}</td>
		<td>${order.member_id}</td>
		<td>${order.member_name}</td>
		<td>${order.member_order_id}</td>
		<td>
			<fmt:formatDate value="${order.member_order_date}" pattern="yyyy-MM-dd"/>
		</td>
	</tr>
	</c:forEach>
	</table>
	<div id=pagination>
		<a href="aOrderMain?page=1&countPerPage=${pagingDto.countPerPage}&findBy=${orderDto.findBy}&${orderDto.findBy}=${param.member_id}${param.member_name}${param.member_order_id}">
			처음
		</a>
		<a href="aOrderMain?page=${(pagingDto.page-1)}&countPerPage=${pagingDto.countPerPage}&findBy=${orderDto.findBy}&${orderDto.findBy}=${param.member_id}${param.member_name}${param.member_order_id}">
			이전
		</a>
		<c:forEach var="no" begin='${pagingDto.startPage}' end='${pagingDto.endPage}'>
			<a href="aOrderMain?page=${no}&countPerPage=${pagingDto.countPerPage}&findBy=${orderDto.findBy}&${orderDto.findBy}=${param.member_id}${param.member_name}${param.member_order_id}"
				class="${(no == pagingDto.page)?'bold':''}">
				${no}
			</a>
		</c:forEach>
		<a href="aOrderMain?page=${(pagingDto.page+1)}&countPerPage=${pagingDto.countPerPage}&findBy=${orderDto.findBy}&${orderDto.findBy}=${param.member_id}${param.member_name}${param.member_order_id}">
			다음
		</a>
		<a href="aOrderMain?page=${(pagingDto.totalPage)}&countPerPage=${pagingDto.countPerPage}&findBy=${orderDto.findBy}&${orderDto.findBy}=${param.member_id}${param.member_name}${param.member_order_id}">
			마지막
		</a>
	</div>
	<button id="mainBtn" type="button" onClick="location.href='aMain'">메인으로</button>
	<script>
		let input = document.getElementById("input");
		input.style.display = "none";
		
		function search(){
			let selectBox = document.getElementById("select-box");
			
			input.name = selectBox.value;
		}
		
		function select(value){
			input.value = "";
			if(value === ""){
				input.style.display = "none";
			}else{
				input.style.display = "inline-block";
			}
		}
		
		let selectBoxOpt = document.querySelector("#select-box > option:checked");
		if(selectBoxOpt.value !== ""){
			input.style.display = "inline-block";
		}
		
	</script>
</body>
</html>