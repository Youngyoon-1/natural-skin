<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/admin/product/productW.css">
<script type="text/javascript"></script>
</head>
<body>

	

	<h1> 상품등록 </h1>
		<hr style="border: solid 2px;">

		<table>
		<tr>
		<td><label>카테고리</label>
	<select id="select-box" onchange="roleClick()">
			<option>클렌저</option>
			<option>로션&크림</option>
			<option>앰플&세럼</option>
			<option>오일</option>
		</select></td>
		</tr>
	<tr id="first-tr">
	<td><label>상품명</label><input type = "text" id="text" value = "product-name"/></td>
	</tr>
	<tr>
	<td><label>재고</label><input type = "text" id="text" value = "stock"/></td>
	</tr>
	<tr>
	<td><label>가격</label><input type = "text" id="text" value = "price"/></td>
	</tr>	
	<tr>
	<td><form action="uploadOk" method="post" enctype="multipart/form-data">
	<label>대표이미지</label><input type = "text" id="image" value = "image"/>
	
		<input type="submit" id="submit" value="File Upload">
		</td>
		</tr>
	</form>
	<td>	<form action="uploadOk" method="post" enctype="multipart/form-data">
	<label>대표상세이미지</label><input type = "text" id="image" value = "image-detail"/>
	
		<input type="submit" id="submit" value="File Upload">
	</form>
	</td>
		<tr>
	<td><label>제품상세정보</label><input type = "text"  id="image-information" value = "image-information"/></td>
	</tr>
	</tr>	
	</table>
	<button type="button" class="cancel" onClick="location.href='productMain'">취소</button>
	<button type="button" class="save" onClick="alert('상품등록이 완료되었습니다.')">저장</button>
	
</body>
</html>