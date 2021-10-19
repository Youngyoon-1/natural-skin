<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/member/notice/NoticeV.css">
<script type="text/javascript"></script>
<style>
*{
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 16px;
}
h2{
	font-size: 35px;
	margin: 15px;
	margin-top: 20px;
	text-align:center;
}
hr{
	margin-left: 40px;
    margin-right: 40px;
    background-color: #7B7C95;
    margin-bottom:8px;

}
form{
	margin-top: 15px;
	margin-left: 40px;
    margin-right: 40px;
	text-align: center;
}
input, textarea{
	width: 100px;
	border:none;
	background-color: #f1f1f1;
	padding-left: 3px;
	margin: 3px;
}
input:not(#title){
	margin-left:0;
}
#title {
	width: 80%;
	padding:5px;
}
button{
	letter-spacing: .5px;
	padding: 3px;
	margin: 10px; 
}
#btns{
	display: flex;
	justify-content: center;
	margin-top: 6px;
}
 form > hr{
	margin-top: 6px;
	margin-left: 0px;
	margin-right: 0;
    background-color: #7B7C95;
 }
 #second-div{
    margin-top: 10px; 
 }
 #content {
 	padding:5px;
 	height: 80px;
    width: 90%;
    margin-left: 15px;
    resize: none;
 }
button:hover{
	cursor: pointer;
}
label{
	margin-right: 8px;
}
span{
	margin-right: 65px;
}
#title-label{
	margin: 5px;
}
#noticemain{
	width: 100%;
}
table{
	width:75%;
	margin: 10px auto;
	border-collapse: collapse;
}
 th, td{
	border-bottom:.5px solid #7B7C95;
	padding: 10px;
}
th > span{
	font-weight: normal;
}
#firstTh{

}
.tr{
	height: 45px;
}
#firstTh{
	width:28%;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img id="noticemain" src="images/notice.png">
	<br>
	<br>
	<h2>공지사항 상세보기</h2>
	<br>
	<hr style="border: solid 2px;">
	
	<table>
	<tr class="tr">
		<th id="firstTh">제목</th>
		<td colspan="5">${notice.notice_board_title}</td>
	</tr>
	<tr class="tr">
		<th>아이디</th>
		<td>${notice.member_id}</td>
		<th>작성일</th>
		<td><fmt:formatDate value="${notice.notice_board_date}" pattern="yyyy-MM-dd" /></td>
		<th>조회수</th>
		<td>${notice.notice_board_hit}</td>
	</tr>
	<tr>
		<td colspan="6">&emsp;&emsp;&emsp;&emsp;${notice.notice_board_content}</td>
	</tr>
	</table>
		<div id="btns">
			<button type="button" onclick="location.href='noticeMain'">&nbsp;목록&nbsp;</button>
		</div>
	<br>
	<br>
	<script src="js/admin/notice/aNoticeV.js"></script>
	<c:import url="../../footer.jsp"/>
</body>
</html>