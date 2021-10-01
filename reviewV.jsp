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
			</head>

			<body>
			<c:import url="../../header.jsp"/>
			<div><img class="banner-image" src="images/banner2.png"></div>
			    <div>
				<h2>리뷰상세보기</h2>
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
						<td colspan="6"><input id="review-title" value="만족스럽습니다" type="text" readonly></td>
					</tr>
					<tr>
					    <th><label>아이디</label></th>
					    <TD><span>son</span></TD>
					    <th><label>작성일</label></th>
					    <TD>2018-01-09</TD>
					    <th><label>별점</label></th>
					    <TD><img class="star-image" src="images/star5.png" alt="" /></TD>
					    <th><label>조회수</label></th>
					    <TD>10</TD>
					<tr>
						<td colspan="6"><input type="hidden"><div id="review-content">만족합니다!!<br>만족해요</div><br>
						<label id="review-image"><img id="review-img" src="images/reviewimage.png" alt="" /></label></td>
					</tr>
					<tr>
				</table>
				</form>
				</div>
				<div id="comment">
				<h2>댓글</h2>
				<div id="comment-write"><form action="">
				<textarea placeholder="로그인 해주세요"></textarea><br>
				<button id="comment-button" value="">댓글달기</button>
				</form>
				</div>
				<hr class="second-hr" style="border: solid 1px;">
				<table>
				<tr>
				<td><div id="comment-content"><label id="comment-id">작성자</label><br>
				    <label>2018-02-02</label><br>
				    <label>상품 만족해요</label><br>
					<span id="comment-btns"><button type="button" onClick="">수정</button>
					<button type="button" onclick="">삭제 </button></span>
				    </div>
				    <details>
				    <summary> 댓글2</summary>
				    <hr class="second-hr" style="border: solid 1px;">
				    <div id="comment-write"><form action="">
				    <textarea placeholder="로그인 해주세요"></textarea><br>
				<button id="comment-button" value="">댓글달기</button>
				<table>
				<tr>
				<td><div id="comment-content"><label id="comment-id">작성자2</label><br>
				    <label>2018-02-02</label><br>
				    <label>상품 만족해요</label><br>
					<span id="comment-btns" style="display:none"><button type="button" onClick="">수정</button>
					<button type="button" onclick="">삭제 </button></span>
				    </div>
				    <details>
				    <summary> 댓글달기</summary>
				    </details>
				    </td>
				    </tr>
				    </table>
				</form></div>
				    </details>
				    </td>
				</tr>
				<tr>
				<td><label id="comment-id">작성자3</label><br>
				    <label>2018-02-023</label><br>
				    <label>리뷰 좋네요</label></td>
				</tr>
				</table>
				</div>
				<div id="buttons">	
					<button type="button" onClick="location.href='reviewM'">수정</button>
					<button type="button"
						onclick="window.open('reviewAlert','','width=600, height=200')">삭제 </button>
				</div>
				<c:import url="../../footer.jsp"/>
				<script src="js/user/qna/qnaM.js"></script>
			</body>

			</html>