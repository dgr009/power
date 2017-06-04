<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>" media="screen" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <script>
    	$(function(){
    		var a =  /^[a-zA-Z0-9]{3,15}$/;	//아이디
    		var b =  /^[a-zA-Z0-9]{3,20}$/;// 비밀번호
    		var mailcheck = 0;
    		var idcheck =1;
    		var pwdcheck =0;
    		
    		$("#mail").on("blur",function(){
    			$.ajax({
    				url:"/api/users/hasMail",
    				type:"post",
    				data : {"userMail":$("#mail").val()},
    				dataType:"JSON",
    				success:function(result) {
    					if(result==0){
    						$("#mailchecked").html("사용 가능한 메일입니다.");
    						$("#mailchecked").css("color","green");
    						mailcheck=0;
    					}else{
    						$("#mailchecked").html("이미 사용중인 메일입니다.");
    						$("#mailchecked").css("color","red");
    						mailcheck=1;
    					}
    				}
    			})
    		})
    		
    		$("#id").on("blur",function(){

    			if(a.test($("#id").val())==false){
					$("#idchecked").html("아이디는 대소문자 및 숫자 3~15의 길이 입니다")
					$("#idchecked").css("color","red")
					idcheck =1;
				}
    			else{
    				$.ajax({
        				url:"/api/users/hasId",
        				type:"post",
        				data : {"userId":$("#id").val()},
        				dataType:"json",
        				success:function(result) {
        					if(result==0){
        						$("#idchecked").html("사용 가능한 아이디입니다.");
        						$("#idchecked").css("color","green");
        						idcheck =0;
        					}else{
        						$("#idchecked").html("이미 사용중인 아이디입니다.");
        						$("#idchecked").css("color","red");
        						idcheck =1;
        					}
        				}
        			})
    			}
    			
    			
    			
    		
    			
    		})
    		$("#pwd").on("blur",function(){
    				
    				if(b.test($("#pwd").val())==false){
    					$("#pwdcheck").html("비밀번호는 대소문자 및 숫자 3~20의 길이 입니다")
    					$("#pwdcheck").css("color","red")
    					pwdcheck =1;
    				}
    				else {
    					$("#pwdcheck").html("")
    					pwdcheck =0;
    				}
    				
    				if($("#pwd").val()==$("#pwd2").val()){
    					$("#pwdcheck2").html("")
    					pwdcheck =0;
    				}
    			
    			})
    			
    		$("#pwd2").on("blur",function(){
    				
    				if($("#pwd").val()!==$("#pwd2").val()){
    					$("#pwdcheck2").html("비밀번호를 확인해 주십시오")
    					$("#pwdcheck2").css("color","red")
    					pwdcheck =1;
    				}
    				else {
    					$("#pwdcheck2").html("")
    					pwdcheck =0;
    				}
    			})
    		
    			$("#register").on("click",function(){			
    				if(mailcheck == 0 && idcheck==0 && pwdcheck==0)	
    					$("#registerform").submit();
    				else if(idcheck==1){
    					$("#id").focus();
    					alert("아이디를 확인해주세요");
    				}else if(pwdcheck==1){
    					$("#pwd").focus();
    					alert("비밀번호를 확인해주세요");
    				}else if(mailcheck ==1){
    					$("#mail").focus();
    					alert("이메일을 확인해주세요");
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
      <article class="container">
          <div class="page-header">
              <h1>개인 회원가입</h1>
          </div>
          <div class="col-md-6 col-md-offset-3">
              <form  id='registerform' action="/palette/users/insert" method="post">
                  <div class="form-group">
                      <label for="InputEmail">아이디</label>
                      <input type="text" class="form-control" name="userId" placeholder="아이디" id="id">
                  </div>
                  <p id="idchecked"></p>
                  <div class="form-group">
                      <label for="InputPassword1">비밀번호</label>
                      <input type="password" class="form-control" name="userPwd" placeholder="비밀번호" name="password" id="pwd">
                  </div>
                  <p id="pwdcheck"></p>
                  <div class="form-group">
                      <label for="InputPassword2">비밀번호 확인</label>
                      <input type="password" class="form-control" placeholder="비밀번호 확인"name="password2" id="pwd2">
                  </div>
                  <p id="pwdcheck2"></p>
                  <div class="form-group">
                      <label for="username">이름</label>
                      <input type="text" class="form-control" name="userName" placeholder="이름을 입력해 주세요">
                  </div>
 
                  <div class="form-group">
                      <label for="phone_number">전화번호</label>
                      <input type="text" class="form-control" name="userPhone" placeholder="전화번호를 입력해주세요">
                  </div>
            
                  <div class="form-group">
                      <label for="postal_number">우편번호</label>
                      <input type="text" class="form-control" name="userPost" placeholder="우편번호를입력하시오">
                  </div>
                  <div class="form-group">
                      <label for="address">주소</label>
                      <input type="text" class="form-control" name="userAddress" placeholder="주소를 입력해주세요">
                  </div>
                  <div class="form-group">
                      <label for="email">이메일</label>
                      <input type="text" class="form-control" id='mail' name="userMail" placeholder="이메일을 입력해주세요">
                  </div>         
                   <p id="mailchecked"></p>
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
                      <button type="button"  id="register" class="btn btn-info">회원가입</button>
                      <button class="btn btn-warning">가입취소</i></button>
                  </div>
              </form>
          </div>
      </article>
      <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</body>
</html>