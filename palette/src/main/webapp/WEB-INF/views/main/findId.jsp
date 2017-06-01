<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html lang="en">
<head>
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Portfolio Single - Edge Responsive Multipurpose Template</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=1280">
<!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>"
	media="screen" />

  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
$(function(){
	$("#findu").on("click",function(){
		$.ajax({
			url:"/api/users/findId",
			type:"post",
			data : {"userName":$("#userName").val(), "userMail":$("#userMail").val() },
			dataType: 'JSON',
			success: function(result) {
				alert("정보와 일치하는 아이디를 찾을 수 없습니다.");
			},
			error:function(request){
		      alert("아이디 : "+request.responseText);
		     }

		})
		
	})
})
</script>
  
  <style>    
 
.bar{
		color:silver;
		opacity: 0.6;
	}
	#d1:HOVER{
		text-decoration: underline;
		cursor: pointer;
	}
	#d2:HOVER{
		text-decoration: underline;
		cursor: pointer;
	}
	#d3:HOVER{
		text-decoration: underline;
		cursor: pointer;
	}
	#btnLogin{
		width:370px;
		height:60px;
		background: white;
		border : 2px solid #727cb6;
	}
	
	#login{
		font-size: 1.5em;
		color:#727cb6;
	}
	#en{
		text-align: center;
		font-size: 0.9em;
	}
	#en2{
		text-align: center;
		font-size: 0.8em;
	}
	a:link {text-decoration: none; color:gray;}
	a:visited {text-decoration: none; color:gray;}
	a:active {text-decoration: none; color:gray;}
	a:hover {text-decoration: underline; color:gray;}


 
  </style>



<script type="text/javascript">
	
</script>
</head>
<body style="background: #fafafa;">
	<div class="col-xs-12 col-xs-12 col-xs-12" style="padding: 0; background: #727cb6; height: 15px;"></div>
	<br><br><br><br>
	<div class="col-xs-2 col-xs-2 col-xs-2"></div>
	<div class="col-xs-8 col-xs-8 col-xs-8" style="text-align: center; position: relative;">
	
		<a href="/palette/users/main"><img alt="" src="<c:url value='/resources/images/로고4.png'/>" style="width:230px; height: 60px;"></a><br><br><br><br>
		
		<div style="width: 550px; height: 558px; display: inline-block;">
		<div style="width: 550px; height: 72px; display: inline-block;">
			<ul>
				<li id="a" style="width: 273px; height: 72px; display: inline-block; padding-top: 20px; font-size: 1.70em;">
					<a href="/palette/users/findId" style="padding:20px; border-bottom: 5px solid #727cb6;">아이디 찾기</a>
				</li>
				<li id="a" style="width: 270px; height: 72px; display: inline-block; padding-top: 20px; font-size: 1.70em;">
					<a href="/palette/users/findPwd" style="padding:20px;  position: ">비밀번호 찾기</a>
				</li>
			</ul>
		</div>
		<div style="width: 550px; height: 600px; padding:50px;  border : 2px solid #e1e1e1; background:white; position: relative; margin: 0; display: inline-block;" >
			<p style="text-align: left; font-size: 1.3em;">&nbsp;&nbsp;회원 정보에 등록된 이메일</p><br>
			<p style="text-align: left; font-size: 1.15em;">&nbsp;&nbsp;회원정보에 등록된 이메일과 입력하신 이메일이 같아야<br> &nbsp;&nbsp;아이디를 찾으실 수 있습니다.</p>
			<br><br>
			<p style="text-align: left; font-size: 1.35em;">&nbsp;&nbsp;이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="userName" placeholder="&nbsp;&nbsp;이름 입력(2자 이상)" style="width: 311px; height: 53px; border-radius: 10px; border : 1px solid silver;"></p><br><br>
			<p style="text-align: left; font-size: 1.35em;">&nbsp;&nbsp;이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" id="userMail" placeholder="&nbsp;&nbsp;이메일 입력"  style="width: 311px; height: 53px; border-radius: 10px; border : 1px solid silver;"></p>
			<br><br>
			<div style="width: 400px; height:20px; border-top: 1px solid silver; display: inline-block; position: absolute; text-align:left; left: 70px; padding-top: 20px;">
				아직 팔레트 회원이 아닌가요?&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">회원가입</a>
			</div>
			<br><br>
			<br><br>
			<button type="button" id="findu" class="btn_login03"style="text-align: center; width :264px; height :66px; border:0; background:#727cb6; margin-left: 5px;"><span id="login" style="color:white;">아이디 찾기</span></button>
		</div>
		</div>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<p id="en">이용약관 <sapn class="bar">ㅣ</sapn> 개인정보처리방침 <sapn class="bar">ㅣ</sapn> 
				고객센터 <sapn class="bar">ㅣ</sapn> 배송문의 </p>
				<br>
				<p id="en2">© PALETTE Entertainment, Inc. All rights reserved.</p><br>
				<br>
	</div> <br>
				<br>
	<div class="col-xs-2 col-xs-2 col-xs-2"></div>
	<br>
</body>
 	<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.10.2.min.js"/>"></script>
					<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
					<script src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
					<script src="<c:url value="/resources/js/retina-1.1.0.min.js"/>"></script>
					<script type="text/javascript" src="<c:url value="/resources/js/jquery.cookie.js"/>"></script>
					<!-- jQuery cookie -->
					<script type="text/javascript" src="<c:url value="/resources/js/styleswitch.js"/>"></script>
					<!-- Style Colors Switcher -->
					<script type="text/javascript" src="<c:url value="/resources/js/jquery.smartmenus.min.js"/>"></script>
					<script type="text/javascript"
						src="<c:url value="/resources/js/jquery.smartmenus.bootstrap.min.js"/>"></script>
					<script type="text/javascript" src="<c:url value="/resources/js/jquery.jcarousel.js"/>"></script>
					<script type="text/javascript" src="<c:url value="/resources/js/jflickrfeed.js"/>"></script>
					<script type="text/javascript"
						src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
					<script type="text/javascript" src="<c:url value="/resources/js/jquery.isotope.min.js"/>"></script>
					<script type="text/javascript" src="<c:url value="/resources/js/swipe.js"/>"></script>
					<script type="text/javascript" src="<c:url value="/resources/js/jquery-scrolltofixed-min.js"/>"></script>


                   <script src="<c:url value="/resources/js/main.js"/>"></script>
</html>
