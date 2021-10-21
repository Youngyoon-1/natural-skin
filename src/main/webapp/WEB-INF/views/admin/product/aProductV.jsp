<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/product/productV.css">
<style>
	a{
		text-decoration:none;
	}
	a:hover{
		cursor:pointer;
	}
	.delA{
		position: absolute;
		color:red;
	}
</style>
<script type="text/javascript"></script>
</head>
<body>
	<h2>상품상세</h2>
	<hr style="border: solid 1px;">
	<form action="aProductModify?product_id=${product.product_id}" method="post" onsubmit="return modify();" enctype="multipart/form-data">
		<label>카테고리</label><br>
		<select name="product_category">
			<option ${(product.product_category == '클렌저')?'selected':''} value="클렌저">클렌저</option>
			<option ${(product.product_category == '크림')?'selected':''} value="크림">크림</option>
			<option ${(product.product_category == '세럼')?'selected':''} value="세럼">세럼</option>
			<option ${(product.product_category == '오일')?'selected':''} value="오일">오일</option>
		</select><br>
		<label>상품명</label><br>
		<input name="product_name" value="${product.product_name}" type="text"><br>
		<label>재고</label><br>
		<input name="product_stock" value="${product.product_stock}" type="number"><br>
		<label>가격</label><br>
		<input name="product_price" value="${product.product_price}" type="number"><br>
		<label>내용량</label><br>
		<input name="product_capacity" value="${product.product_capacity}" type="text"><br>
		<label>대표이미지</label><br>
		<c:if test="${product.product_img_path != ''}">
			<c:set var="imgPathArr" value="${fn:split(product.product_img_path,',')}"/>
			<c:forEach var="imgPath" items="${imgPathArr}" varStatus="status">
				&nbsp;<img src="/upload/${imgPath}" width="90px" height="90px"/>&nbsp;<a class="delA" onclick="deleteImg(${status.index},'${imgPath}');"> x</a>
				&nbsp;&nbsp;&nbsp;&nbsp;
			</c:forEach>
		</c:if>
		<input id="imgPath" name="mainImgs" type="file" multiple><br>
		
		<label>제품상세이미지</label><br>
		<c:if test="${product.product_content_img_path != ''}">
			<c:set var="contentImgPathArr" value="${fn:split(product.product_content_img_path,',')}"/>
			<c:forEach var="contentImgPath" items="${contentImgPathArr}" varStatus="status">
				&nbsp;<img src="/upload/${contentImgPath}" width="90px" height="90px"/>&nbsp;<a class="delA" onclick="deleteContentImg(${status.index},'${contentImgPath}');"> x</a>
				&nbsp;&nbsp;&nbsp;&nbsp;
			</c:forEach>
		</c:if>
		<input id="contentImgPath" name="contentImgs" type="file" multiple><br>
		<label>제품상세정보(상단)</label><br>
		<textarea name="product_header_content">${product.product_header_content}</textarea><br>
		<label>제품상세정보(메인)</label><br>
		<textarea name="product_main_content">${product.product_main_content}</textarea>
		<hr class="second-hr" style="border: solid 1px;">
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button type="submit">수정</button>
			<button type="button" onclick="window.open('aProductAlert?product_id=${product.product_id}','','width=600, height=200')">삭제</button>
		</div>
	</form>
	<script>
		
		function deleteImg(index,imgPath){
			let delImgPath = imgPath;
			let originPath = '${product.product_img_path}';
			let imgPathArr = originPath.split(",");
			imgPathArr.splice(index, 1);
			originPath =  imgPathArr.join();
			console.log(originPath);
			console.log(delImgPath);
			location.href = "aProductDelImg?product_id=${product.product_id}&product_img_path="+originPath+"&delImgPath="+delImgPath;
			/* fetch("aProductDelImg?product_id=${product.product_id}&product_img_path="+imgPath)
			  .then((response) => response.json())
			  .then((data) => console.log(data))
			  .catch((error) => console.log("error:", error)); */
		}
		function deleteContentImg(index,imgPath){
			let delImgPath = imgPath;
			let originPath = '${product.product_content_img_path}';
			let imgPathArr = originPath.split(",");
			imgPathArr.splice(index, 1);
			originPath =  imgPathArr.join();
			console.log(originPath);
			console.log(delImgPath);
			location.href = "aProductDelContentImg?product_id=${product.product_id}&product_content_img_path="+originPath+"&delImgPath="+delImgPath;
		}
	</script>
</body>
</html>