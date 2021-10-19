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
<link rel="stylesheet" href="css/admin/qna/aQnaReply.css">
</head>
<body>
	<h2>Q&A답변하기</h2>
	<br>
	<hr class="second-hr" style="border: solid 1px;">
	<table>                    
		<tr>
			<th>구분</th>
			<td>${qna.qna_board_type}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="6">${qna.qna_board_title}</td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>${qna.member_id}</td>
			<th>작성일</th>
			<td>
				<fmt:formatDate value="${qna.qna_board_date}" pattern="yyyy-MM-dd"/>
			</td>
			<th>조회수</th>
			<td>${qna.qna_board_hit}</td>
		</tr>
		<tr>
			<td id="content" colspan="6">${qna.qna_board_content}</td>
		</tr>
	</table>
	
	<h2>답변</h2>
	<br>
	<hr class="second-hr" style="border: solid 1px;">
	<form action="aQnaWriteReply" method="post">
		<input value="${qna.qna_board_id}" name="qna_board_id" type="hidden">
		<input value="${qna.qna_board_type}" name="qna_board_type" type="hidden">
		<input value="${qna.qna_board_lock}" name="qna_board_lock" type="hidden">
		<input value="${qna.qna_board_title}" name="qna_board_title" type="hidden">
		<input value="${qna.product_id}" name="product_id" type="hidden">
		<input value="${qna.member_id}" name="qna_board_querist" type="hidden">
		<input value="${member_id}" name="member_id" type="hidden">
		<table>                    
			<tr>
				<td><textarea name="qna_board_content">답변내용입니다.</textarea></td>
			</tr>
		</table>
		
		<div id="buttons">
			<button type="button" onClick="window.close()">취소</button>
			<button type="submit">글쓰기</button>
		</div>
	</form>
</body>
</html>