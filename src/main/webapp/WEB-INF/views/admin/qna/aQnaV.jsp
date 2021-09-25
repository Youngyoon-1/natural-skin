<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
				<br>
				<hr class="second-hr" style="border: solid 1px;">
				<div style="display:${(param.qna_board_reply_state == 2)?'none':''}">  <!--질문글-->
					<table>
						<tr>
							<th>구분</th>
							<td>${qna[0].qna_board_type}</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="6">${qna[0].qna_board_title}<img id="lock" style="display:${(qna[0].qna_board_lock == 0)?'none':''}" src="images/lock.png" alt="잠금" /></td>
						</tr>
						<tr>
							<th>아이디</th>
							<td>${qna[0].member_id}</td>
							<th>작성일</th>
							<td>
								<fmt:formatDate value="${qna[0].qna_board_date}" pattern="yyyy-MM-dd"/>
							</td>
							<th>조회수</th>
							<td>${qna[0].qna_board_hit}</td>
						</tr>
						<tr>
							<td id="content" colspan="6">${qna[0].qna_board_content}</td>
						</tr>
					</table>
					<div id="buttons">
						<button type="button" onClick="window.close()">닫기</button>
						<button type="button"
							onclick="window.open('aQnaAlert?qna_board_id=${qna[0].qna_board_id}&qna_board_reply_state=${qna[0].qna_board_reply_state}&qna_board_group_no=${qna[0].qna_board_group_no}','','width=600, height=200')">삭제</button>
					</div>
				</div>
				<div style="display:${(param.qna_board_reply_state != 2)?'none':''}">  <!--답글-->
					<table>
						<tr>
							<th>구분</th>
							<td>${qna[0].qna_board_type}</td>
						</tr>
						<tr>
							<th>제목</th>
							<td>${qna[0].qna_board_title}<img id="lock" src="images/lock.png" alt="잠금" /></td>
						</tr>
						<tr>
							<th>아이디</th>
							<td>${qna[0].member_id}</td>
							<th>작성일</th>
							<td>
								<fmt:formatDate value="${qna[0].qna_board_date}" pattern="yyyy-MM-dd"/>
							</td>
						</tr>
						<tr>
							<td id="content" colspan="6">${qna[0].qna_board_content}</td>
						</tr>
					</table>
	
					<h2>답변</h2>
					<br>
					<hr class="second-hr" style="border: solid 1px;">
					<form action="aQnaModify?qna_board_id=${qna[1].qna_board_id}&qna_board_group_no=${qna[1].qna_board_group_no}&qna_board_reply_state=${qna[1].qna_board_reply_state}" 
						onsubmit="return aQnaM()" method="post">
						<table>
							<tr>
								<th>아이디</th>
								<td>${qna[1].member_id}</td>
								<th>작성일</th>
								<td>
									<fmt:formatDate value="${qna[1].qna_board_date}" pattern="yyyy-MM-dd" />
								</td>
								<th>조회수</th>
								<td>${qna[1].qna_board_hit}</td>
							</tr>
							<tr>
								<td colspan="6"><textarea name="qna_board_content">${qna[1].qna_board_content}</textarea></td>
							</tr>
						</table>
						<div id="adminPageButtons">
							<button type="button" onClick="window.close()">취소</button>
							<button type="submit">수정</button>
							<button type="button"
								onclick="window.open('aQnaAlert?qna_board_id=${qna[1].qna_board_id}&qna_board_reply_state=${qna[1].qna_board_reply_state}&qna_board_group_no=${qna[1].qna_board_group_no}','','width=600, height=200')">삭제</button>
						</div>
					</form>
				</div>
				<script>
					/* function aQnaM(){
					} */
				</script>
			</body>
			</html>