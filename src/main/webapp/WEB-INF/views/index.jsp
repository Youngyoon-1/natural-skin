<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/index.css">
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
		<div id="IndThirdDiv">
			<h1>CS Center.</h1><br>
			<div>
				<table>
					<tr id="firstTr">
						<th>공지사항</th>
						<td id="more" onclick="location.href='/'">더보기</td>
					</tr>
					<tr>
						<td>새로운 공지사항을 알려드립니다</td>
						<td>2020-09-00</td>
					</tr>
					<tr>
						<td>새로운 공지사항을 알려드립니다</td>
						<td>2020-09-00</td>
					</tr>
					<tr>
						<td>새로운 공지사항을 알려드립니다</td>
						<td>2020-09-00</td>
					</tr>
					<tr>
						<td>새로운 공지사항을 알려드립니다</td>
						<td>2020-09-00</td>
					</tr>
				</table>
				<div id="csBtns">
					<div><img src="images/qna.png" width="200px"></div>
					<div><img src="images/contactUs.png" width="200px"></div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="footer.jsp"/>
</body>
</html>