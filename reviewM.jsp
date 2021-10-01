<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ page trimDirectiveWhitespaces="true" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title></title>
				<link rel="stylesheet" href="css/user/review/reviewM.css">
				<script type="text/javascript"></script>
			</head>

			<body>
			<c:import url="../../header.jsp"/>
			<div><img class="banner-image" src="images/banner2.png"></div>
			    <div>
				<h2>리뷰수정하기</h2>
				<hr class="second-hr" style="border: solid 1px;">
				<form action="">
				<table>
					<tr>
						<th>상품</th>
						<td colspan="6"><input id="product-name" type="text" readonly value="Natural Soap">                                                                            
			            </td>
					</tr>
					<tr>
						<th><label id="title-label">제목</label></th>
						<td colspan="6"><input id="review-title" value="리뷰제목" type="text"></td>
					</tr>
					<tr>
					    <th><label id="rating">평가</label></th>
					    <td>
                            <input type="radio" name="rating" value="1" id="rate1"><label for="rate1"><img class="star-image" src="images/star1.png" alt="" /></label>
                            <input type="radio" name="rating" value="2" id="rate2"><label for="rate2"><img class="star-image" src="images/star2.png" alt="" /></label>
                            <input type="radio" name="rating" value="3" id="rate3"><label for="rate3"><img class="star-image" src="images/star3.png" alt="" /></label>
                            <input type="radio" name="rating" value="4" id="rate4"><label for="rate4"><img class="star-image" src="images/star4.png" alt="" /></label>
                            <input type="radio" name="rating" value="5" id="rate5"><label for="rate5"><img class="star-image" src="images/star5.png" alt="" /></label>
                            </td>
                    <tr>
                        <th><label id="file">첨부파일</label></th>
                        <td><input id="image-name" type="text" readonly value="image.png"> <button id="product-choice" onclick="" >파일첨부</button>
              
                    </tr>
                            
					<tr>
						<td colspan="6"><textarea id="content" onkeydown="resize(this)" onkeyup="resize(this)"> 내용</textarea><br>
						<label id="review-image"><img id="review-img" src="images/reviewimage.png" alt="" /></label></td>
					</tr>
					<tr>
					
				</table>
				<div id="buttons">
					<button type="button" onclick="">수정</button>
					<button type="button"
						onclick="history.back()">취소</button>
				</div>
				</form>
				</div>
				<c:import url="../../footer.jsp"/>
				<script src="js/user/qna/qnaM.js"></script>
			</body>

			</html>