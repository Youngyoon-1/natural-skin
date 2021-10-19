<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/product/productW.css">
<script type="text/javascript"></script>
<style>
	.delImg{
		display:none;
	}
</style>
</head>
<body>
	<h2>상품등록</h2>
	<hr style="border: solid 1px;">
	<form action="aProductWrite" enctype="multipart/form-data" method="post">
		<label>카테고리</label>
		<select name="product_category">
			<option value="클렌저">클렌저</option>
			<option value="크림">크림</option>
			<option value="세럼">세럼</option>
			<option value="오일">오일</option>
		</select><br>
		<label>상품명</label><br>
		<input name="product_name" value="" type="text"><br>
		<label>재고</label><br>
		<input name="product_stock" value="" type="number" step="1" min="1" max="999"><br>
		<label>가격</label><br>
		<input name="product_price" value="" type="number" step="1" min="0" max="99999999"><br>
		<label>내용량</label><br>
		<input name="product_capacity" value="" type="text"><br>
		<label>대표이미지</label><!-- <a class="delImg" id="delMainImg"> x</a> --><input type="file" id="mainImgs" name="mainImgs" multiple onclick="func();"><br>
		<label>제품상세이미지</label><!-- <a class="delImg" id="delContentImg"> x</a> --><input type="file" name="contentImgs" multiple><br>
		<label>제품상세정보(상단)</label><br>
		<textarea name="product_header_content"></textarea><br>
		<label>제품상세정보(메인)</label><br>
		<textarea name="product_main_content"></textarea>
		<hr class="second-hr" style="border: solid 1px;">
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button>저장</button>
		</div>
	</form>
</body>
</html>