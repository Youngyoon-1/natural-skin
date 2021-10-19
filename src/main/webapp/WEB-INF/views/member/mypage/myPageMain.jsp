<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/user/myPage/myPageMain.css">
<style>
*{
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 15px;
    text-align: center;
}
.mainImg {
	width: 100%;
}
table{
	width:85%;
	margin: 10px auto;
	border-collapse: collapse;
}
 th, td{
	border-bottom:.5px solid #7B7C95;
	padding: 10px;
}
tr:hover:not(#first-tr){
	background-color: #f2f2f2;
	opacity: .7;
	cursor: pointer;
	transition-duration: .2s;
}
button:hover{
	cursor: pointer;
}
#btns{
    margin: 50px;
    display:inline-block;
}
h1{
    margin: 50px;
    font-size: 50px;
}
hr{
	margin-left: 50px;
    margin-right: 50px;
}
#btns > div{
	position: relative;
  	float: left;
    height: 295px;
    width: 295px;
    background-color: #F1F1F1;
    margin: 20px;
}
.front{
	left: 40%;
	position: absolute;
	top: 50%;margin-top: -50px;
}
.p{
	position: absolute;
	top: 50%;margin-top: -50px;
	left: 35%;margin-left:-29px;
	opacity: 0;
	font-size: 19px;
}
#btns > div:hover .hover{
	opacity: .1;
}
#btns > div:hover p{
	transition : .2s ease-in-out;
	opacity: 1;
}
.myPageMain:hover{
    text-decoration: underline;
}
p > a{
	font-size: 25px;
}
h2{
	font-size:28px;
	margin: 20px;
}
#infoDiv:hover{
	cursor:pointer;
}
.bold{
	font-weight:bold;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img class="mainImg" src="images/myPage.png"/>
	<h1>마이페이지</h1>
	<hr style="border: solid 2px;">
	<h2>주문목록</h2>
	<hr style="border: solid 1px;">
	<table>
		<tr id="first-tr">
			<th>주문일</th>
			<th>주문상태</th>
			<th>상품명</th>
			<th>금액</th>
		</tr>
		<c:forEach var="order" items="${list}">
			<tr onclick="location.href='myPageOrder?member_order_id=${order.member_order_id}'">
				<td>
					<fmt:formatDate value="${order.member_order_date}" pattern="yyyy-MM-dd" />
				</td>
				<td>${order.member_order_state}</td>
				<td>${fn:replace(fn:replace(order.product_name,'[',''),']','')}</td>
				<td>
					<fmt:formatNumber value="${order.member_order_price}" pattern="#,###" />원
				</td>
			</tr>
		</c:forEach>
	</table>
	<div>
		<a href="myPageMain?page=1">처음</a>
		<a href="myPageMain?page=${pagingDto.page-1}">이전</a>
		<c:forEach var="no" begin="${pagingDto.startPage}" end="${pagingDto.endPage}">
			<a class="${(pagingDto.page == no)?'bold':''}" href="myPageMain?page=${no}">${no}</a>
		</c:forEach>
		<a href="myPageMain?page=${pagingDto.page+1}">다음</a>
		<a href="myPageMain?page=${pagingDto.totalPage}">마지막</a>
	</div>
	<div id="btns">
		<div id="infoDiv" onclick="location.href='myPageM'">
			<div class="front">
				<div><img src="images/a-member-logo.png"/></div>
				<div>회원정보</div>
			</div>
		</div>
		<div>
			<div class="front hover">
				<div><img src="images/task.png"/></div>
				<div>게시글관리</div>
			</div>
			<p class="p">
				<a class="myPageMain" href="myPageReview">리뷰게시글</a><br><br>
				<a class="myPageMain" href="myPageQna">Q&A게시글</a>
			</p>
		</div>
	</div>
	
	<c:import url="../../footer.jsp"/>
</body>
</html>