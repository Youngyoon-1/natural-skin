<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/user/qna/qnamain.css">
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
#btns{
    margin: 50px;
    display:inline-block;
}
h1{
    margin: 50px;
    font-size: 50px;
}
hr{
	margin-left: 50px;
    margin-right: 50px;
    margin-top: 15px;
}
#search-logo{
	vertical-align:middle;
	margin-bottom:2px;
}
#lock-logo,#reply-logo{
    width: 20px;
    position: relative;
    top: 2.8px;
    
}
.banner-image{
	width: 100%;
}
#reply-logo{
    width: 30px;
    
}
#search-logo:hover{
	cursor: pointer;
}
#search-bar{
	text-align: right;
	margin-right: 50px;
	margin-left: 55px;	
	
}
h2{
	font-size: 30px;
	margin: 15px;
	margin-top: 30px;
}
.second-hr{
	margin-left: 65px;
    margin-right: 65px;
    margin-top: 0;
}
#role{
	display: none;
}
table{
	width:90%;
	margin: 10px auto;
	border-collapse: collapse;
}
 th, td{
	border-bottom:.5px solid #7B7C95;
	padding: 10px;
}

#button1{
	padding: 3px;
}
tr:hover:not(#first-tr){
	background-color: #f2f2f2;
	opacity: .7;
	cursor: pointer;
	transition-duration: .2s;
}
button:hover{
	cursor: pointer;
}
#btn{
	display:flex;
	justify-content: end;
	margin-right: 5%;
}
.bold{
	font-weight: bold;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<div><img class="banner-image" src="images/banner.png"></div>
	<h1>Q&A</h1>
	<form action="qnaMain" onsubmit="return checkForm()">
	<div id="search-bar">
			<select id="select-box" name="findBy" onchange="roleClick(this.value)">
				<option value="">전체보기</option>
				<option value="member_id">아이디</option>
				<option value="qna_board_type">구분</option>
				<option value="qna_board_title">제목</option>
			</select>
			<select name="qna_board_type" id="qna_board_type" onchange="typeClick(this.value)">
				<option value="배송">배송</option>
				<option value="상품">상품</option>
			</select>
			<select name="product_id" id="product_name">
				<c:forEach var="prodcut" items='${productList}'>
				<option value="${prodcut.product_id}">${prodcut.product_name}</option>
				</c:forEach>
			</select>
			<input value="${qnaDto.member_id}${qnaDto.qna_board_title}" id="input" type="text">
			<input  id="search-logo"  type="image" src="images/search.png" style="border: solid 0.5px;">
	</div>
	</form>
	<hr style="border: solid 2px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>구분</th>
		<th>제목</th>
		<th>아이디</th>
		<th>작성일</th>
	</tr>
	<c:forEach var="qna" items="${list}" varStatus="status">
	<tr onclick="checkAuthor(${qna.qna_board_id},${qna.qna_board_lock},'${qna.member_id}','${qna.qna_board_querist}')">
		<td>${pagingDto.startRN + status.index}</td>
		<td>${qna.qna_board_type}</td>
		<td><img id="reply-logo" style="display:${(qna.qna_board_reply_state == 2)?'':'none'}"src="images/re.png">${qna.qna_board_title}<img id="lock-logo" style="display:${(qna.qna_board_lock == 1)?'':'none'}" src="images/lock.png"></td>
		<td>${qna.member_id}</td>
		<td><fmt:formatDate value="${qna.qna_board_date}" pattern="yyyy-MM-dd" /></td>
	</tr>
	</c:forEach>
	</table>
	<div>
		<a href="qnaMain?page=1&findBy=${qnaDto.findBy}&${qnaDto.findBy}=${qnaDto.member_id}${qnaDto.qna_board_title}${qnaDto.qna_board_type}&product_id=${qnaDto.product_id}">처음</a>
		<a href="qnaMain?page=${pagingDto.page - 1}&findBy=${qnaDto.findBy}&${qnaDto.findBy}=${qnaDto.member_id}${qnaDto.qna_board_title}${qnaDto.qna_board_type}&product_id=${qnaDto.product_id}">이전</a>
		<c:forEach var="no" begin="${pagingDto.startPage}" end="${pagingDto.endPage}">
			<a class="${(pagingDto.page == no)?'bold':''}" href="qnaMain?page=${no}&findBy=${qnaDto.findBy}&${qnaDto.findBy}=${qnaDto.member_id}${qnaDto.qna_board_title}${qnaDto.qna_board_type}&product_id=${qnaDto.product_id}">${no}</a>
		</c:forEach>
		<a href="qnaMain?page=${pagingDto.page + 1}&findBy=${qnaDto.findBy}&${qnaDto.findBy}=${qnaDto.member_id}${qnaDto.qna_board_title}${qnaDto.qna_board_type}&product_id=${qnaDto.product_id}">다음</a>
		<a href="qnaMain?page=${pagingDto.totalPage}&findBy=${qnaDto.findBy}&${qnaDto.findBy}=${qnaDto.member_id}${qnaDto.qna_board_title}${qnaDto.qna_board_type}&product_id=${qnaDto.product_id}">마지막</a>
	</div>
	<div id="btn">
		<button id="button1" type="button" onclick="location.href='qnaW'">글쓰기</button>
	</div>
	<br><br><br>
	<c:import url="../../footer.jsp"/>
	<script>
	let mainBox = document.getElementById("select-box");
	let searchInput = document.getElementById("input");
	let qna_board_type = document.getElementById("qna_board_type");
	let product_name = document.getElementById("product_name");
	searchInput.style.display='none';
	qna_board_type.style.display='none';
	product_name.style.display='none';
	
	let firstSelOpts = document.querySelectorAll("#select-box option");
	let secondSelOpts = document.querySelectorAll("#qna_board_type option");
	let thirdSelOpts = document.querySelectorAll("#product_name option");
	
	for(opt of firstSelOpts){
		if(opt.value === '${qnaDto.findBy}'){
			opt.selected = true;
			if(opt.value === 'member_id' || opt.value === "qna_board_title"){
				searchInput.style.display='inline-block';
				qna_board_type.style.display='none';
				product_name.style.display='none';
			}else if(opt.value === "qna_board_type"){
				searchInput.style.display='none';
				qna_board_type.style.display='inline-block';
				product_name.style.display='none';
				autoChoiceType();
			}
		}
	}
	
	function autoChoiceType(){
		for(opt of secondSelOpts){
			if(opt.value === '${qnaDto.qna_board_type}'){
				opt.selected = true;
				if(opt.value === "상품"){
					product_name.style.display='inline-block';
					autoChoiceProduct();
				}
			}
		}
	}
	function autoChoiceProduct(){
		for(opt of thirdSelOpts){
			if(opt.value === '${qnaDto.product_id}'){
				opt.selected = true;
			}
		}
	}
	
	function roleClick(value){
		searchInput.value = "";
		if(value === ""){
			searchInput.style.display='none';
			qna_board_type.style.display='none';
			qna_board_type.name="";
			product_name.style.display='none';
			product_name.name="";
			
		}else if(value === "member_id" || value === "qna_board_title"){
			searchInput.style.display='inline-block';
			qna_board_type.style.display='none';
			qna_board_type.name="";
			product_name.style.display='none';
			product_name.name="";
		}else if(value === "qna_board_type"){
			searchInput.style.display='none';
			qna_board_type.style.display='inline-block';
			qna_board_type.name="qna_board_type";
			product_name.style.display='none';
			product_name.name="";
		}
		
	}
	function typeClick(value){
		if(value === "상품"){
			product_name.style.display='inline-block';
			product_name.name="product_id";
		}else if(value === "배송"){
			product_name.style.display='none';
			product_name.name="";
		}
	}
	function checkForm(){
		if(mainBox.value === "member_id"){
			searchInput.name = "member_id";
		}else if(mainBox.value === "qna_board_title"){
			searchInput.name = "qna_board_title";
		}
		if(mainBox.value !== "qna_board_type"){
			qna_board_type.name = "";
		}else{
			qna_board_type.name = "qna_board_type";
		}
	}
	function checkAuthor(boardId,boardLock,memberId,queristId){
		if(boardLock === 1){
			if('${member_id}' === ''){
				return alert('접근권한이 없습니다');
			}
			if('${member_role}' === 'admin'){
				window.location.href='qnaV?qna_board_id='+boardId;
			}else{
				if('${member_id}' === memberId){
					window.location.href='qnaV?qna_board_id='+boardId;
				}else{
					if('${member_id}' === queristId){
						window.location.href='qnaV?qna_board_id='+boardId;
					}else{
						return alert('접근권한이 없습니다');
					}
				}
			}
		}else{
			window.location.href='qnaV?qna_board_id='+boardId;
		}
	}
	</script>
</body>
</html>