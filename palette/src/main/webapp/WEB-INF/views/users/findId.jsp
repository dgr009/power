<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>아이디 찾기</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>"
	media="screen" />
	
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

.name {
	text-align: center;
	padding-left: 200px;
	padding-right: 200px;
}

.well {
    min-height: 360px;
    padding : 0;
    padding-left: 50px;
    }
    tr{
    	font-size: 1.1em;
    	height: 28px;
    	line-height: 28px;
    }
    
    .form-control{
    height: 20px;
    	line-height: 20px;
    	
    }
       footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#find").on("click",function(){
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
</head>
<body>
	<!--Start Header-->
	<header id="header">
		<%@ include file="/WEB-INF/views/header/Noheader.jsp" %>
		</header>
	<!-- End Header -->
		<div id="menu-bar">
			<div class="container">
				<div class="row">
					<!-- Logo / Mobile Menu -->
					<div class="col-lg-3 col-sm-3 ">
						<div id="logo">
							<h1>
							
							</h1>
						</div>
					</div>
					
					
					 <!-- =====================메인 메뉴(우측상단) 시작============================= -->
                 <%@include file="/WEB-INF/views/MenuSelect.jsp" %>
        <!-- =====================메인 메뉴(우측상단) 끝============================= -->
		<!--End Header-->
		</div>
		</div>
		<!--start wrapper-->
	 <section class="wrapper">
            <section class="page_head">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="page_title">
                                <h2>회원 아이디 찾기</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <div class="row sub_content">
                <div class="col-lg-4 col-md-4 col-sm-4">
                </div>

                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="dividerHeading">
                        <h4><span>아이디 찾기</span></h4>
                        
                    </div>
                    
                        <div class="row">
                            <div class="form-group">
                            		 <input type="text" id="userName" name="userName" class="form-control" maxlength="100"   placeholder="이름">
                            		 <input type="text" id="userMail" name="userMail" class="form-control" maxlength="100"  placeholder="이메일">
                               
                                
                                 <div class="col-lg-4 col-md-4 col-sm-4">
                                 </div>
                                <br>
                               <div class="col-lg-8 col-md-8 col-sm-8">
                               <input type="submit" id="find" data-loading-text="Loading..."   style="text-align: left;" class="btn btn-default btn-lg"  value="아이디찾기">
                               <input type="button" class="btn btn-default btn-lg"   style="color:white; text-align:right;" onclick="location.href='/palette/users/home'" value="홈으로">
                               </div>
                                
                            </div>
                        </div>
                 
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                </div>
            </div>
        </section>
	
 <!--end wrapper-->


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
</body>
</html>