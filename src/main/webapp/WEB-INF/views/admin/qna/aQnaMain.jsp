<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
	<div id="search-bar">
		<select id="select-box" onchange="select()">
			<option>아이디</option>
			<option>구분</option>
			<option>상태</option>
		</select>
		<input id="input" type="text">
		<select id="delimiter">
			<option>상품</option>
			<option>배송</option>
		</select>
		<select id="state">
			<option>미답변</option>
			<option>답변완료</option>
		</select>
		<img id="search-logo" src="images/search.png" style="border: solid 0.5px;">
	</div>
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
		<tr>
			<td>2</td>
			<td>배송</td>
			<td onclick="window.open('aQnaV1','','width=650, height=700')">언제 도착하나요?<img id="lock" src="images/lock.png" alt="잠금" /></td>
			<td>hong</td>
			<td>2021-09-07</td>
		</tr>
		<tr>
			<td>3</td>
			<td>배송</td>
			<td onclick="window.open('aQnaV2','','width=650, height=700')"><img id="re" src="images/re.png" alt="답글" />언제 도착하나요?<img id="lock" src="images/lock.png" alt="잠금" /></td>
			<td>admin</td>
			<td>2021-09-07</td>
		</tr>
		<tr>
			<td>1</td>
			<td>배송</td>
			<td onclick="window.open('adminPage1','child_window','width=650, height=700')">사용방법질문이요</td>
			<td>hong</td>
			<td>2021-09-07</td>
			<td class="reply_td"><button class="replyBtn"type="button" onclick="window.open('aQnaReply','','width=650, height=700')">답변하기</button></td>
		</tr>
	
	</table>
	<button type="button" onClick="location.href='aMain'">메인으로</button>
	<script>
		function select(){
			var firstSelect = document.getElementById("select-box");
			var selected = firstSelect.options[firstSelect.selectedIndex].text;
			var input = document.getElementById("input");
			var delimiter = document.getElementById("delimiter");
			var state = document.getElementById("state");
			if(selected == '구분'){
				input.style.display = "none";
				state.style.display = "none";
				delimiter.style.display = "inline-block";
			}else if(selected == '상태'){
				input.style.display = "none";
				delimiter.style.display = "none";
				state.style.display = "inline-block";
			}else{
				state.style.display = "none";
				delimiter.style.display = "none";
				input.style.display = "inline-block";
			}
		}
	</script>
</body>
</html>