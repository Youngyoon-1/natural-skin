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
<link rel="stylesheet" href="css/member/notice/Noticemain.css">
<script type="text/javascript"></script>
<style>
*{
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 15px;
    text-align: center;
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
    margin-top: 15px;
}
#search-logo{
	vertical-align:middle;
	margin-bottom:2px;
}
#search-logo:hover{
	cursor: pointer;
}
#search-bar{
	text-align: right;
	margin-right: 65px;
}
h2{
	font-size: 45px;
	margin: 15px;
	margin-top: 30px;
}
.second-hr{
	margin-left: 65px;
    margin-right: 65px;
    margin-top: 0;
}
#role{
	display: none;
}
table{
	width:90%;
	margin: 10px auto;
	border-collapse: collapse;
}
 th, td{
	border-bottom:.5px solid #7B7C95;
	padding: 10px;
}
#button1{
	margin-left: 65px;
	margin-top: 20px;
	float:left;
	padding: 3px;
}
#button2{
	margin-right: 65px;
	margin-top: 20px;
	float:right;
	padding: 3px;
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
#noticemain{
	width: 100%;
}
.bold{
	font-weight: bold;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<img id="noticemain" src="images/notice.png">
	<br>
	<h2>공지사항</h2>
	<br>
	<form action="noticeMain" onsubmit="return checkForm()">
	<div id="search-bar">
		<select id="select-box" name="findBy" onchange="roleClick(this.value)">
			<option value="">전체보기</option>
			<option ${(noticeDto.findBy == 'notice_board_title')?'selected':''} value="notice_board_title">제목</option>
		</select>
		<input value="${noticeDto.notice_board_title}" style="display:${(noticeDto.findBy == 'notice_board_title')?'':'none'}" id="input" type="text">
		<input type="image" id="search-logo" src="images/search.png" style="border: solid 0.5px;">
	</div>
	</form>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>제목</th>
		<th>아이디</th>
		<th>작성일</th>
	</tr>
	<c:forEach var="notice" items="${list}" varStatus="status">
	<tr onclick="location.href='noticeV?notice_board_id=${notice.notice_board_id}'">	
		<td>${pagingDto.startRN + status.index}</td>
		<td>${notice.notice_board_title}</td>
		<td>${notice.member_id}</td>
		<td><fmt:formatDate value="${notice.notice_board_date}" pattern="yyyy-MM-dd" /></td>
	</tr>
	</c:forEach>
	</table>
	<div>
	<a href="noticeMain?page=1&findBy=${noticeDto.findBy}&${noticeDto.findBy}=${noticeDto.notice_board_title}">처음</a>
	<a href="noticeMain?page=${pagingDto.page - 1}&findBy=${noticeDto.findBy}&${noticeDto.findBy}=${noticeDto.notice_board_title}">이전</a>
	<c:forEach var="no" begin="${pagingDto.startPage}" end="${pagingDto.endPage}">
		<a href="noticeMain?page=${no}&findBy=${noticeDto.findBy}&${noticeDto.findBy}=${noticeDto.notice_board_title}" class="${(pagingDto.page == no)?'bold':''}">${no}</a>
	</c:forEach>
	<a href="noticeMain?page=${pagingDto.page + 1}&findBy=${noticeDto.findBy}&${noticeDto.findBy}=${noticeDto.notice_board_title}">다음</a>
	<a href="noticeMain?page=${pagingDto.totalPage}&findBy=${noticeDto.findBy}&${noticeDto.findBy}=${noticeDto.notice_board_title}">마지막</a>
	</div>
	<br>
	<br>
	<c:import url="../../footer.jsp"/>
	<script src="js/member/notice/Noticemain.js"></script>
	<script>
		let searchInput = document.getElementById("input");
		let selBox = document.getElementById("select-box");
		function roleClick(value){
			searchInput.value='';
			if(value === 'notice_board_title'){
				searchInput.style.display = 'inline-block';
			}else{
				searchInput.style.display = 'none';
				
			}
		}
		function checkForm(){
			if(selBox.value === 'notice_board_title'){
				searchInput.name="notice_board_title";
			}
		}
	</script>
</body>
</html>