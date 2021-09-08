<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
			<td>배송</td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="6">사용방법질문이요</td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>hong</td>
			<th>작성일</th>
			<td>2021-09-07</td>
			<th>조회수</th>
			<td>100</td>
		</tr>
		<tr>
			<td id="content" colspan="6">글내용입니다.</td>
		</tr>
	</table>
	
	<h2>답변</h2>
	<br>
	<hr class="second-hr" style="border: solid 1px;">
	<table>                    
		<tr>
			<td><textarea>답변내용입니다.</textarea></td>
		</tr>
	</table>
	
	<div id="buttons">
		<button type="button" onClick="window.close()">취소</button>
		<button type="submit" onclick="javascript:btn()">글쓰기</button>
	</div>
	
	<script> function btn(){ alert('답변이 완료되었습니다.'); } </script>
</body>
</html>