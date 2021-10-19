<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
		<%@ page trimDirectiveWhitespaces="true" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title></title>
				<link rel="stylesheet" href="css/user/qna/qnaV2.css">
				<style>
				@charset "UTF-8";
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

table{
	width:79%;
	margin: auto;
	border-collapse: collapse;
}

tr {
	border-bottom:.5px solid #7B7C95;
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


#adminPageButtons {
	width: 400px;
	margin: auto;
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
#reply-logo{
    width: 30px;
    margin-bottom:2px;
}
				</style>
			</head>

			<body>
			<c:import url="../../header.jsp"/>
			<div><img class="banner-image" src="images/banner.png"></div>
			<br>
				<h2>문의내용 상세보기</h2>
				<br>
				<hr class="second-hr" style="border: solid 1px;">
				<table id="ask-table">
					<tr>
						<th>구분</th>
						<td>${list[0].qna_board_type}</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="6">${list[0].qna_board_title}<img id="lock" style="display:${(list[0].qna_board_lock == 0)?'none':''}" src="images/lock.png" alt="잠금" /></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>${list[0].member_id}</td>
						<th>작성일</th>
						<td><fmt:formatDate value="${list[0].qna_board_date}" pattern="yyyy-MM-dd" /></td>
					</tr>
					<tr>
						<td id="content" colspan="6">${list[0].qna_board_content}</td>
						
					</tr>
					
				</table>
				<h2>답변</h2>
				<hr class="second-hr" style="border: solid 1px;">
				<table id="answer-table">
					<tr>
						<th>구분</th>
						<td>${list[1].qna_board_type}</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="6"><img id="reply-logo" src="images/re.png" alt="잠금" />${list[1].qna_board_title}<img id="lock" style="display:${(list[1].qna_board_lock == 0)?'none':''}" src="images/lock.png" alt="잠금" /></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>${list[1].member_id}</td>
						<th>작성일</th>
						<td><fmt:formatDate value="${list[1].qna_board_date}" pattern="yyyy-MM-dd" /></td>
						<th>조회수</th>
						<td>${list[1].qna_board_hit}</td>
					</tr>
					<tr>
						<td id="content" colspan="6">${list[1].qna_board_content}</td>
					</tr>
				</table>
				<button id="toList" type="button" onclick="history.back()">목록으로</button>
				<br>
				<br>
				<br>
				<c:import url="../../footer.jsp"/>
			</body>

			</html>