<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ page trimDirectiveWhitespaces="true" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title></title>
				<link rel="stylesheet" href="css/user/qna/qnaV2.css">
			</head>

			<body>
			<c:import url="../../header.jsp"/>
			<div><img class="banner-image" src="images/banner.png"></div>
				<h2>문의내용 상세보기</h2>
				<hr class="second-hr" style="border: solid 1px;">
				<table id="ask-table">
					<tr>
						<th>구분</th>
						<td>배송</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="6">배송문의입니다<img id="lock" src="images/lock.png" alt="잠금" /></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>hong</td>
						<th>작성일</th>
						<td>2021-09-07</td>
					</tr>
					<tr>
						<td id="content" colspan="6">언제도착할까요</td>
						
					</tr>
					
				</table>
				<h2>답변</h2>
				<hr class="second-hr" style="border: solid 1px;">
				<table id="answer-table">
					<tr>
						<th>구분</th>
						<td>배송</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="6">배송문의입니다<img id="lock" src="images/lock.png" alt="잠금" /></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>관리자</td>
						<th>작성일</th>
						<td>2021-09-07</td>
						<th>조회수</th>
						<td>10</td>
					</tr>
					<tr>
						<td id="content" colspan="6">죄송합니다. 오늘 발송 처리 하였습니다</td>
					</tr>
				</table>
				
				<div id="buttons">
					<button type="button" onclick="location.href='qnaMain'">목록</button>
				</div>
				<c:import url="../../footer.jsp"/>
			</body>

			</html>