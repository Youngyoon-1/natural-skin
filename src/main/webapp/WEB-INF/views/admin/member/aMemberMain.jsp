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
<link rel="stylesheet" href="css/admin/member/aMemberMain.css">
<script type="text/javascript"></script>
</head>
<body>
	<c:import url="../../header.jsp"/>
	<h1>관리자페이지</h1>
	<hr style="border: solid 2px;">
	<h2>회원리스트</h2>
	<div id="selectCountPerPage">
		<select id="countPerPage">
			<option class="countPerPage" value=50 >50개씩보기</option>
			<option class="countPerPage" value=100>100개씩보기</option>
		</select>
		<img id="search-logo" src="images/search.png" style="border: solid 0.5px;" onclick="reqCPP();">
	</div>
	<div id="search-bar">
		<select id="select-box" onchange="selected1st(this.value);">
			<option ${(param.findBy == "")?"selected":""} value="">전체보기</option>
			<option ${(param.findBy == "member_id")?"selected":""} value="member_id">아이디</option>
			<option ${(param.findBy == "member_name")?"selected":""} value="member_name">이름</option>
			<option ${(param.findBy == "member_role")?"selected":""} value="member_role">분류</option>
		</select>
		<input id="input" type="text" value="${param.member_id}${param.member_name}${param.member_role}">
		<select id="role" onchange="selected2nd(this.value);">
			<option ${(param.member_role == 0)?"selected":""} value="0">일반회원</option>
			<option ${(param.member_role == 1)?"selected":""} value="1">관리자</option>
		</select>
		<img id="search-logo" src="images/search.png" style="border: solid 0.5px;" onclick="searchMemberBy();">
	</div>
	<hr class="second-hr" style="border: solid 1px;">
	<table>
	<tr id="first-tr">
		<th>번호</th>
		<th>분류</th>
		<th>아이디</th>
		<th>이름</th>
		<th>가입일</th>
	</tr>
	<c:forEach var="memberInfo" items="${allMemberList}" varStatus="status">
		<tr class="member_info_tr" onclick="window.open('aMemberV?member_id=${memberInfo.member_id}','','width=650, height=700')">
			<td>${pagingDto.startRN + status.index}</td>
			<c:choose>
				<c:when test="${memberInfo.member_role == 0}">
					<td>일반회원</td>
				</c:when>
				<c:otherwise>
					<td>관리자</td>
				</c:otherwise>
			</c:choose>
			<td>${memberInfo.member_id}</td>
			<td>${memberInfo.member_name}</td>
			<td>
				<fmt:formatDate value="${memberInfo.member_date}" pattern="yyyy-MM-dd"/>
			</td>
		</tr>
	</c:forEach>
	</table>
	<div id=pagination>
		<a href="aMemberMain?page=1&countPerPage=${pagingDto.countPerPage}&findBy=${param.findBy}&${param.findBy}=${param.member_id}${param.member_name}${param.member_role}">
			처음
		</a>
		<a href="aMemberMain?page=${pagingDto.page-1}&countPerPage=${pagingDto.countPerPage}&findBy=${param.findBy}&${param.findBy}=${param.member_id}${param.member_name}${param.member_role}">
			이전
		</a>
		<c:forEach var="no" begin="${pagingDto.startPage}" end="${pagingDto.endPage}">
			<a class="pageNo" href="aMemberMain?page=${no}&countPerPage=${pagingDto.countPerPage}&findBy=${param.findBy}&${param.findBy}=${param.member_id}${param.member_name}${param.member_role}">
				${no}
			</a>
		</c:forEach>
		<a href="aMemberMain?page=${pagingDto.page+1}&countPerPage=${pagingDto.countPerPage}&findBy=${param.findBy}&${param.findBy}=${param.member_id}${param.member_name}${param.member_role}">
			다음
		</a>
		<a href="aMemberMain?page=${pagingDto.totalPage}&countPerPage=${pagingDto.countPerPage}&findBy=${param.findBy}&${param.findBy}=${param.member_id}${param.member_name}${param.member_role}">
			마지막
		</a>
	</div>
	<button id="main_btn" type="button" onClick="location.href='aMain'">메인으로</button>
	<!-- <script src="js/admin/member/aMemberMain.js"></script> -->
	<script>
		let countPerPages = document.querySelectorAll(".countPerPage");
		let selectBox = document.getElementById("countPerPage");
		for(box of countPerPages){
			if(box.value === "${pagingDto.countPerPage}"){
				box.setAttribute("selected", "selected");
				break;
			}
		}
		
		let pageNos = document.querySelectorAll(".pageNo");
		pageNos.forEach(no => {
			if(no.innerText === "${pagingDto.page}"){
				no.style.fontWeight = "bold";
			}
		})
		
		let searchBar = document.getElementById("input");
		let searchBy = "";        	     //첫화면에선 selected 적용이 안돼서 여기서 적용시켜줌
		let searchContent = "";           //사용자가 검색한 내용
		searchBar.style.display = "none";  	 //초기값이 전체보기, 전체보기에는 searchBar 필요없음
		
		function reqCPP(){
			if(searchBy === "member_id" || searchBy === "member_name"){
				searchContent = searchBar.value;
			}else if(searchBy === "member_role"){
				searchContent = roleBox.value;
			}
			location.href = "aMemberMain?page="+${pagingDto.page}+"&countPerPage="+selectBox.value
			+"&findBy="+searchBy+"&"+searchBy+"="+searchContent;
		}
		
		function searchMemberBy(){
			if(searchBy === "member_id" || searchBy === "member_name"){
				searchContent = searchBar.value;
			}else if(searchBy === "member_role"){
				searchContent = roleBox.value;
			}
			location.href = "aMemberMain?page="+${pagingDto.page}+"&countPerPage="+selectBox.value
					+"&findBy="+searchBy+"&"+searchBy+"="+searchContent;
		}
		
		let roleBox = document.getElementById("role");
		function selected1st(value){                        //1번째 select박스 선택시 
			searchBy = value;
			searchBar.value = "";
			if(value == "member_role"){
				searchContent = 0;   //초기값 셋팅 0은 일반회원임
				searchBar.style.display = "none";
				roleBox.style.display = "inline-block";
			}
			else if(value == ""){
				searchBar.style.display = "none";
				roleBox.style.display = "none";
			}
			else{
				searchBar.style.display = "inline-block";
				roleBox.style.display = "none";
			}
		}
		
		function selected2nd(value){                     //2번째 select박스 선택시 
			searchContent = value;
		} 

		/* function isEmptySearchBar(){					//검색창이 비어있는지 체크
			if(!document.getElementById("input").value){
				return true;
			}
			return false;
		} */
		
		let opt = document.querySelector("#select-box > option:checked");
		searchBy = opt.value;
		if(opt.value === "member_id" || opt.value === "member_name"){
			searchBar.style.display = "inline-block"; 
		}
		if(opt.value === "member_role"){
			roleBox.style.display = "inline-block";
		}
	</script>
</body>
</html>