<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
#review-image img{
						margin:10px 0 0 15px;
					}
					#review-image span{
						margin: 7px 10px 5px 0px;
					}
					#review-image span:hover{
						cursor:pointer;
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
				<form action="modifyReview" name="mForm" method="post" onsubmit="return checkForm()">
				<input type="hidden" id="review_board_img_path" name="review_board_img_path">
				<input type="hidden" name="review_board_id" value="${review.review_board_id}">
				<table>
					<tr class="tr">
						<th>상품</th>
						<td colspan="6"><input id="product-name" type="text" readonly value="${review.product_name}">                                                                            
			            </td>
					</tr>
					<tr class="tr">
						<th><label id="title-label">제목</label></th>
						<td colspan="6"><input id="review-title" name="review_board_title" value="${review.review_board_title}" type="text"></td>
					</tr>
					<tr class="tr">
					    <th><label id="rating">평가</label></th>
					    <td>
                            <input type="radio" name="review_board_score" value="1" id="rate1"><label for="rate1"><img class="star-image" src="images/star1.png" alt="" /> &nbsp;</label>
                            <input type="radio" name="review_board_score" value="2" id="rate2"><label for="rate2"><img class="star-image" src="images/star2.png" alt="" /> &nbsp;</label>
                            <input type="radio" name="review_board_score" value="3" id="rate3"><label for="rate3"><img class="star-image" src="images/star3.png" alt="" /> &nbsp;</label>
                            <input type="radio" name="review_board_score" value="4" id="rate4"><label for="rate4"><img class="star-image" src="images/star4.png" alt="" /> &nbsp;</label>
                            <input type="radio" name="review_board_score" value="5" id="rate5"><label for="rate5"><img class="star-image" src="images/star5.png" alt="" /></label>
                        </td>
                   <tr class="tr">
                        <th><label id="file">첨부파일</label></th>
                        <td><input id="image-name" type="file" multiple onchange="addImg()">
                    </tr>
                            
					<tr>
						<td colspan="6"><textarea id="content" name="review_board_content">${review.review_board_content}</textarea><br>
						<label id="review-image">
						<c:set var="imgArr" value="${fn:split(review.review_board_img_path,',')}" />
						<c:forEach var="imgPath" items="${imgArr}" >
							<img id="${imgPath}" width="150" height="150" src="upload/${imgPath}" />
							<span class="${imgPath}" style="color: red; position: absolute;" onclick="deleteImg(event)">x</span>
						</c:forEach>
						</label><br><br>
					</tr>
					<tr>
					
				</table>
				<div id="buttons">
					<button type="button" onclick="cancel()">취소</button>
					<button onclick="">수정</button>
				</div>
				<br>
				<br>
				</form>
				</div>
				<c:import url="../../footer.jsp"/>
				<script src="js/user/qna/qnaM.js"></script>
				<script>
				let radioArr = document.getElementsByName("review_board_score");
				let review_board_img_path = document.getElementById("review_board_img_path");
				let reviewRabel = document.getElementById("review-image");
				
				for(radio of radioArr){
					if(radio.value === '${review.review_board_score}'){
						radio.checked = true;
					}
				}
				
				function addImg(){
					const fileInput = document.getElementById("image-name");
					const formData = new FormData();
					for(const file of fileInput.files){
						formData.append('imgs',file);
					}
					const options = {
							method: 'post',
							body: formData
					};
					fetch('addReviewImg',options)
					.then(res => res.json())
					.then(res=>{
						console.log('Success:',res);
						let imgPathArr = res.imgPaths.split(',');
						for(imgPath  of imgPathArr){
							let img = document.createElement('img');
							img.src = "upload/"+imgPath;
							img.id = imgPath;
							img.width = 150;
							img.height = 150;
							reviewRabel.appendChild(img);
							
							let span = document.createElement('span');
							span.innerText = 'x';
							span.style.color = 'red';
							span.style.position = "absolute";
							span.classList.add(imgPath);
							span.classList.add('tempSpan');
							reviewRabel.appendChild(span);
							span.addEventListener('click',deleteImg);
						}
					})
					.catch(err =>{
						console.error('Error:', err);
					})
				}
				
				function deleteImg(event){
					let data = event.target.classList[0];
					const options = {
							method:"post",
							body:data
					}
					fetch('deleteReviewImg?review_board_id=${review.review_board_id}',options)
					.then(res => res.json())
					.then(res => {
						console.log("Success:",res);
						let img = document.getElementById(event.target.classList[0]);
						img.remove();
						if(!event.target.classList.contains("tempSpan")){ //기존이미지파일 삭제시 db img path 수정
							let imgArr = document.querySelectorAll("#review-image img");
							let arr= [];
							for(img of imgArr){
								arr.push(img.id);
							}
							let data = arr;
							const options = {
									method:'post',
									body: data
							}
							fetch('modifyReviewImg?review_board_id=${review.review_board_id}',options)
							.then(res => res.json())
							.then(res => {
								console.log("Success:",res);
							})
							.catch(err => {
								console.error("Error:",err);
							})
						}
						event.target.remove();
						console.log(img);
					})
					.catch(err => {
						console.error('Error:',err);
					});
				}
				
				let flag = true;
				window.onbeforeunload = function() {
					if(flag){
						let spanArr = document.querySelectorAll(".tempSpan");
						for(span of spanArr){
							span.click();
						}		
					}
				}
				function cancel(){
					let spanArr = document.querySelectorAll(".tempSpan");
					for(span of spanArr){
						span.click();
					}
					history.back();
				}
				function checkForm(){
					flag = false;
					let imgArr = document.querySelectorAll("#review-image img");
					let arr= [];
					for(img of imgArr){
						arr.push(img.id);
					}
					review_board_img_path.value = arr;
				}
				</script>
			</body>

			</html>