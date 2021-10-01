<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ page trimDirectiveWhitespaces="true" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title></title>
				<link rel="stylesheet" href="css/user/qna/qnaM.css">
				<script type="text/javascript"></script>
			</head>

			<body>
			<c:import url="../../header.jsp"/>
			<div><img class="banner-image" src="images/banner.png"></div>
				<h2>문의글수정</h2>
				<hr class="second-hr" style="border: solid 1px;">
				<form action="">
				<table>
					<tr>
						<th>구분</th>
						<td><select id="qna-box" onchange="select()">
                                 <option value=>배송</option>
                                 <option value="">상품</option>
                                 </select>
                                 <select id="product" onchange="" style="display:none">
                                 <option value=>상품1</option>
                                 <option value=>상품2</option>
                                 <option value=>상품3</option>
                                 </select>
                                                                                                                   
                                                                    
						<td><div>비밀글<input type="checkbox" id="secret-check" value="secret-content"></div></td>
					</tr>
					<tr>
						<th><label id="title-label">제목</label></th>
						<td colspan="6"><input id="qna-title" value="배송문의입니다" type="text"></td>
					</tr>
					<tr>
						<td colspan="6"><textarea id="content" onkeydown="resize(this)" onkeyup="resize(this)"> 배송문의입니다.
		</textarea></td>
					</tr>
				</table>
				<div id="buttons">
					<button type="button" onclick="location.href='qnaM'">수정</button>
					<button type="button"
						onclick="history.back()">취소</button>
				</div>
				</form>
				<c:import url="../../footer.jsp"/>
				<script src="js/user/qna/qnaM.js"></script>
			</body>

			</html>