<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ page trimDirectiveWhitespaces="true" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title></title>
				<link rel="stylesheet" href="css/admin/qna/aQnaV.css">
			</head>

			<body>
				<h2>Q&A상세보기</h2>
				<hr class="second-hr" style="border: solid 1px;">
				<table>
					<tr>
						<th>구분</th>
						<td>배송</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="6">언제도착하나요?<img id="lock" src="images/lock.png" alt="잠금" /></td>
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
						<td id="content" colspan="6">글내용입니다.</td>
					</tr>
				</table>
				<div id="buttons">
					<button type="button" onClick="window.close()">취소</button>
					<button type="button"
						onclick="window.open('aQnaAlert','','width=600, height=200')">삭제</button>
				</div>
			</body>

			</html>