<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리</title>
<link rel="stylesheet" href="/css/admin/product/productMain.css">
<style>
	
	#button2{
		margin-bottom: 100px;
	}
	.bold{
		font-weight: bold;
	}
</style>
<script type="text/javascript"></script>
</head>
<body>
<c:import url="../../header.jsp"/>
	<h1>관리자페이지</h1>
	<hr style="border: solid 2px;">
	<h2> 상품관리 </h2>
	<form action="aProductMain" onsubmit="return search();">
		<div id="search-bar">
			<select id="select-box" name="findBy" onchange="selectOpt(this.value);">
				<option value="">전체보기</option>
				<option ${(productDto.findBy == 'product_name')?'selected':''} value="product_name">상품명</option>
			</select>
			<input style="display:${(productDto.findBy != 'product_name')?'none':'inline-block'}" value="${productDto.product_name}" id="input" type="text" name="">
			<input type="image" id="search-logo" src="images/search.png" style="border: solid 0.5px;">
		</div>
	</form>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>이미지</th>
		<th>상품명</th>
		<th>등록일</th>
	</tr>
	<c:forEach var="product" items='${productList}' varStatus="status">
		<tr onclick="window.open('aProductV?findBy=product_id&product_id=${product.product_id}','','width=780, height=700')">
			<td>${pagingDto.startRN + status.index}</td>
			<c:set var="imgPathArr" value="${fn:split(product.product_img_path, ',')}"/> 
			<td><img src="/upload/${imgPathArr[0]}" alt="업로드된 이미지" width="100px" height="100px"/></td>
			<td >${product.product_name}</td>
			<td>
				<fmt:formatDate value="${product.product_date}" pattern="yyyy-MM-dd"/>
			</td>
		</tr>
	</c:forEach>
	</table>
	<div>
		<a href="aProductMain?page=1&findBy=${productDto.findBy}&${productDto.findBy}=${productDto.product_name}">처음</a>
		<a href="aProductMain?page=${pagingDto.page-1}&findBy=${productDto.findBy}&${productDto.findBy}=${productDto.product_name}">이전</a>
		<c:forEach var="no" begin='${pagingDto.startPage}' end='${pagingDto.endPage}' >
			<a href="aProductMain?page=${no}&findBy=${productDto.findBy}&${productDto.findBy}=${productDto.product_name}"
				class="${(pagingDto.page == no)?'bold':''}">
				${no}
			</a>
		</c:forEach>
		<a href="aProductMain?page=${pagingDto.page+1}&findBy=${productDto.findBy}&${productDto.findBy}=${productDto.product_name}">다음</a>
		<a href="aProductMain?page=${pagingDto.totalPage}&findBy=${productDto.findBy}&${productDto.findBy}=${productDto.product_name}">마지막</a>
	</div>
	<button id="button1" type="button" onClick="location.href='aMain'">메인으로</button>
	<button id="button2" type="button" onClick="window.open('aProductW','','width=650, height=650')">상품등록</button>
	<script>
		let input = document.getElementById("input");
		let selectBox = document.getElementById("select-box");
		function selectOpt(value){
			if(value === ""){
				input.style.display="none";
			}else{
				input.style.display="inline-block";
			}
		}
		function search(){
			if(selectBox.value === 'product_name'){
				input.name = 'product_name';
			}
		}
	</script>
</body>
</html>