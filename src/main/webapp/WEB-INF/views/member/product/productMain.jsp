<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<h1>${(productDto.findBy != null)?productDto.product_category:'모든상품'}</h1>
		<hr>
		<div id="productDiv">
			<c:forEach var="product" items="${productList}">
				<c:set var="imgPath" value="${fn:split(product.product_img_path,',')}"/>
				<div class="productDiv" onclick="location.href='productV?product_id=${product.product_id}'">
					<div class="imgDiv"><img src="upload/${imgPath[0]}" onmouseover="this.src='upload/${imgPath[1]}'" onmouseout="this.src='upload/${imgPath[0]}'" width="500px" height="500px"></div>
					<p>${product.product_name}<br>
					<fmt:formatNumber value="${product.product_price}" pattern="#,###"/>원</p>
				</div>
			</c:forEach>
		</div>
	</div>
	<c:import url="../../footer.jsp"/>
</body>
</html>