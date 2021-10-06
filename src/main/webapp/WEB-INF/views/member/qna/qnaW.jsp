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
                                                                                                                   
                                                                    
						<td><div>비밀글<input type="checkbox" id="secret-check" value=""></div></td>
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
					<button type="button" onclick="">글쓰기</button>
					<button type="button"
						onclick="history.back()">취소</button>
				</div>
				</form>
				</div>
				<br>
				<br>
				<c:import url="../../footer.jsp"/>
				<script src="js/user/qna/qnaM.js"></script>
				<script>
				function select(){
					var qnaSelect = document.getElementById("qna-box");
					var selected = qnaSelect.options[qnaSelect.selectedIndex].text;
					if(selected == '상품'){
						product.style.display = "inline-block";
						}
					else{
						product.style.display = "none";
					}
				    
		   }
		   function resize(obj){
			obj.style.height = '1px';
			obj.style.height = (12 + obj.scrollHeight) + 'px';
			}
				
			
				</script>
			</body>

			</html>