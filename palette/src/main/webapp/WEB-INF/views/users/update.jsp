<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%Users users = (Users) session.getAttribute("user"); %>

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
    		var umailcheck = 0;
    		var upwdcheck =1;
    		
    		$("#umail").on("blur",function(){
    			alert($("#umail").val()=='<%=users.getUserMail()%>');
    			if($("#umail").val()=='<%=users.getUserMail()%>'){
    				$("#umailchecked").html("기존 메일입니다.");
					$("#umailchecked").css("color","green");
    				umailcheck=0;
    			}else{
    				$.ajax({
	    				url:"/api/users/hasMail",
	    				type:"post",
	    				data : {"userMail":$("#umail").val()},
	    				dataType:"JSON",
	    				success:function(result) {
	    					if(result==0){
	    						$("#umailchecked").html("사용 가능한 메일입니다.");
	    						$("#umailchecked").css("color","green");
	    						umailcheck=0;
	    					}else{
	    						$("#umailchecked").html("이미 사용중인 메일입니다.");
	    						$("#umailchecked").css("color","red");
	    						umailcheck=1;
	    					}
	    				}
	    			})
    			
    			}
    		})
    	
    		$("#upwd").on("blur",function(){
    				
    				if(b.test($("#upwd").val())==false){
    					$("#upwdcheck").html("비밀번호는 대소문자 및 숫자 3~20의 길이 입니다")
    					$("#upwdcheck").css("color","red")
    					upwdcheck =1;
    				}
    				else {
    					$("#upwdcheck").html("")
    					upwdcheck =0;
    				}
    				
    				if($("#upwd").val()==$("#upwd2").val()){
    					$("#upwdcheck2").html("")
    					upwdcheck =0;
    				}
    			
    			})
    			
    		$("#upwd2").on("blur",function(){
    				
    				if($("#upwd").val()!==$("#upwd2").val()){
    					$("#upwdcheck2").html("비밀번호를 확인해 주십시오")
    					$("#upwdcheck2").css("color","red")
    					upwdcheck =1;
    				}
    				else {
    					$("#upwdcheck2").html("")
    					upwdcheck =0;
    				}
    			})
    		
    			$("#update").on("click",function(){			
    				if(umailcheck == 0 && upwdcheck==0)	
    					$("#updateform").submit();
    				else if(upwdcheck==1){
    					$("#upwd").focus();
    					alert("비밀번호를 확인해주세요");
    				}else if(umailcheck ==1){
    					$("#umail").focus();
    					alert("이메일을 확인해주세요");
    				}
    			})
    			
    	})
    </script>


      
<div class="modal"  id="updateModal" role="dialog" data-backdrop="false" >
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">회원 정보 수정</h4>
				</div>
              <form  id='updateform' action="/palette/users/update" method="post">
                     <div class="modal-body">
                   <div class="form-group">
                      <label for="username">이름</label>
                      <input type="text" class="form-control" name="userName" value='<%=users.getUserName() %>' readonly="readonly" >
                  </div>
                  <div class="form-group">
                      <label for="InputEmail">아이디</label>
                      <input type="text" class="form-control" name="userId" value='<%=users.getUserId() %>'readonly="readonly"  id="id" >
                  </div>
                  <div class="form-group">
                      <label for="InputPassword1">비밀번호</label>
                      <input type="password" class="form-control" name="userPwd" placeholder="비밀번호" name="password" id="upwd">
                  </div>
                  <p id="upwdcheck"></p>
                  <div class="form-group">
                      <label for="InputPassword2">비밀번호 확인</label>
                      <input type="password" class="form-control" placeholder="비밀번호 확인"name="password2" id="upwd2">
                  </div>
                  <p id="upwdcheck2"></p>
                  <div class="form-group">
                      <label for="phone_number">전화번호</label>
                      <input type="text" class="form-control" name="userPhone" value='<%=users.getUserPhone() %>'>
                  </div>
            
                  <div class="form-group">
                      <label for="postal_number">우편번호</label>
                      <input type="text" class="form-control" name="userPost" value='<%=users.getUserPost() %>'>
                  </div>
                  <div class="form-group">
                      <label for="address">주소</label>
                      <input type="text" class="form-control" name="userAddress" value='<%=users.getUserAddress() %>'>
                  </div>
                  <div class="form-group">
                      <label for="email">이메일</label>
                      <input type="text" class="form-control"  id='umail' name="userMail" value='<%=users.getUserMail() %>'>
                  </div>         
                   <p id="umailchecked"></p>
                 
                  <div class="form-group text-center">
                      <button type="button"  id="update" class="btn btn-info">수정완료</button>
                      <button type="button"  class="btn btn-warning" onclick="location.href='/palette/users/info'" >취소</button>
                  </div>
                  </div>
              </form>
          </div>
  
      </div>
      </div>
      <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
