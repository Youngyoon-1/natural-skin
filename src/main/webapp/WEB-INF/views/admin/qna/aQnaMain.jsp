<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/admin/qna/aQnaMain.css">
</head>
<body>
	<c:import url="../../header.jsp"/>
	<h1>관리자페이지</h1>
	<hr style="border: solid 2px;">
	<h2>Q&A관리</h2>
	<form action="aQnaMain?page=${pagingDto.page}" onsubmit="return search();">
		<div id="search-bar">
			<select name="countPerPage">
				<option value="50" ${(pagingDto.countPerPage == 50)?'selected':''}>50개씩보기</option>
				<option value="100" ${(pagingDto.countPerPage == 100)?'selected':''}>100개씩보기</option>
			</select>
			<select name="findBy" id="select-box" onchange="select()">
				<option ${(qnaDto.findBy == '')?'selected':''} value="">전체보기</option>
				<option ${(qnaDto.findBy == 'member_id')?'selected':''} value="member_id">아이디</option>
				<option ${(qnaDto.findBy == 'qna_board_type')?'selected':''} value="qna_board_type">구분</option>
				<option ${(qnaDto.findBy == 'qna_board_reply_state')?'selected':''} value="qna_board_reply_state">상태</option>
			</select>
			<input name="" id="input" type="text" value="${(qnaDto.findBy == 'member_id')?qnaDto.member_id:''}"style="display:${(qnaDto.findBy == 'member_id')?'':'none'}">
			<select name="" id="delimiter" style="display:${(qnaDto.findBy == 'qna_board_type')?'inline-block':''}">
				<option ${(qnaDto.qna_board_type == '상품')?'selected':''} value="상품">상품</option>
				<option ${(qnaDto.qna_board_type == '배송')?'selected':''} value="배송">배송</option>
			</select>
			<select name="" id="state" style="display:${(qnaDto.findBy == 'qna_board_reply_state')?'inline-block':''}">
				<option ${(qnaDto.qna_board_reply_state == 0)?'selected':''} value=0>미답변</option>
				<option ${(qnaDto.qna_board_reply_state == 1)?'selected':''} value=1>답변완료</option>
			</select>
			<input type="image" id="search-logo" src="images/search.png" style="border: solid 0.5px">
		</div>
	</form>
	<hr class="second-hr" style="border: solid 1px;">
	<table>                    
		<tr id="first-tr">
			<th>번호</th>
			<th>구분</th>
			<th>제목</th>
			<th>아이디</th>
			<th>작성일</th>
			<th></th>
		</tr>
		<c:forEach var="qna" items="${qnaList}" varStatus="status">
			<tr>
				<td>${pagingDto.startRN + status.index}</td>
				<td>${qna.qna_board_type}</td>
				<td onclick="window.open('aQnaV?qna_board_group_no=${qna.qna_board_group_no}&qna_board_reply_state=${qna.qna_board_reply_state}','','width=650, height=700')">
					<img id="re" src="images/re.png" alt="답글" style="display:${(qna.qna_board_reply_state == 2)?'':'none'}"/>
					${qna.qna_board_title}
					<img id="lock" src="images/lock.png" alt="잠금" style="display:${(qna.qna_board_lock == 1)?'':'none'}" />
				</td>
				<td>${qna.member_id}</td>
				<td>
					<fmt:formatDate value="${qna.qna_board_date}" pattern="yyyy-MM-dd"/>
				</td>
				<td class="reply_td" style="display:${(qna.qna_board_reply_state == 0)?'':'none'}">
					<button class="replyBtn"type="button" onclick="window.open('aQnaReply?qna_board_id=${qna.qna_board_id}','','width=650, height=700')">답변하기</button>
				</td>
			</tr>
		</c:forEach>
	</table>
	<div>
		<a href="aQnaMain?page=1&countPerPage=${pagingDto.countPerPage}&findBy=${qnaDto.findBy}&${qnaDto.findBy}=${param.member_id}${param.qna_board_type}${param.qna_board_reply_state}">
			처음
		</a>
		<a href="aQnaMain?page=${pagingDto.page-1}&countPerPage=${pagingDto.countPerPage}&findBy=${qnaDto.findBy}&${qnaDto.findBy}=${param.member_id}${param.qna_board_type}${param.qna_board_reply_state}">
			이전
		</a>
		<c:forEach var="no" begin="${pagingDto.startPage}" end="${pagingDto.endPage}">	
			<a href="aQnaMain?page=${no}&countPerPage=${pagingDto.countPerPage}&findBy=${qnaDto.findBy}&${qnaDto.findBy}=${param.member_id}${param.qna_board_type}${param.qna_board_reply_state}"
				class="${(pagingDto.page == no)?'bold':''}">
				${no}
			</a>
		</c:forEach>
		<a href="aQnaMain?page=${pagingDto.page+1}&countPerPage=${pagingDto.countPerPage}&findBy=${qnaDto.findBy}&${qnaDto.findBy}=${param.member_id}${param.qna_board_type}${param.qna_board_reply_state}">
			다음
		</a>
		<a href="aQnaMain?page=${pagingDto.totalPage}&countPerPage=${pagingDto.countPerPage}&findBy=${qnaDto.findBy}&${qnaDto.findBy}=${param.member_id}${param.qna_board_type}${param.qna_board_reply_state}">
			마지막
		</a>
	</div>
	<button type="button" onClick="location.href='aMain'">메인으로</button>
	<script>
		let input = document.getElementById("input");
		let select_box = document.getElementById("select-box");
		let delimiter = document.getElementById("delimiter");
		let state = document.getElementById("state");
		
		function search(){
			if(select_box.value === "qna_board_type"){
				delimiter.name = select_box.value;
			}else if(select_box.value === "qna_board_reply_state"){
				state.name = select_box.value;
			}else if(select_box.value === "member_id"){
				input.name = select_box.value;
			}
		}
		
		function select(){
			var firstSelect = document.getElementById("select-box");
			var selected = firstSelect.options[firstSelect.selectedIndex].text;
			var input = document.getElementById("input");
			var delimiter = document.getElementById("delimiter");
			var state = document.getElementById("state");
			
			input.value = "";
			if(selected == '구분'){
				input.style.display = "none";
				state.style.display = "none";
				delimiter.style.display = "inline-block";
			}else if(selected == '상태'){
				input.style.display = "none";
				delimiter.style.display = "none";
				state.style.display = "inline-block";
			}else if(selected == '전체보기'){
				input.style.display = "none";
				state.style.display = "none";
				delimiter.style.display = "none";
			}else{
				state.style.display = "none";
				delimiter.style.display = "none";
				input.style.display = "inline-block";
			}
		}
	</script>
</body>
</html>