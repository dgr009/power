<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%Users user =(Users) session.getAttribute("user");%>
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
		$("#register").on("click",function(e){
			e.preventDefault(); //기본 이벤트를 차단
			var formData = new FormData();
			formData.append("userId",$("#id").val())
			formData.append("homeTitle",$("#title").val())
			formData.append("homeIntroduce",$("#content").val())
			formData.append("homeDesign",$("#design").val())
			formData.append("file",$("#img")[0].files[0])
			
			$.ajax({
				url:"/palette/users/homeRegister",
				type:"post",
				data: formData,
				complete:function(result){
					console.log(result)
					location.href="/palette/users/home"
				},
				processData:false,
				contentType:false
				
			})
		})
		
	})
 
</script>
   
  </head>
<body>
      <article class="container">
          <div class="page-header">
              <h1>홈페이지 만들기</h1>
          </div>
          <div class="col-md-6 col-md-offset-3">
                  <div class="form-group">
                      <label for="InputEmail">홈페이지 제목</label>
                      <input type="text" class="form-control" name="homeTitle" placeholder="홈페이지 제목" id="title">
                  </div>
                  <div class="form-group">
                      <label for="InputPassword1">홈페이지 이미지</label>
                      <input type="file" class="form-control" name="homeImg" id="img">
                  </div>
                  <div class="form-group">
                      <label for="InputPassword2">홈페이지 디자인 선택</label>
                      <select name="homeDesign" id="design" class="form-control" >
							<option value="1">기본타입</option>
					  </select>
                  </div>
                  <div class="form-group">
                      <label for="username">홈페이지 소개</label>
                      <textarea class="form-control"  rows="50" cols="60" id='content'><%=user.getUserId() %>의 홈페이지 입니다.</textarea>
                  </div>
                 
                  <div class="form-group">
                  
                  </div>
                  <div class="form-group">
                  
                  </div>
 				 
 				  <div id="hideValue">
 				  	<input type="hidden" name="userId" value="<%=user.getUserId() %>" id='id'>
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
                      <button type="button"  id="register" class="btn btn-info" >완료</button>
                      <button onclick="location.href='/palette/users/home'">취소</button>
                  </div>
          </div>
      </article>
</body>
</html>