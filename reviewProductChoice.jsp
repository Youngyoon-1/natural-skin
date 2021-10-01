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
</head>
<body>
	<header><h2>상품3건</h2></header>
	<hr style="border: solid 2px;">
	  <form action="">
				<table >
					<tr>
						<th>선택</th>
						<th>상품명</th>
					</tr>	
					<tr>
					    <td colspan="1">
                          <input type="radio" name="product-choice" value=""></td>
                      <td colspan="2" id="product-td"><img class="product-image" src="images/product1.png" alt="" /><label id="product-name">Natural Ample</label></td>
                    </tr>
                    <tr>
					    <td colspan="1">
                          <input type="radio" name="product-choice" value=""></td>
                      <td colspan="2" id="product-td"><img class="product-image" src="images/product1.png" alt="" /><label id="product-name">Natural Ample</label></td>
                    </tr>
                    <tr>
					    <td colspan="1">
                          <input type="radio" name="product-choice" value=""></td>
                      <td colspan="2" id="product-td"><img class="product-image" src="images/product1.png" alt="" /><label id="product-name">Natural Ample</label></td>
                    </tr>
                     </table>       
		<button id="first-btn" type="button" onclick="window.close()">취소</button>
		<button onclick="javascript:btn()" type="button">확인</button>	
         </form>
</body>
</html>