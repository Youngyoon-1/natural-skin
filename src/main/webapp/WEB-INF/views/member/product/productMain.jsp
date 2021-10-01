<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/member/product/productMain.css">
</head>
<body>
	<c:import url="../../header.jsp"/>
	<div>
		<div><img id="indexImg" src="images/product.png" ></div>
		<h1>모든상품</h1>
		<hr>
		<div id="productDiv">
			<div class="productDiv" onclick="location.href='productV'">
				<div class="imgDiv"><img src="images/naturalAmple.png" onmouseover="this.src='images/naturalAmple2.png'" onmouseout="this.src='images/naturalAmple.png'"></div>
				<p>Natural Ample 75ml<br>45,000원</p>
			</div>
			<div class="productDiv" onclick="location.href='productV'">
				<div class="imgDiv"><img src="images/naturalAmple.png" onmouseover="this.src='images/naturalAmple2.png'" onmouseout="this.src='images/naturalAmple.png'"></div>
				<p>Natural Ample 75ml<br>45,000원</p>
			</div>
			<div class="productDiv" onclick="location.href='productV'">
				<div class="imgDiv"><img src="images/naturalAmple.png" onmouseover="this.src='images/naturalAmple2.png'" onmouseout="this.src='images/naturalAmple.png'"></div>
				<p>Natural Ample 75ml<br>45,000원</p>
			</div>
			<div class="productDiv" onclick="location.href='productV'">
				<div class="imgDiv"><img src="images/naturalAmple.png" onmouseover="this.src='images/naturalAmple2.png'" onmouseout="this.src='images/naturalAmple.png'"></div>
				<p>Natural Ample 75ml<br>45,000원</p>
			</div>
		</div>
	</div>
	<c:import url="../../footer.jsp"/>
</body>
</html>