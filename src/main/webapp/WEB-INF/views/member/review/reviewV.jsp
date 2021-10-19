<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
					#tr{
						border-bottom:2px solid #7B7C95;
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
							${review.product_name}                                                      
			            </td>
					</tr>
					<tr class="tr">
						<th><label id="title-label">제목</label></th>
						<td colspan="6">${review.review_board_title}</td>
					</tr>
					<tr class="tr">
					    <th><label>아이디</label>&nbsp;&nbsp;<span>${review.member_id}</span></th>
					    <th><label>작성일</label>&nbsp;&nbsp;<span><fmt:formatDate value="${review.review_board_date}" pattern="yyyy-MM-dd" /></span></th>
					    <th><label>별점</label>&nbsp;&nbsp;<span><img class="star-image" id="starImage" src="images/star${review.review_board_score}.png" alt="" /></span></th>
					    <th><label>조회수</label>&nbsp;&nbsp;<span>${review.review_board_hit}</span></th>
					<tr id="tr">
						<td colspan="6">
							<br>
							<div id="review-content">${review.review_board_content}</div>
							<label id="review-image">
							<c:set var="imgArr" value="${fn:split(review.review_board_img_path,',')}"/>
							<c:forEach var="imgPath" items="${imgArr}">
								<img id="review-img" src="upload/${imgPath}" alt="" />
							</c:forEach>
							</label>
						</td>
					</tr>
				</table>
				</form>
				</div>
				<div id="comment">
				<h2 style="display:${(fn:length(list) == 0 && member_id == null)?'none':''}">댓글</h2>
				<br>
				<form action="writeReply" method="post" style="display:${(member_id == '' || member_id == null)?'none':''}">
					<p id="reply">악의적인 비방글은 무통보 삭제된다는 점 유의해주세요^^</p>
					<input type="hidden" name="review_board_id" value="${review.review_board_id}">
					<input type="hidden" name="member_id" value="${member_id}">
					<textarea name="review_reply_content" placeholder="악의적인 비방글은 무통보 삭제된다는 점 유의해주세요^^"></textarea><br>
					<button id="comment-button" value="">댓글달기</button><br>
				</form>
				<table>
				<tr></tr>
				<c:forEach var="reply1" items="${list}">
				<c:choose>
				<c:when test="${reply1.review_reply_group_no eq 0}">
					<tr>
				<td><br>
					<div id="comment-content">
						<label id="comment-id">${reply1.member_id}</label><br>
					    <label class="date"><fmt:formatDate value="${reply1.review_reply_date}" pattern="yyyy-MM-dd"/></label><br>
					    &nbsp;<label class="comment">${reply1.review_reply_content}</label><br>
					     <span id="comment-btns"><button type="button" style="display:${(member_id == reply1.member_id)?'':'none'}" onClick="window.open('reviewReplyM?review_reply_id=${reply1.review_reply_id}','','width=600, height=270')">수정</button>
						<button type="button" style="display:${(member_id == reply1.member_id)?'':'none'}" onclick="location.href='deleteReply?review_board_id=${reply1.review_board_id}&review_reply_id=${reply1.review_reply_id}'">삭제 </button></span>
				    </div>
				    <c:set var="count" value='0'/>
				    <c:forEach var="reply2" items="${list}">
				    	<c:if test="${reply1.review_reply_id eq reply2.review_reply_group_no}">
				    	 <c:set var="count" value="${count+1}"/>
				    	</c:if>
				    </c:forEach>
				    <details>
					    <summary> 댓글${(count == '0')?'작성':count}</summary>
					    <hr class="second-hr">
					    <div id="comment-write">
						    <form action="writeReply" method="post" style="display:${(member_id == '' || member_id == null)?'none':''}">
						    <input type="hidden" name="review_board_id" value="${review.review_board_id}">
							<input type="hidden" name="member_id" value="${member_id}">
							<input type="hidden" name="review_reply_group_no" value="${reply1.review_reply_id}">
						    <textarea placeholder="악의적인 비방글은 무통보 삭제된다는 점 유의해주세요^^" name="review_reply_content"></textarea><br>
							<button id="comment-button">댓글달기</button>
							</form>
							<br>
							<table>
								<tr></tr>
								<c:forEach var="reply3" items="${list}">
									<c:if test="${reply1.review_reply_id eq reply3.review_reply_group_no}">
										<tr>
									<td><br>
										<div id="comment-content">
											<label id="comment-id">${reply3.member_id}</label><br>
										    <label class="date"><fmt:formatDate value="${reply3.review_reply_date}" pattern="yyyy-MM-dd" /></label><br>
										    &nbsp;<label class="comment">${reply3.review_reply_content}</label><br>
											<span id="comment-btns"><button style="display:${(member_id == reply3.member_id)?'':'none'}" type="button"  onClick="window.open('reviewReplyM?review_reply_id=${reply3.review_reply_id}','','width=600, height=300')">수정</button>
											<button style="display:${(member_id == reply3.member_id)?'':'none'}" type="button" onclick="location.href='deleteReply?review_board_id=${reply3.review_board_id}&review_reply_id=${reply3.review_reply_id}'">삭제 </button></span>
									    </div>
									 </td>
								 	</tr>
									</c:if>
								</c:forEach>
							 </table>
						</div>
				    </details>
				    <br>
				</td>
				</tr>
				</c:when>
				</c:choose>
				</c:forEach>
				</table>
				</div>
				<br>
				<hr style="display:${(fn:length(list) == 0 && member_id == null)?'none':''}" class="second-hr" style="border: solid 1px;">
				<br>
				<br>
				<div id="button">
					<button id="toList" onclick="location.href='reviewMain'">목록으로</button>
					<div id="buttons" style="display:${(member_id == review.member_id)?'':'none'}">
						<button type="button" onClick="location.href='reviewM?review_board_id=${review.review_board_id}'">리뷰수정</button>
						<button type="button"
							onclick="window.open('reviewAlert?review_board_id=${review.review_board_id}','','width=600, height=200')">리뷰삭제 </button>
					</div>
				</div>
				<br>
				<br>
				<br>
				<c:import url="../../footer.jsp"/>
				<script src="js/user/qna/qnaM.js"></script>
				<script>
				function replyModify(){
					
				}
				</script>
			</body>

			</html>