<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<td>${qna.qna_board_type}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="6">${qna.qna_board_title}<img id="lock" style="display:${(qna.qna_board_lock == 0)?'none':''}" src="images/lock.png"
				alt="잠금" /></td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>${qna.member_id}</td>
			<th>작성일</th>
			<td><fmt:formatDate value="${qna.qna_board_date}" pattern="yyyy-MM-dd" /></td>
			<th>조회수</th>
			<td>${qna.qna_board_hit}</td>
		</tr>
		<tr>
			<td id="content" colspan="6">${qna.qna_board_content}</td>
		</tr>
	</table>
	<div id=btn>
		<button onclick="location.href='qnaMain'" >목록으로</button>
		<div id="buttons" style="display:${(qna.member_id != member_id)?'none':''}">
			<button type="button" style="display:${(qna.qna_board_reply_state == 1)?'none':''}" onclick="location.href='qnaM?qna_board_id=${qna.qna_board_id}'">수정</button>
			<button type="button"
				onclick="window.open('qnaAlert?qna_board_id=${qna.qna_board_id}','','width=600, height=200')">삭제</button>
		</div>
	</div>
	<br>
	<br>
	<c:import url="../../footer.jsp" />
</body>

</html>