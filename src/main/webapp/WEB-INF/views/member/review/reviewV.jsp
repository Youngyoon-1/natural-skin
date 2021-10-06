<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ page trimDirectiveWhitespaces="true" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title></title>
				<link rel="stylesheet" href="css/user/review/reviewV.css">
				<script type="text/javascript"></script>
				<style>
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
						width:79%;
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
					button{
						margin-left: 7px;
						padding: 2px;
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
						width: 77%; 
						height: 80px; 
						text-align: left;
						background-color: #F1F1F1;
						border:none;
						margin-top: 10px;
					}
					#content{
						padding-left: 4.7%;
					}
					#review-title{
						margin: 0;
					    padding: 0;
					    font-style:initial;
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
					#product-name{	
					    margin: 0;
					    padding: 0;
					    font-style:initial;
					    color: #7B7C95;
					    font-size: 18px;
					    text-align: left;
					    border: none;
					    height: 25px;
					}
					#product-choice{
						margin: 0;
						margin-left: 10px;
						
					}
					.star-image{
						width: 100px;
					}
					
					#review-img{
						width: 300px;
						margin-top: 20px;
						margin-left: 40px;
						margin-bottom: 20px;
					}
					#comment-button{
						position:relative;
						left: 35.5%;
						margin-bottom: 5px;
					}
					#comment-write{
					}
					summary {
						text-align: left;
					}
					#comments-btns{
						text-align: right;
					}
					#review-content{
						margin-left: 40px;
						text-align: left;
					}
					#comment-content{
						text-align: left;
						padding-bottom:2px;
					}
					#comment-btns{
						position: relative;
						left: 90%;
						margin-bottom: 5px;
						
					}
					#comment-id{
						font-weight: bold;
					}
					.banner-image{
						width: 100%;
					}
					.date{
						font-size:14px;
					}
					.comment{
						font-size:17px;
						line-height: 24px;
					}
					.tr{
						height:48px;
					}
					th > span{
						font-weight:normal;
					}
					#starImage{
						margin-bottom:5px;
					}
					#button{
						display:flex;
					}
					#toList{
					position:absolute;
						margin-left: 5%;
					}
				</style>
			</head>

			<body>
			<c:import url="../../header.jsp"/>
			<div><img class="banner-image" src="images/banner2.png"></div>
			    <div>
			    <br>
				<h2>리뷰상세보기</h2>
				<br>
				<hr class="second-hr" style="border: solid 1px;">
				<form action="">
				<table>
					<tr class="tr">
						<th>상품</th>
						<td colspan="6">
							Natural Soap                                                      
			            </td>
					</tr>
					<tr class="tr">
						<th><label id="title-label">제목</label></th>
						<td colspan="6">만족스럽습니다.</td>
					</tr>
					<tr class="tr">
					    <th><label>아이디</label>&nbsp;&nbsp;<span>son</span></th>
					    <th><label>작성일</label>&nbsp;&nbsp;<span>2018-01-09</span></th>
					    <th><label>별점</label>&nbsp;&nbsp;<span><img class="star-image" id="starImage" src="images/star5.png" alt="" /></span></th>
					    <th><label>조회수</label>&nbsp;&nbsp;<span>10</span></th>
					<tr>
						<td colspan="6">
							<label id="review-image"><img id="review-img" src="images/reviewimage.png" alt="" /></label>
							<div id="review-content">만족합니다!!<br>만족해요</div>
							<br>
						</td>
					</tr>
				</table>
				</form>
				</div>
				<div id="comment">
				<h2>댓글</h2>
				<p id="reply">악의적인 비방글은 무통보 삭제된다는 점 유의해주세요^^</p>
				<form action="">
					<textarea placeholder="로그인 해주세요"></textarea><br>
					<button id="comment-button" value="">댓글달기</button><br>
				</form>
				<table>
				<tr></tr>
				<tr>
				<td><br>
					<div id="comment-content">
						<label id="comment-id">작성자</label><br>
					    <label class="date">2018-02-02</label><br>
					    &nbsp;<label class="comment">상품 만족해요</label><br>
					     <span id="comment-btns"><button type="button" onClick="">수정</button>
						<button type="button" onclick="">삭제 </button></span>
				    </div>
				    <details>
					    <summary> 댓글2</summary>
					    <hr class="second-hr">
					    <div id="comment-write">
						    <form action="">
						    <textarea placeholder="로그인 해주세요"></textarea><br>
							<button id="comment-button" value="">댓글달기</button>
							<br>
							<table>
								<tr></tr>
								<tr>
									<td><br>
										<div id="comment-content">
											<label id="comment-id">작성자2</label><br>
										    <label class="date">2018-02-02</label><br>
										    &nbsp;<label class="comment">상품 만족해요</label><br>
											<span id="comment-btns"><button type="button" onClick="">수정</button>
											<button type="button" onclick="">삭제 </button></span>
									    </div>
									 </td>
								 </tr>
							 </table>
							</form>
						</div>
				    </details>
				    <br>
				</td>
				</tr>
				<tr>
					<td>
						<br>
						<label id="comment-id">작성자3</label><br>
					    <label class="date">2018-02-23</label><br>
					    &nbsp;<label class="comment">리뷰 좋네요</label>
					    <details>
					    <summary> 댓글작성</summary>
					    <hr class="second-hr">
					    <div id="comment-write">
						    <form action="">
							    <textarea placeholder="로그인 해주세요"></textarea><br>
								<button id="comment-button" value="">댓글달기</button>
							</form>
						</div>
				    </details>
				    <br>
					</td>
				</tr>
				</table>
				</div>
				<br>
				<hr class="second-hr" style="border: solid 1px;">
				<br>
				<br>
				<div id="button">
					<button id="toList" onclick="location.href='reviewMain'">목록으로</button>
					<div id="buttons">
						<button type="button" onClick="location.href='reviewM'">리뷰수정</button>
						<button type="button"
							onclick="window.open('reviewAlert','','width=600, height=200')">리뷰삭제 </button>
					</div>
				</div>
				<br>
				<br>
				<br>
				<c:import url="../../footer.jsp"/>
				<script src="js/user/qna/qnaM.js"></script>
			</body>

			</html>