<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/index.css">
<style>
#contactUsBtn{
border:none;
}
.navImg:hover{
cursor:pointer;
}
.noticeTr:hover{
cursor:pointer;
}
</style>
</head>
<body>
	<c:import url="header.jsp"/>
	<div id="index">
		<div><img id="indexImg" src="images/index.png" ></div>
		<div id="IndfirstDiv" class="div">
			<h1>Our Company.</h1>
			<p>우리는 과장된 광고로 고객의 똑똑한 선택을 가로막지 않습니다.<br>
				모든제품은 반드시, 효과적이고 유익해야 합니다. 예외는 없습니다.</p>
			<br><button id="contactUsBtn" onclick="location.href='brand'">Learn More</button>
		</div>
		<div id="IndSecondDiv">
			<h1>Product.</h1><br><br>
			<div>
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
		<div id="IndThirdDiv">
			<h1>CS Center.</h1><br>
			<div>
				<table>
					<tr id="firstTr">
						<th>공지사항</th>
						<td id="more" onclick="location.href='noticeMain'">더보기</td>
					</tr>
					<c:forEach var="notice" items="${noticeList}">
						<tr class="noticeTr" onclick="location.href='noticeV?notice_board_id=${notice.notice_board_id}'">
							<td>${notice.notice_board_title}</td>
							<td><fmt:formatDate value="${notice.notice_board_date}" pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>
				</table>
				<div id="csBtns">
					<div><img class="navImg" onclick="location.href='qnaMain'" src="images/qna.png" width="200px"></div>
					<div><img class="navImg" onclick="location.href='brand'"src="images/contactUs.png" width="200px"></div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="footer.jsp"/>
</body>
</html>