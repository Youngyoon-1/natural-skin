<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/product/productV.css">
<script type="text/javascript"></script>
</head>
<body>
	<h2>상품상세</h2>
	<hr style="border: solid 1px;">
	<form action="" onsubmit="return ">
		<label>카테고리</label><br>
		<select>
			<option>클렌저</option>
			<option>로션&크림</option>
			<option>앰플&세럼</option>
			<option>오일</option>
		</select><br>
		<label>상품명</label><br>
		<input value="Natural Soap" type="text"><br>
		<label>재고</label><br>
		<input value="99" type="text"><br>
		<label>가격</label><br>
		<input value="15000" type="text"><br>
		<label>대표이미지</label><button id="search-address" type="button">파일찾기</button><br>
		<input placeholder="두개이상 파일은 , 으로구분해주세요" value="img.jsp" type="text"><br>
		<label>제품상세이미지</label><button id="search-address" type="button">파일찾기</button><br>
		<input placeholder="두개이상 파일은 , 으로구분해주세요" value="img.jsp" type="text"><br>
		<label>제품상세정보</label><br>
		<textarea>null</textarea>
		<hr class="second-hr" style="border: solid 1px;">
		<div id="btns">
			<button type="button" onclick="window.close()">취소</button>
			<button type="button" onclick="alert('상품정보가 수정되었습니다.'); window.close()">수정</button>
			<button type="button" onclick="window.open('aProductAlert','','width=600, height=200')">삭제</button>
		</div>
	</form>
</body>
</html>