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
  <link rel="stylesheet" href="css/member/login/Login.css">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <title>로그인</title>
</head>
<body>
<c:import url="../../Memberheader.jsp"/>
  <img id="login" src="images/login-top.png">
  
  <form action="login" method="post">
  <div class="login">
    <div class="login-text1">로그인</div>
    
      <div class="login-form">
        
        <div class="login-input">
          <div><input type="text" id="box1" class="box" name="member_id"></div>
          <div><input type="password" id="box2" class="box" name="member_pw"></div>
            <div  id="id-check"><input type="checkbox" >아이디저장 &nbsp;&nbsp;&nbsp;&nbsp;
           <a href="idfind1">아이디</a>/<a href="passwordfind1">비밀번호찾기</a>
            </div>
    
        
       <div class="login-img"><!--<input type="image" src="http://bdmp-004.cafe24.com/bizdemo99969/img/member/btn_login.gif">-->
        	<input  TYPE="IMAGE" src="images/login.gif" id="login-submit" value="Submit"  align="absmiddle">
        </div>
               
        </div>

      </div>
      <div class="login-box">
       <div class="login-find">
       회원이 아니신가요?<br>
       고객님만을 위한 다양한 혜택이 준비되어있습니다.<br>
        <div class="join-img">
        	<input  TYPE="IMAGE" src="images/join.gif" id="join-submit" value="Submit"  align="absmiddle">
        </div>
         
      </div>
      
    </div>
    <c:import url="../../footer.jsp"/>
  </div>
  
  </form>

  

  
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>


  
  <script>

    var loginImg = document.getElementsByClassName('login-img');
    var box1 = document.getElementById('box1');
    var box2 = document.getElementById('box2');

    loginImg[0].onclick = function() {
      console.log("click");
      if(!/^[A-za-z0-9]{4,16}/g.test( $("#box1").val())) {
          alert("아이디를 숫자 및 영어로만 정확히 입력하세요. [4~16글자]");
      } else if(!/^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{8,16}$/.test( $("#box2").val())) {
        alert('비밀번호는 영문/최소 1개의 숫자 또는 특수문자[6~16자리]');
      } else {
        location.href='/servlet5_company/index.jsp';
      }
    };
    function idFind(){  
      window.open("/servlet5_company/member/idFind.jsp", "새창", "width=440, height=353, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
    }
    function passwordFind() {
      window.open("/servlet5_company/member/passwordFind.jsp", "새창", "width=440, height=375, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    }

    // back-to-top
    $(document).ready(function(){
      $(window).scroll(function () {
        if ($(this).scrollTop() > 50) {
          console.log('fadeIn');
          $('#back-to-top').fadeIn();
        } else {
          console.log('fadeOut');
          $('#back-to-top').fadeOut();
        }
      });
      // scroll body to 0px on click
      $('#back-to-top').click(function () {
        console.log('click');
        $('#back-to-top').tooltip('hide');
        $('body,html').animate({
            scrollTop: 0
        }, 500);
        return false;
      });
      $('#back-to-top').tooltip('show');
    });
  </script>
 
</body>
</html>