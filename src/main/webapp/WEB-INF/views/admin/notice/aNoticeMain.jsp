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
<link rel="stylesheet" href="css/admin/notice/aNoticeMain.css">
<script type="text/javascript"></script>
<style>
	#input{
		display:none;
	}
	.bold{
		font-weight: bold;
	}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<h1>관리자페이지</h1>
	<hr style="border: solid 2px;">
	<h2>공지사항관리</h2>
	<form action="aNoticeMain" onsubmit="return search();">
		<div id="search-bar">
			<select id="select-box" name="findBy" onchange="roleClick(this.value)">
				<option ${(param.findBy=='')?"selected":""} value="">전체보기</option>
				<option ${(param.findBy=='member_id')?"selected":""} value="member_id">아이디</option>
				<option ${(param.findBy=='notice_board_title')?"selected":""} value="notice_board_title">제목</option>
			</select>
			<input style="display:${(noticeDto.findBy == null || noticeDto.findBy == '')?'none':'inline-block'}" value="${param.member_id}${param.notice_board_title}" id="input" type="text">
			<input id="search-logo" type="image" src="images/search.png" style="border: solid 0.5px;"/>
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
	<c:forEach var="notice" items="${noticeList}" varStatus="status">
		<tr onclick="window.open('aNoticeV?notice_board_id=${notice.notice_board_id}','child_window','width=650, height=500')">
			<td>${pagingDto.startRN + status.index}</td>
			<td>${notice.notice_board_title}</td>
			<td>${notice.member_id}</td>
			<td>
				<fmt:formatDate value="${notice.notice_board_date}" pattern="yyyy-MM-dd"/>
			</td>
		</tr>
	</c:forEach>
	</table>
	<div>
		<a href="aNoticeMain?page=1&findBy=${noticeDto.findBy}&${noticeDto.findBy}=${noticeDto.member_id}${noticeDto.notice_board_title}">처음</a>
		<a href="aNoticeMain?page=${pagingDto.page-1}&findBy=${noticeDto.findBy}&${noticeDto.findBy}=${noticeDto.member_id}${noticeDto.notice_board_title}">이전</a>
		<c:forEach var="no" begin="${pagingDto.startPage}" end="${pagingDto.endPage}">
			<a href="aNoticeMain?page=${no}&findBy=${noticeDto.findBy}&${noticeDto.findBy}=${noticeDto.member_id}${noticeDto.notice_board_title}"
				class="${(pagingDto.page == no)?'bold':''}">
				${no}
			</a>
		</c:forEach>
		<a href="aNoticeMain?page=${pagingDto.page+1}&findBy=${noticeDto.findBy}&${noticeDto.findBy}=${noticeDto.member_id}${noticeDto.notice_board_title}">다음</a>
		<a href="aNoticeMain?page=${pagingDto.totalPage}&findBy=${noticeDto.findBy}&${noticeDto.findBy}=${noticeDto.member_id}${noticeDto.notice_board_title}">마지막</a>
	</div>
	<button id="button1" type="button" onClick="location.href='aMain'">메인으로</button>
	<button id="button2" type="button" onClick="window.open('aNoticeW','','width=650, height=500')">글쓰기</button>
	<script src="js/admin/notice/aNoticeMain.js"></script>
	<script>
		let input = document.getElementById("input");
		function roleClick(value){
			input.value = "";
			if(value === ""){
				input.style.display = "none";
			}else{
				input.style.display = "inline-block";
			}
		}
		function search(){
			let selectBox = document.getElementById("select-box");
			if(selectBox.value === "member_id"){
				input.name = "member_id";
			}else if(selectBox.value === "notice_board_title"){
				input.name = "notice_board_title";
			}
		}
	</script>
</body>
</html>