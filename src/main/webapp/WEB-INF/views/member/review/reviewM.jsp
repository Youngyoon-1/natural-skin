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
				<style>
				@charset "UTF-8";
*{
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 15px;
    text-align: center;
}

hr{
	margin-left: 50px;
    margin-right: 50px;
}	

h2{
	font-size: 30px;
	margin: 15px;
	margin-top: 30px;
}

table{
	width:85%;
	margin: auto;
	border-collapse: collapse;
	border-bottom: none;
}

tr {
	border-bottom:.5px solid #7B7C95;
}
td {
	text-align: left;
}

 th, td{
	padding: 10px;
}
th {
	width: 150px;
}

button{
	margin-left: 15px;
	margin-top: 20px;
	padding: 3px;
	letter-spacing: .5px;
}

button:hover{
	cursor: pointer;
}

img {
	vertical-align:middle;
}
#lock {
	width: 20px;
	height: 20px;
}

#buttons {
	width: 300px;
	margin: auto;
}

#adminPageButtons {
	width: 400px;
	margin: auto;
}

textarea {
	padding-left: 5px;
	width: 80%; 
	height: 200px; 
	text-align: left;
	background-color: #F1F1F1;
	border:none;
	margin-left: 100px;
}
#content{
	padding-left: 2%;
}
#review-title{
	margin: 0;
    padding: 0;
    font-style:initial;
    background-color: #f1f1f1;
    font-size: 16px;
    width: 80%; 
	height: 25px; 
	text-align: left;
	border: none;
	padding-left: 5px;
}
#secret-check{
  width: 40px;	
}
#product-name, #image-name{	
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 16px;
    text-align: center;
    background-color: #f1f1f1;
    border: none;
    height: 25px;
}
#product-choice{
	margin: 0;
	margin-left: 10px;
	
}
.star-image{
	width: 100px;
	margin-bottom: 5px;
}

#review-img{
	width: 300px;
	margin-top: 30px;
	margin-left: 100px;
}

#product-name{
	background-color: white;
	font-size: 18px;
	text-align: left;	
	
}
.banner-image{
	width: 100%;
}
.tr{
	height: 48px;
}
				</style>
			</head>

			<body>
			<c:import url="../../header.jsp"/>
			<div><img class="banner-image" src="images/banner2.png"></div>
			    <div>
			    <br>
				<h2>리뷰수정하기</h2>
				<br>
				<hr class="second-hr" style="border: solid 1px;">
				<form action="">
				<table>
					<tr class="tr">
						<th>상품</th>
						<td colspan="6"><input id="product-name" type="text" readonly value="Natural Soap">                                                                            
			            </td>
					</tr>
					<tr class="tr">
						<th><label id="title-label">제목</label></th>
						<td colspan="6"><input id="review-title" value="리뷰제목" type="text"></td>
					</tr>
					<tr class="tr">
					    <th><label id="rating">평가</label></th>
					    <td>
                            <input type="radio" name="rating" value="1" id="rate1"><label for="rate1"><img class="star-image" src="images/star1.png" alt="" /> &nbsp;</label>
                            <input type="radio" name="rating" value="2" id="rate2"><label for="rate2"><img class="star-image" src="images/star2.png" alt="" /> &nbsp;</label>
                            <input type="radio" name="rating" value="3" id="rate3"><label for="rate3"><img class="star-image" src="images/star3.png" alt="" /> &nbsp;</label>
                            <input type="radio" name="rating" value="4" id="rate4"><label for="rate4"><img class="star-image" src="images/star4.png" alt="" /> &nbsp;</label>
                            <input type="radio" name="rating" value="5" id="rate5"><label for="rate5"><img class="star-image" src="images/star5.png" alt="" /></label>
                        </td>
                    <tr class="tr">
                        <th><label id="file">첨부파일</label></th>
                        <td><input id="image-name" type="text" readonly value="image.png"> <button id="product-choice" onclick="" >파일첨부</button>
              
                    </tr>
                            
					<tr>
						<td colspan="6"><textarea id="content" onkeydown="resize(this)" onkeyup="resize(this)"> 내용</textarea><br>
					</tr>
					<tr>
					
				</table>
				<div id="buttons">
					<button type="button" onclick="history.back()">취소</button>
					<button type="button" onclick="">수정</button>
				</div>
				<br>
				<br>
				</form>
				</div>
				<c:import url="../../footer.jsp"/>
				<script src="js/user/qna/qnaM.js"></script>
			</body>

			</html>