<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/member/login/Idfind.css">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <title>아이디찾기</title>
</head>
<body>
<c:import url="../../Memberheader.jsp"/>
  <img id="login" src="images/login-top.png">

      <form method="post" action="idalert">
       <div class="login">
    <div class="login-text1">아이디찾기<br>
    <hr style="border.solid 1px">
    가입하신 방법에 따라 아이디 찾기가 가능합니다.<br>
    이메일 또는 휴대폰번호를 입력해주세요.<br></div>
      <table>
       
        <tr class="tr1">
          <td style="width: 50%;">
          <div class="td1"> 
         <h3>정보유형</h3>
          <h3>이름</h3>
          <h3>휴대폰번호</h3>
          </div>
          </td>
          
          <td style="width: 50%;" class="td2">
                    <form>
  
  <input type="radio" id="id-find" name="id-find"  value="이메일" /><label class="id-find"> 이메일</label>
  <input type="radio" id= "id-find" name="id-find" checked="checked" value="휴대폰번호" /><label class="id-find"> 휴대폰번호</label><br>
  
</form>
          <input  class="em" type="text" name="member_name"><br>
          	<input class="em" type="text" name="member_phone">
          </td>
          <td>
          
        </tr>
        
      </table>
      <div id="submit"><input type="button" value="확인" class="ok" formaction="idalert" onclick="window.open('idalert', '아이디찾기', 'width=430,height=300,location=no,status=no,scrollbars=no')" ></div>
      
    
      </form>
    <c:import url="../../footer.jsp"/>
 
  
  </form>
</body>
</html>