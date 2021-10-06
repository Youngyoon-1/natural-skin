<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/user/review/reviewProductChoice.css">
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
	#search-logo:hover{
		cursor: pointer;
	}
	#search-bar{
		text-align: left;
		margin-left: 75px;
		margin-top: 30px;
		
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
	
	table{
		width:85%;
		margin: 10px auto;
		border-collapse: collapse;
	}
	 th, td{
		border-bottom:.5px solid #7B7C95;
		padding: 10px;
		
	}
	button:hover{
		cursor: pointer;
	}
	
	#attach-image{
		width: 15px;
	}
	.product-image{
		width: 100px;
	}
	.star-image{
		width: 100px;
	}
	
	#title span{
		position: relative;
		bottom: 20px;
	}
	
	#review-write{
		float: right;
		margin-right: 100px;
		width: 120px;
		height: 30px;
		
	}
	tr {
		font-style:initial;
	    color: #7B7C95;
	    font-size: 15px;
	    text-align: center;
	}
	
	#product-td{
		text-align: rigth;
		position: relative;
		left: 50px;   
	}
	#product-name {
		text-align: center;
		font-style:initial;
	    color: #7B7C95;
	    font-size: 25px;
	}
	button {
		margin-left: 30px;
		margin-top: 30px;
		margin-bottom: 50px;
		padding:3px;
	}
</style>
</head>
<body>
	<header><h2>상품3건</h2></header>
	<hr style="border: solid 2px;">
	  <form action="">
				<table >
					<tr>
						<th>선택</th>
						<th colspan="2">상품명</th>
					</tr>	
					<tr>
					    <td>
                          <input type="radio" name="product-choice" value=""></td>
                      <td id="product-td">
                      	<img class="product-image" src="images/product1.png" alt="" />
                      </td>
                      <td>
                      	<label id="product-name">Natural Ample</label>
                      </td>
                    </tr>
                    <tr>
					    <td>
                          <input type="radio" name="product-choice" value=""></td>
                      <td id="product-td">
                      	<img class="product-image" src="images/product1.png" alt="" />
                      </td>
                      <td>
                      	<label id="product-name">Natural Ample</label>
                      </td>
                    </tr>
                    <tr>
					    <td>
                          <input type="radio" name="product-choice" value=""></td>
                      <td id="product-td">
                      	<img class="product-image" src="images/product1.png" alt="" />
                      </td>
                      <td>
                      	<label id="product-name">Natural Ample</label>
                      </td>
                    </tr>
                     </table>       
		<button id="first-btn" type="button" onclick="window.close()">취소</button>
		<button onclick="javascript:btn()" type="button">확인</button>	
         </form>
</body>
</html>