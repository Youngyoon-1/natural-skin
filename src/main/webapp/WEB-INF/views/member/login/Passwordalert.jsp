<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %> 

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, 
    maximum-scale=1.0, minimum-scale=1.0">

    <!-- My CSS -->
    <link rel="stylesheet" href="/css/member/login/Passwordalert.css">
    <title>회원비밀번호 찾기 결과</title>
  </head>

  <body>
    <div class="main">
	    
		<!-- 비밀번호 찾기 -->
	
      <form method="post" action="passwordalert">
      <table>
        <tr>
          <td colspan="2"><h3>비밀번호 찾기 결과</h3></td>
        </tr>
        <tr>
          <td colspan="2"><h3>고객님의 소중한 정보입니다.</h3></td>
        </tr>
        <tr>
          <td colspan="2"><h3>로그인 후 비밀번호를 변경해 주세요.</h3></td>
        </tr>
        <tr>
          <td style="width: 20%;">-비밀번호</td>
          <td style="width: 80%;">
          	<input type="text" name="member_pw" value="member_pw"readonly>
          </td>
        </tr>
        <tr>
        <td>
              <div class="submit"><input type="button" name="submit" value="확인" class="ok" onclick="javascript:window.close();"" ></div>
        
        </td>
        </tr>
      </table>
      
      
      </form>
    </div>
    
  </body>
</html>