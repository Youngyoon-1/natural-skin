<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/user/qna/qnaV1.css">
<style>
*{
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 15px;
    text-align: center;
}

hr{
	margin-left: 50px;
    margin-right: 50px;
}	

h2{
	font-size: 30px;
	margin: 15px;
	margin-top: 30px;
}
	

tr {
	border-bottom:.5px solid #7B7C95;
}
table{
	width:75%;
	margin: auto;
	border-collapse: collapse;
	
}
td {
	text-align: left;
}

 th, td{
	padding: 10px;
}

button{
	margin-left: 15px;
	margin-top: 20px;
	padding: 3px;
	letter-spacing: .5px;
}

button:hover{
	cursor: pointer;
}

img {
	vertical-align:middle;
}
#lock {
	width: 20px;
	height: 20px;
}

#buttons {
	margin-left:38%;
}

textarea {
	padding-left: 5px;
	width: 100%; 
	height: 80px; 
	text-align: left;
	background-color: #F1F1F1;
	border:none
}
#content{
	padding-left: 4.7%;
}
.banner-image{
	width: 100%;
}
#btn{
	display:flex;
	margin-left:3%;
}
</style>
</head>

<body>
	<c:import url="../../header.jsp" />
	<div><img class="banner-image" src="images/banner.png"></div>
	<br>
	<h2>문의내용 상세보기</h2>
	<br>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
		<tr>
			<th>구분</th>
			<td>배송</td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="6">배송문의입니다?<img id="lock" src="images/lock.png"
				alt="잠금" /></td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>hong</td>
			<th>작성일</th>
			<td>2021-09-07</td>
			<th>조회수</th>
			<td>10</td>
		</tr>
		<tr>
			<td id="content" colspan="6">언제도착할까요</td>
		</tr>
	</table>
	<div id=btn>
		<button onclick="location.href='qnaMain'" >목록으로</button>
		<div id="buttons">
			<button type="button" onclick="location.href='qnaM'">수정</button>
			<button type="button"
				onclick="window.open('qnaAlert','','width=600, height=200')">삭제</button>
		</div>
	</div>
	<br>
	<br>
	<c:import url="../../footer.jsp" />
</body>

</html>