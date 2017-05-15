<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
 <script>
    	$(function(){
    		var a =  /^[a-zA-Z0-9]{5,15}$/;	//아이디
    		var b =  /^[a-zA-Z0-9]{10,20}$/;// 비밀번호
    		
    		$("#id").on("blur",function(){

    			if(a.test($("#id").val())==false){
					$("#idchecked").html("아이디는 대소문자 및 숫자 5~15의 길이 입니다")
					$("#idchecked").css("color","red")
				}
    			else{
    				$("#idchecked").html("")
    			}
    			
    		
    			
    		})
    		$("#pwd").on("blur",function(){
    				
    				if(b.test($("#pwd").val())==false){
    					$("#pwdcheck").html("비밀번호는 대소문자 및 숫자 10~20의 길이 입니다")
    					$("#pwdcheck").css("color","red")
    				}
    				else {
    					
    					$("#pwdcheck").html("")
    				}
    				
    				if($("#pwd").val()==$("#pwd2").val()){
    					$("#pwdcheck2").html("")

    				}
    			
    			})
    			
    		$("#pwd2").on("blur",function(){
    				
    				if($("#pwd").val()!==$("#pwd2").val()){
    					$("#pwdcheck2").html("비밀번호를 확인해 주십시오")
    					$("#pwdcheck2").css("color","red")
    				}
    				else {
    					
    					$("#pwdcheck2").html("")
    				}
    			})
    		
    	})
    </script>
    <style>
    	#ssn1, #ssn2{
    		display: inline-block;
    	}
    </style>
  </head>
<body>
	<h1>회원 가입</h1>
	<form action="/palette/users/insert" method="post">
	<table border="1">
		<tr><td>이름</td><td><input type="text" id="userName" name="userName" class="form-control"></td></tr>
		<tr><td>아이디</td><td><input type="text" id="userId" name="userId" class="form-control"></td></tr>
		<tr><td>비밀번호</td><td><input type="password" id="userPwd" name="userPwd" class="form-control"></td></tr>
		<tr><td>이메일</td><td><input type="text" id="userMail" name="userMail" class="form-control"></td></tr>
		<tr><td>핸드폰</td><td><input type="text" id="userPhone" name="userPhone" class="form-control"></td></tr>
		<tr><td>주소</td><td><input type="text" id="userAddress" name="userAddress" class="form-control"></td></tr>
		<tr><td>우편번호</td><td><input type="text" id="userPost" name="userPost" class="form-control"></td></tr>
	</table>
	<button type="submit" id="join">가입</button>
	</form>
	
      <article class="container">
          <div class="page-header">
              <h1>U&Me 개인 회원가입</h1>
          </div>
          <div class="col-md-6 col-md-offset-3">
              <form  action="/hooligan/customer/register" method="post">
                  <div class="form-group">
                      <label for="InputEmail">아이디</label>
                      <input type="text" class="form-control" name="id" placeholder="아이디" id="id">
                  </div>
                  <p id="idchecked"></p>
                  <div class="form-group">
                      <label for="InputPassword1">비밀번호</label>
                      <input type="password" class="form-control" name="password" placeholder="비밀번호" name="password" id="pwd">
                  </div>
                  <p id="pwdcheck"></p>
                  <div class="form-group">
                      <label for="InputPassword2">비밀번호 확인</label>
                      <input type="password" class="form-control" name="password2" placeholder="비밀번호 확인"name="password2" id="pwd2">
                  </div>
                  <p id="pwdcheck2"></p>
                  <div class="form-group">
                      <label for="username">이름</label>
                      <input type="text" class="form-control" name="username" placeholder="이름을 입력해 주세요">
                  </div>
                 <div class="form-group">
                  	 <label for="ssn">주민번호</label><br>
                  	 <div class="col-lg-6 col-md-6 col-sm-6" style="padding:0;">
                  	 	<input type="text" class="form-control" id="ssn1" placeholder="앞자리"  name="ssn1">
                  	 </div>
                  	 <div class="col-lg-6 col-md-6 col-sm-6" style="padding:0;"> 
                  	 	
                  	 	<input type="text" class="form-control" id="ssn2" placeholder="뒷자리"  name="ssn2">
                  	 </div>
               
                  <div class="form-group">
                      <label for="phone_number">전화번호</label>
                      <input type="text" class="form-control" name="phone_number" placeholder="전화번호를 입력해주세요">
                  </div>
                     </div>
                                  <div class="form-group">
                      <label for="postal_number">우편번호</label>
                      <input type="text" class="form-control" name="postal_number" placeholder="우편번호를입력하시오">
                  </div>
                  <div class="form-group">
                      <label for="address">주소</label>
                      <input type="text" class="form-control" name="address" placeholder="주소를 입력해주세요">
                  </div>
                  <div class="form-group">
                      <label for="email">이메일</label>
                      <input type="text" class="form-control" name="email" placeholder="이메일을 입력해주세요">
                  </div>
                  <div class="form-group">
                      <label>약관 동의</label>
                      <div data-toggle="buttons">
                          <label class="btn btn-primary active">
                              <span class="fa fa-check"></span>
                              <input id="agree" type="checkbox" autocomplete="off" checked>
                          </label>
                          <a href="#">이용약관</a>에 동의합니다.
                      </div>
                  </div>
                  <div class="form-group text-center">
                      <button type="submit" class="btn btn-info">회원가입</button>
                      <button class="btn btn-warning">가입취소</i></button>
                  </div>
              </form>
          </div>
      </article>
      <script src="/hooligan/js/bootstrap.min.js"></script>
</body>
</html>