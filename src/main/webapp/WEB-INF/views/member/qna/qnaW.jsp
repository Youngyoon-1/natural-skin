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
	font-size: 35px;
	margin: 15px;
	margin-top: 30px;
}

table{
	width:85%;
	margin: auto;
	border-collapse: collapse;
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
	padding-left: 10px;
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
#qna-title{
	margin: 0;
    padding: 0;
    font-style:initial;
    background-color: #f1f1f1;
    font-size: 16px;
    width: 90%; 
	height: 25px; 
	text-align: left;
	border: none;
}
#secret-check{
  width: 40px;	
}
.banner-image{
	width: 100%;
}
	
				</style>
			</head>

			<body>
			<c:import url="../../header.jsp"/>
			<div><img class="banner-image" src="images/banner.png"></div>
			    <div>
			    <br>
				<h2>문의하기</h2>
				<br>
				<hr class="second-hr" style="border: solid 1px;">
				<form action="writeQna" method="post">
				<input type="hidden" name="member_id" value="${member_id}">
				<table>
					<tr>
						<th>구분</th>
						<td><select id="qna-box" name="qna_board_type" onchange="select()">
                                 <option value="배송">배송</option>
                                 <option value="상품">상품</option>
                                 </select>
                                 <select id="product" onchange="" style="display:none">
                                 <c:forEach var="product" items="${productList}">
                                 	<option value="${product.product_id}">${product.product_name}</option>
                                 </c:forEach>
                                 </select>
						<td><div>비밀글<input type="checkbox" name="qna_board_lock" id="secret-check" value="1"></div></td>
					</tr>
					<tr>
						<th><label id="title-label">제목</label></th>
						<td colspan="6"><input id="qna-title" name="qna_board_title" value="" type="text"></td>
					</tr>
					<tr>
						<td colspan="6"><textarea id="content" name="qna_board_content"></textarea></td>
					</tr>
				</table>
				<div id="buttons">
					<button>글쓰기</button>
					<button type="button"onclick="history.back()">취소</button>
				</div>
				</form>
				</div>
				<br>
				<br>
				<c:import url="../../footer.jsp"/>
				<script src="js/user/qna/qnaM.js"></script>
				<script>
				let secondSelBox = document.getElementById("product");
				
				function select(){
					var qnaSelect = document.getElementById("qna-box");
					var selected = qnaSelect.options[qnaSelect.selectedIndex].text;
					if(selected == '상품'){
						product.style.display = "inline-block";
						secondSelBox.name="product_id";
						}
					else{
						product.style.display = "none";
						secondSelBox.name="";
					}
				    
		   }
				</script>
			</body>

			</html>