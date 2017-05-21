<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% Users users = (Users) session.getAttribute("user"); %>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>유앤미 메인 페이지</title>


    <!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>"
	media="screen" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
 <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>

</style>
<script>
	$(function(){
		var i =0;
		
		$("#insertBigTag").on("click",function(){
			i++;
			var tag = "<li id='bigKind"+i+"'><a href='#' class='bigKind' data-no='"+ i +"'>새태그</a></li>";
			var stag =  "<ul id='smallTag"+i+"' class='pagination'><li  style='display:inline;'><a href='#' id='insertSmallTag' data-sno='"+ i +"'>태그추가</a></li></ul><br>";
			var btag = $("<li id='smallKind"+i+"'>새태그</li>");
			
			$("#bigTag").append(tag);
			$("#smallTag").append(btag).append(stag);
			
		})
		
		$(document).on("click","#insertSmallTag",function(){
			var stag = "<li style='display:inline-block;' id='smallLi"+$(this).data("sno")+"'><a href='#' class='smallName"+$(this).data("sno")+"' id='smallName' data-nno='"+$(this).data("sno")+"'>새태그</a></li>";
			$("#smallTag"+$(this).data("sno")).append(stag);
		})
		
		$(document).on("dblclick",".bigKind",function(){
			var name = prompt("태그 이름 입력",$(this).html());
			if(name=="" || name==null){
				$("#bigKind"+$(this).data("no")).html("");
				$("#smallKind"+$(this).data("no")).html("");
			}else{
				$(this).html(name);
				$("#smallKind"+$(this).data("no")).html(name);
			}
			
		})
		
		$(document).on("click","#smallName",function(){
			var name = prompt("태그 이름 입력",$(this).html());
			if(name=="" || name==null){
				$("#smallLi"+$(this).data("nno")).html("");
			}else{
				$(this).html(name);
			}
			
		})

		$("#complete").on("click",function(e){
				e.preventDefault(); //기본 이벤트를 차단
				 var formData = new FormData();
				 formData.append("userId",'<%=users.getUserId()%>')
				 formData.append("homeTitle",$("#title").val())
				 formData.append("homeIntroduce",$("#content").val())
				 formData.append("homeDesign",$("#design").val())
				 formData.append("file",$("#img")[0].files[0])

				 var smallResult ="";
					var bigArray = [];
					$(".bigKind").each(function(){
						bigArray.push($(this).html());
					})
					
					for(var j=0; j<i; j++){
						$(".smallName"+(j+1)).each(function() {
							smallResult +=$(this).html()+",";
						});
						smallResult +="\n";
					}
					
				$.ajax({
				 	url:"/palette/users/homeRegister",
				 	type:"post",
				 	data: formData,
				 	complete:function(result){
				 		console.log(result)
				 		self.close();
					},
				 		processData:false,
				 		contentType:false
				 })
				 
				 $.ajax({
				 	url:"/api/users/homeTagRegister",
				 	type:"post",
				 	data: {"userId":"<%=users.getUserId()%>" ,"bigKind":bigArray.join(","),"smallKind":smallResult},
				 	complete:function(result){
				 		alert(result)
					}

				 })
			})
	})
	
</script>
<body class="home">
<!--Start Header-->
<header id="header">
  <%@ include file="/WEB-INF/views/header/MiniMainHeader.jsp" %>
 <!--end Header-->
</header>
<!--===========================헤더 끝========================================-->
        <div id="menu-bar">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-3">
                        <div id="logo">
                      <input type="hidden" class="form-control" name="userId" id="uid"  value="<%=users.getUserId()%>">
                      <input type="file" class="form-control" name="homeImg" id="img" value="홈페이지 로고">
                      <input type="text" class="form-control" name="homeTitle" placeholder="홈페이지 제목" id="title">
                        </div>
                    </div>
                   
  <!-- =====================메인 메뉴(우측상단) 시작============================= -->
<%@include file="/WEB-INF/views/MenuRegister.jsp" %>
        <!-- =====================메인 메뉴(우측상단) 끝============================= -->
 </div>
</div>
</div>
        <!--=========================화면 가운데 슬라이드 시작=======================-->
       
    <!--=========================화면 가운데 슬라이드 끝==================================-->

<section class="page_head">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">

                        <div class="page_title">
                            <h2>홈페이지 만들기</h2>
                        </div>
     				</div>
                </div>
            </div>
</section>
 <div class="col-lg-12 col-md-12 col-sm-12">
 <div class="form-group">
         <label for="tag" >태그 소분류</label>
         <ul  id="smallTag"  >
         
         </ul>
 </div>
	 <div class="form-group">
                      <label for="InputPassword2">홈페이지 디자인 선택</label>
                      <select name="homeDesign" id="design" class="form-control" >
							<option value="1">기본타입</option>
					  </select>
                  </div>
                  <div class="form-group">
                      <label for="username">홈페이지 소개</label>
                      <textarea class="form-control"  rows="20" cols="60" id='content'><%=users.getUserId() %>의 홈페이지 입니다.</textarea>
                  </div>
</div>
<button id="complete"  class="btn btn-default btn-lg btn-block" >완료</button>


<!--
    밑에 꺼는 정확하게 어떤건지 모르니까 만지지 마시오...
-->

<!-- Parallax with Testimonial -->
            <!--<h2 class="center">Testimonials</h2>-->
<!-- end : Parallax with Testimonial -->

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

<script type="text/javascript">

</script>
<script src="<c:url value="/resources/js/main.js"/>"></script>
    

    <!-- WARNING: Wow.js doesn't work in IE 9 or less -->
    <!--[if gte IE 9 | !IE ]><!-->
        <script type="text/javascript" src="<c:url value="/resources/js/wow.min.js"/>"></script>
       
</body>
</html>