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
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

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
  
  
  <style>    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    input:FOCUS{
    	outline: none;
    	box-shadow: 0em;
    }

	.nav li{ 
    	font-size: 1.2em;
    	 font-family: "맑은고딕", sans-serif;
    	
    }
    #rank{
    border-top-right-radius:35px; 
    border-top-left-radius:35px;
    border-bottom-right-radius:10px;
    border-bottom-left-radius:10px; 
    border: 2px solid #727cb6;
    
    width:280px; 
    height: 600px; 
    position: relative;
    }
    
    #week{
    border-top-left-radius:30px;
    border-top-right-radius:30px;
    
    background : #727cb6;
    width:278px;
    height: 50px; 
    position: absolute;
    padding-top: 7px;
    
   
    }
    .ranked{
    width:278px; 
    height: 55px; 
    border-bottom: 1px solid gray;
    position: relative;
    
    }
        .ranked3{
    width:278px; 
    height: 55px; 
    border-bottom: 1px solid gray;
    position: relative;
    
    }
    .vip{
    width:40px; 
    height: 40px; 
   	margin-top:7px;
   	margin-left:4px;
    position: absolute;
    text-align: center;
    }
    
/*     #gold{ */
/*     	color : #727cb6; */
/*     	font-size: 1.4em; */
/*     	font-weight: bold; */
/*     	padding-top: 9px; */
/*     	color:#EDD200; */
/*     		text-shadow: -2px 0 #727cb6, 0 2px #727cb6, 2px 0 #727cb6, 0 -2px #727cb6; */
/* 	-moz-text-shadow: -2px 0 #727cb6, 0 2px #727cb6, 2px 0 #727cb6, 0 -2px #727cb6; */
/* 	-webkit-text-shadow: -2px 0 #727cb6, 0 2px #727cb6, 2px 0 #727cb6, 0 -2px #727cb6; */
    	
/*     } */
/*     #silver{ */
/*     	color : #727cb6; */
/*     	font-size: 1.4em; */
/*     	font-weight: bold; */
/*     	padding-top: 9px; */
/*     	color: silver; */
/*     	text-shadow: -2px 0 #727cb6, 0 2px #727cb6, 2px 0 #727cb6, 0 -2px #727cb6; */
/* 	-moz-text-shadow: -2px 0 #727cb6, 0 2px #727cb6, 2px 0 #727cb6, 0 -2px #727cb6; */
/* 	-webkit-text-shadow: -2px 0 #727cb6, 0 2px #727cb6, 2px 0 #727cb6, 0 -2px #727cb6; */
/*     }     */
    
/*     #bronze{ */
/*     	color : #727cb6; */
/*     	font-size: 1.4em; */
/*     	font-weight: bold; */
/*     	padding-top: 9px; */
/*     	color: #E18048; */
/*     	text-shadow: -2px 0 #727cb6, 0 2px #727cb6, 2px 0 #727cb6, 0 -2px #727cb6; */
/* 	-moz-text-shadow: -2px 0 #727cb6, 0 2px #727cb6, 2px 0 #727cb6, 0 -2px #727cb6; */
/* 	-webkit-text-shadow: -2px 0 #727cb6, 0 2px #727cb6, 2px 0 #727cb6, 0 -2px #727cb6; */
/*     } */
    .nomal{
		color : #727cb6;
    	font-size: 1.4em;
    	font-weight: bold;
    	padding-top: 12px;
    	margin-top:7px;
	   	margin-left:17px;
	    position: absolute;
	    border-radius: 24px;
	    text-align: center;    
    }
    .usersName{
		font-size: 1.1em;  
		position: absolute;
		left: 105px;
		padding-top: 15px;
    }
    .info{
    	width:50px;  
    	margin-left:45px;  
    	height:45px; 
    	border-radius: 30px; 
    	margin-top: 5px;"
    
  
    }
        .nomal2{
		color : #727cb6;
    	font-size: 1.4em;
    	font-weight: bold;
    	padding-top: 12px;
    	margin-top:7px;
	   	margin-left:12px;
	    position: absolute;
	    border-radius: 24px;
	    text-align: center;    
    }
    .com{
    	font-size: 0.9em;
    }
    
    



 
  </style>



<script type="text/javascript">
	$(function(){
		
		 $('.ranked').click(function() { 
			var a = $(this).next().attr("id");
			if($("#"+a).is(':animated')){
				
			}else if(!$("#"+a).is(':animated')){
				$("#"+a).slideUp(400)
				 $("#"+this.id).animate({'height':'110px'},400);		
				 $("#"+this.id +" .info").animate({ 'width':'100px','height':'90px','margin-top':'10px'},400);
				 $("#"+this.id +" .usersName").animate({ 'font-size':'1.4em','left':'160px',"padding-top":"35px"},400);

			}
			

			 
// 			 $(".box1").animate({ left : "200px" },1000, function() {
// 			      $(".box2").animate({ left : "50px" },1000, function() {
// 			        $(".box1").animate({ top : "150px" },1000, function() {
// 			          $(".box2").animate({ top : "0px" },1000, function() {
// 			            alert("완료!");
// 			          });
// 			        });
// 			      });
// 			    });
 
		 });
		 
		 $('.ranked').mouseleave(function() { 
			 var a = $(this).next().attr("id");
			 var $btn = $(".ranked");
					
					 $("#"+a).slideDown(350);
						$("#"+this.id).stop().animate({ width: "278px", height :"55px" }, 370);		// 크기 복구
						
						$("#"+this.id +" .info").stop().animate({ width: "50px", height :"45px" ,'margin-top':'5px'}, 350);	//크기 복구
						
						 $("#"+this.id +" .usersName").stop().animate({ 'font-size':'1.1em','left':'105px',"padding-top":"15px"}, 330);	//글자 복구
			 
			 
			
				 
			 }); 
		 
		 
		 
		 
		 
		 
		 
			//10번
		 $('.ranked2').click(function() { 
			var a = $(this).prev().attr("id");
			var $btn = $(".ranked");
			
			if($("#"+a).is(':animated')){
						
			}else if(!$("#"+a).is(':animated')){
				$("#"+a).slideUp(400);
				 $("#"+this.id).animate({'height':'110px'},400);		
				 $("#"+this.id +" .info").animate({ 'width':'100px','height':'90px','margin-top':'10px'},400);
				 $("#"+this.id +" .usersName").animate({ 'font-size':'1.4em','left':'160px',"padding-top":"35px"},400);
			}
				
			
			 
		 });
		 
		 $('.ranked2').mouseleave(function() { 
			 var a = $(this).prev().attr("id");
			 $("#"+a).slideDown(400);
				$("#"+this.id).stop().animate({ width: "278px", height :"55px" }, 400);
				$("#"+this.id +" .info").stop().animate({ width: "50px", height :"45px" ,'margin-top':'5px'}, 400);
				 $("#"+this.id +" .usersName").stop().animate({ 'font-size':'1.1em','left':'105px',"padding-top":"15px"}, 400);
				
				 
			 }); 
		 
		 //9번

		 $('.ranked3').click(function() { 
			var a = $(this).next().attr("id");
			var $btn = $(".ranked");
			
			if($("#"+a).is(':animated')){
				
			}else if(!$("#"+a).is(':animated')){
				$("#"+a).hide(400);
				 $("#"+this.id).animate({'height':'110px'},400);		
				 $("#"+this.id +" .info").animate({ 'width':'100px','height':'90px','margin-top':'10px'},400);
				 $("#"+this.id +" .usersName").animate({ 'font-size':'1.4em','left':'160px',"padding-top":"35px"},400);
			}
			
			 
		 });
		 
		 $('.ranked3').mouseleave(function() { 
			 var a = $(this).next().attr("id");
			 $("#"+a).show(400);
				$("#"+this.id).stop().animate({ width: "278px", height :"55px" }, 400);
				$("#"+this.id +" .info").stop().animate({ width: "50px", height :"45px" ,'margin-top':'5px'}, 400);
				 $("#"+this.id +" .usersName").stop().animate({ 'font-size':'1.1em','left':'105px',"padding-top":"15px"}, 400);
				
				 
			 }); 
		
	})
</script>
</head>
<body>
<header id="header">
<!-- 로그인 헤더 -->
 <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="hidden-xs col-lg-7 col-sm-5 top-info" style="margin-left: 70px; ">
                    <span><i class="fa fa-unlock"></i>로그인</span>
                    <span class="hidden-sm"><i class="fa fa-user-plus"></i>회원가입</span>
                </div>
 				<div class="hidden-xs col-lg-3 col-sm-5 top-info" style="text-align: right;">
 					<span class="hidden-sm"><i class="fa fa-calendar-o"></i>이벤트</span>
 				</div>
            </div>
        </div>
    </div>
    <!-- 로그인헤더 끝 -->
    <!-- 로고 헤더 -->
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="col-lg-1 col-md-1 col-sm-1"></div>
<div class="col-lg-10 col-md-10 col-sm-10" style="padding: 0;">
<div class="col-lg-2 col-md-2 col-sm-2" style="text-align: right; padding: 0;">
        <div class="ab" style="margin-top: 23px; margin-right: 60px;">
        	<h1><a href="index.html"><img alt="" src="<c:url value="/resources/images/로고5.png"/>" style="width:230px; height: 60px;"></a></h1>
        </div><br>
</div>
<div class="col-lg-4 col-md-4 col-sm-4" style="padding: 0;">
	        <!-- 검색 바 -->
	    <div class="ab" style="margin-top: 30px; margin-left: 60px;">
	        <div class="widget widget_search" style="border: 2px solid #727cb6; border-radius: 15px; height: 45px; width: 300px;">
				<div class="site-search-area" >
					<form method="get" id="site-searchform" action="#">
						<div style=" border-radius: 6px;">
							<input style="color:#727cb6; border-bottom-left-radius:10px; border-top-left-radius:10px; background-color:transparent;border:0 solid black;" class="input-text" name="s" id="s" placeholder="상품명 검색..." type="text">
							<input id="searchsubmit" value="Search" type="submit" style=" border-bottom-right-radius: 10px; border-top-right-radius: 10px;">
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 검색 바 -->
</div>



<div class="col-lg-6 col-md-6 col-sm-6">
	 <div class="ab" style="padding-left: 55px; margin-top: 23px; ">
	<a href="../icon/id-card-o" style="color: #727cb6;"><i class="fa fa-money fa-3x" aria-hidden="true"></i> <span class="sr-only">Example of </span></a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="../icon/paypal" style="color: #727cb6;"><i class="fa fa-paypal fa-3x" aria-hidden="true"></i> <span class="sr-only">Example of </span></a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="../icon/cart-arrow-down" style="color: #727cb6;"><i class="fa fa-cart-arrow-down fa-3x" aria-hidden="true"></i> <span class="sr-only">Example of </span></a>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="../icon/sitemap" style="color: #727cb6;"><i class="fa fa-sitemap fa-3x" aria-hidden="true"></i> <span class="sr-only">Example of </span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-weight: bold; color:#727cb6;">상품권 등록</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-weight: bold; color:#727cb6;">포인트 충전</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-weight: bold; color:#727cb6;">장바구니</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-weight: bold; color:#727cb6;">등급별 혜택</span>
</div>
</div>
</div>
<div class="col-lg-1 col-md-1 col-sm-1"></div>

<!-- 메인 랭킹 시작 -->
<div class="col-lg-12 col-md-12 col-sm-12" style="border-bottom: 1px solid #727cb6;">
	<div class="navbar-collapse collapse" style="width: 1050px; margin-right: 110px; ">
                            <ul class="nav navbar-nav sm" data-smartmenus-id="1495757258893402" >
                                <li><a href="#" style="color:black; width: 100px; text-align: center; font-family: 'Nanum Gothic';">사이트 소개</a>

                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 80px; text-align: center;">공지사항</a>
<!--                                     <ul class="dropdown-menu"> -->
<!--                                         <li><a href="#"></a></li> -->
<!--                                         <li><a href="#">코트</a></li> -->
<!--                                         <li><a href="#">니트</a></li> -->
<!--                                         <li><a href="#">정장</a></li> -->
<!--                                         <li><a href="#">티셔츠</a></li> -->
<!--                                         <li><a href="#">팬츠</a></li> -->
<!--                                     </ul> -->
                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 80px; text-align: center;">메뉴2</a>
<!--                                     <ul class="dropdown-menu"> -->
<!--                                         <li> -->
<!--                                             <a href="#" class="has-submenu" style="color:black;">악세사라<span class="sub-arrow">...</span></a> -->
<!--                                             <ul class="dropdown-menu"> -->
<!--                                                 <li><a href="#">케이스</a></li> -->
<!--                                                 <li><a href="#">브로치</a></li> -->
<!--                                             </ul> -->
<!--                                         </li> -->
<!--                                         <li><a href="#">잡화</a></li> -->
<!--                                         <li><a href="#">가방</a></li> -->
     
<!--                                     </ul> -->
                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 80px; text-align: center;">메뉴3</a>
<!--                                     <ul class="dropdown-menu"> -->
<!--                                         <li><a href="#">과일</a> -->
       
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a href="portfolio_masonry_3.html">견과</a> -->
 
<!--                                         </li> -->

<!--                                         <li> -->
<!--                                             <a href="portfolio_single.html">음료</a> -->

<!--                                         </li> -->
<!--                                          <li> -->
<!--                                             <a href="portfolio_single.html">과자</a> -->

<!--                                         </li> -->
<!--                                           <li> -->
<!--                                             <a href="portfolio_single.html">유제품</a> -->
             
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a href="portfolio_single.html">냉동식품</a> -->
               
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a href="portfolio_single.html">통조림</a> -->
                           
<!--                                         </li> -->
                                        
                                        
<!--                                     </ul> -->
                                    </li>
                                    
 									<li><a href="#" class="has-submenu" style="color:black; width: 90px; text-align: center; margin-left:310px;">자유게시판</a>
                               		 </li>
                               		 <li><a href="#" class="has-submenu" style="color:black; width: 90px; text-align: center; ">문의게시판</a>
                               		 </li>
                               		 </ul>
                        </div>
</div>
</header>
  <!-- 상품 인기순 -->
  <div class="col-lg-12 col-md-12 col-sm-12" >

<div class="col-lg-2 col-md-2 col-sm-2" style="margin-left: 100px; margin-top: 30px;">
	<div id="rank">
		<div id="week">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#" style="color: #C5C5E6;" id="cup"><i class="fa fa-trophy fa-3x"></i></a>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<span style="padding-bottom: 20px;  color: white; font-size: 1.4em; padding-top: 10px; position: absolute; top:3px; ">금주의 랭킹 순위</span>
			<div class="ranked" id="one"><div class="nomal" id="gold">1</div><!-- 순위 -->
				<span><a href="#"><img src="<c:url value="/resources/images/content/recent_1.png"/>" alt="" class="info"></a></span>
				<span class="usersName">qhrals8 </span>
			</div>
			
			<div class="ranked" id="two"><div class="nomal" id="silver">2</div>
				<span><a href="#"><img src="<c:url value="/resources/images/content/recent_1.png"/>" alt="" class="info"></a></span>
				<span class="usersName">qazwsxo05</span>
			</div>
			<div class="ranked" id="three"><div class="nomal" id="bronze">3</div>
				<span><a href="#"><img src="<c:url value="/resources/images/content/recent_1.png"/>" alt="" class="info"></a></span>
				<span class="usersName">최복민</span>
			</div>
			<div class="ranked" id="four"><div class="nomal">4</div>
				<span><a href="#"><img src="<c:url value="/resources/images/content/recent_1.png"/>" alt="" class="info"></a></span>
				<span class="usersName">김상연</span>
			</div>
			<div class="ranked" id="five"><div class="nomal">5</div>
				<span><a href="#"><img src="<c:url value="/resources/images/content/recent_1.png"/>" alt="" class="info"></a></span>
				<span class="usersName">qhrals8</span>
			</div>
			<div class="ranked" id="six"><div class="nomal">6</div>
				<span><a href="#"><img src="<c:url value="/resources/images/content/recent_1.png"/>" alt="" class="info"></a></span>
				<span class="usersName">김금명</span>
			</div>
			<div class="ranked" id="seven"><div class="nomal">7</div>
				<span><a href="#"><img src="<c:url value="/resources/images/content/recent_1.png"/>" alt="" class="info"></a></span>
				<span class="usersName">전준민</span>
			</div>
			<div class="ranked" id="eight"><div class="nomal">8</div>
				<span><a href="#"><img src="<c:url value="/resources/images/content/recent_1.png"/>" alt="" class="info"></a></span>
				<span class="usersName">이수민</span>
			</div>
			<div class="ranked3" id="night"><div class="nomal">9</div>
				<span><a href="#"><img src="<c:url value="/resources/images/content/recent_1.png"/>" alt="" class="info"></a></span>
				<span class="usersName">qhrals8</span>
			</div>
			<div class="ranked2" id="ten"><div class="nomal2" >10</div>
				<span><a href="#"><img src="<c:url value="/resources/images/content/recent_1.png"/>" alt="" class="info"></a></span>
				<span class="usersName">qazwsxo05</span>
			</div>
		</div>
	</div>
</div>
<div class="col-lg-1 col-md-1 col-sm-1"></div>
<div class="col-lg-7 col-md-7 col-sm-7" >
       <div class="carousel-intro">
                    <div class="col-md-11"  style="padding-left: 0; margin-left: 15px; margin-top: 18px;">
                        <div class="dividerHeading">
                            <h4>&nbsp;&nbsp;<span class="highlight default com">최신 상품</span></h4>
                        </div>
                        <div class="carousel-navi">
                            <div id="work-prev" class="arrow-left jcarousel-prev"><i class="fa fa-angle-left"></i></div>
                            <div id="work-next" class="arrow-right jcarousel-next"><i class="fa fa-angle-right"></i></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="jcarousel recent-work-jc" style="width:650px;">
                    <ul class="jcarousel-list">
                        
                        <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; width: 128px; height: 96px;">
                            <img src="<c:url value="/resources/images/11111.jpg"/>"style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;" class="effect"/>
							
                            </figure>
                        </li>

                      <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 5px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; ">
                            <img src="<c:url value="/resources/images/22222.jpg"/>" style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>


                            </figure>
                        </li>

                        <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; width: 128px; height: 96px;">
                            <img src="<c:url value="/resources/images/33333.jpg"/>"style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>

                            </figure>
                        </li>

                      <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 5px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; ">
                            <img src="<c:url value="/resources/images/44444.jpg"/>" style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>


                            </figure>
                        </li>

                          <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; width: 128px; height: 96px;">
                            <img src="<c:url value="/resources/images/55555.jpg"/>"style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>

                            </figure>
                        </li>

                      <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 5px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; ">
                            <img src="<c:url value="/resources/images/66666.jpg"/>" style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>


                            </figure>
                        </li>
                          <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; width: 128px; height: 96px;">
                            <img src="<c:url value="/resources/images/11111.jpg"/>"style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>

                            </figure>
                        </li>

                      <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 5px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; ">
                            <img src="<c:url value="/resources/images/11111.jpg"/>" style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>


                            </figure>
                        </li>

                    </ul>
        </div>
        </div>
        <div class="col-lg-1 col-md-1 col-sm-1"></div>

<div class="col-lg-7 col-md-7 col-sm-7" style="margin-left: 105px;">
       <div class="carousel-intro">
                    <div class="col-md-11"  style="padding-left: 0; margin-left: 15px;">
                        <div class="dividerHeading">
                            <h4><span  class="com"></span></h4>
                        </div>
                        <div class="carousel-navi">
                            <div id="work-prev" class="arrow-left jcarousel-prev"><i class="fa fa-angle-left"></i></div>
                            <div id="work-next" class="arrow-right jcarousel-next"><i class="fa fa-angle-right"></i></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="jcarousel recent-work-jc" style="width:650px;">
                    <ul class="jcarousel-list">
                        
                         <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; width: 128px; height: 96px;">
                            <img src="<c:url value="/resources/images/55555.jpg"/>"style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>

                            </figure>
                        </li>

                      <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 5px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; ">
                            <img src="<c:url value="/resources/images/66666.jpg"/>" style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>


                            </figure>
                        </li>


                         <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; width: 128px; height: 96px;">
                            <img src="<c:url value="/resources/images/11111.jpg"/>"style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>

                            </figure>
                        </li>

                      <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 5px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; ">
                            <img src="<c:url value="/resources/images/11111.jpg"/>" style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>


                            </figure>
                        </li>
                        <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; width: 128px; height: 96px;">
                            <img src="<c:url value="/resources/images/11111.jpg"/>"style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>

                            </figure>
                        </li>

                      <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 5px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; ">
                            <img src="<c:url value="/resources/images/11111.jpg"/>" style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>


                            </figure>
                        </li>
                            <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; width: 128px; height: 96px;">
                            <img src="<c:url value="/resources/images/11111.jpg"/>"style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>

                            </figure>
                        </li>

                      <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 5px; width: 155px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; ">
                            <img src="<c:url value="/resources/images/11111.jpg"/>" style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>


                            </figure>
                        </li>

                    </ul>
        </div>
        </div>
        <div class="col-lg-1 col-md-1 col-sm-1"></div>
            <!-- 마감임박순 -->
<div class="col-lg-7 col-md-7 col-sm-7" style="margin-left: 105px; margin-top: 10px;">
       <div class="carousel-intro">
                    <div class="col-md-11"  style="padding-left: 0; margin-left: 15px;">
                        <div class="dividerHeading">
                            <h4>&nbsp;&nbsp;<span class="highlight default com">마감 임박</span></h4>
                        </div>
                        <div class="carousel-navi">
                            <div id="work-prev" class="arrow-left jcarousel-prev"><i class="fa fa-angle-down"></i></div>
                            <div id="work-next" class="arrow-right jcarousel-next"><i class="fa fa-angle-up"></i></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="jcarousel recent-work-jc" style="width:650px;">
                    <ul class="jcarousel-list">
                        
                        <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 315px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                            <img src="<c:url value="/resources/images/77777.jpg"/>" style="width:100%;  max-width: 288px; min-width:288px; min-height:217px; max-height: 217px; vertical-align: middle;"/>

                              
                            </figure>
                        </li>

                     <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 315px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                            <img src="<c:url value="/resources/images/88888.jpg"/>" style="width:100%;  max-width: 288px; min-width:288px; min-height:217px; max-height: 217px; vertical-align: middle;"/>

                              
                            </figure>
                        </li>


                        <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 315px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                            <img src="<c:url value="/resources/images/11111.jpg"/>" style="width:100%;  max-width: 288px; min-width:288px; min-height:217px; max-height: 217px; vertical-align: middle;"/>

                              
                            </figure>
                        </li>

                     <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 315px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                            <img src="<c:url value="/resources/images/11111.jpg"/>" style="width:100%;  max-width: 288px; min-width:288px; min-height:217px; max-height: 217px; vertical-align: middle;"/>

                              
                            </figure>
                        </li>

                         <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 315px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                            <img src="<c:url value="/resources/images/11111.jpg"/>" style="width:100%;  max-width: 288px; min-width:288px; min-height:217px; max-height: 217px; vertical-align: middle;"/>

                              
                            </figure>
                        </li>

                     <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 315px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                            <img src="<c:url value="/resources/images/11111.jpg"/>" style="width:100%;  max-width: 288px; min-width:288px; min-height:217px; max-height: 217px; vertical-align: middle;"/>

                              
                            </figure>
                        </li>
                    

                    </ul>
        </div>
        </div>
        </div>
    
        
        
        
        </div>
      <!-- 상품 인기순 -->
<div class="col-lg-2 col-md-2 col-sm-2"></div>
<div class="col-lg-10 col-md-10 col-sm-10" style="margin-left: 105px;"><br>
       <div class="carousel-intro">
                    <div class="col-md-11"  style="padding-left: 0; margin-left: 15px; ">
                        <div class="dividerHeading">
                            <h4>&nbsp;&nbsp;<span  class="highlight default com">인기 상품</span></h4>
                        </div>
                        <div class="carousel-navi">
                                 <div id="work-prev" class="arrow-left jcarousel-prev"><i class="fa fa-angle-down"></i></div>
                            <div id="work-next" class="arrow-right jcarousel-next"><i class="fa fa-angle-up"></i></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="jcarousel recent-work-jc" style="width:1000px;">
                    <ul class="jcarousel-list" >
                        
                        <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 475px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                             <img src="<c:url value="/resources/images/88888.jpg"/>" style="width:100%;  min-width: 448px;max-width: 448px; min-height: 338px;max-height: 338px; vertical-align: middle;"/>
							
                             
                            </figure>
                        </li>

                      <!-- Recent Work Item -->
                        
                       <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 475px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                             <img src="<c:url value="/resources/images/99999.jpg"/>" style="width:100%;  min-width: 448px;max-width: 448px; min-height: 338px;max-height: 338px; vertical-align: middle;"/>

                             
                            </figure>
                        </li>



                         <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 475px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                             <img src="<c:url value="/resources/images/11111.jpg"/>" style="width:100%;  min-width: 448px;max-width: 448px; min-height: 338px;max-height: 338px; vertical-align: middle;"/>

                             
                            </figure>
                        </li>

                      <!-- Recent Work Item -->
                        
                       <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 475px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                             <img src="<c:url value="/resources/images/11111.jpg"/>" style="width:100%;  min-width: 448px;max-width: 448px; min-height: 338px;max-height: 338px; vertical-align: middle;"/>

                             
                            </figure>
                        </li>

                           <!-- Recent Work Item -->
                        
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 475px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                             <img src="<c:url value="/resources/images/11111.jpg"/>" style="width:100%;  min-width: 448px;max-width: 448px; min-height: 338px;max-height: 338px; vertical-align: middle;"/>

                             
                            </figure>
                        </li>

                      <!-- Recent Work Item -->
                        
                       <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 475px;">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                             <img src="<c:url value="/resources/images/11111.jpg"/>" style="width:100%;  min-width: 448px;max-width: 448px; min-height: 338px;max-height: 338px; vertical-align: middle;"/>

                             
                            </figure>
                        </li>
                     
                    </ul>
        </div>
        </div>
<div class="col-lg-1 col-md-1 col-sm-1"></div>

<div class="col-lg-12 col-md-12 col-sm-12" style="padding: 0;"><br><br><br><br><br>
<section class="promo_box" style="background: #C5C5E6;">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9" >
                        <div class="promo_content">
                            <h3>지금 바로 당신의 개인 쇼핑몰을 만드십시오!</h3>
                            <p>무료 회원가입으로 당신만의 홈페이지를 운영하세요 </p>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="pb_action">
                            <a class="btn btn-lg btn-default" href="#fakelink">
                                <i class="fa fa-file-text"></i>
                               홈페이지 제작
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="footer_bottom" style="background:#727cb6;">
		<div class="container">
			<div class="row">
            <div class="col-sm-6">
                <p class="copyright" style="color: black;">© Copyright 2015 Edge | Powered by  <a href="http://www.jqueryrain.com/">jQuery Rain</a></p>
            </div>

            <div class="col-sm-6 ">
                <div class="footer_social">
                    <ul class="footbot_social" >
                        <li><a class="fb" href="#." data-placement="top" data-toggle="tooltip" title="Facebook"><i class="fa fa-facebook" style="color: white;"></i></a></li>
                        <li><a class="twtr" href="#." data-placement="top" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter" style="color: white;"></i></a></li>
                        <li><a class="dribbble" href="#." data-placement="top" data-toggle="tooltip" title="Dribbble"><i class="fa fa-dribbble"style="color: white;"></i></a></li>
                        <li><a class="skype" href="#." data-placement="top" data-toggle="tooltip" title="Skype"><i class="fa fa-skype"style="color: white;"></i></a></li>
                        <li><a class="rss" href="#." data-placement="top" data-toggle="tooltip" title="RSS"><i class="fa fa-rss"style="color: white;"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
		</div>
	</section>
</div>



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


                    <script type="text/javascript">
                        $(document).ready(function () {
                            $.fn.carousel = function (op) {
                                var op, ui = {};
                                op = $.extend({
                                    speed: 500,
                                    autoChange: false,
                                    interval: 5000
                                }, op);
                                ui.carousel = this;
                                ui.items = ui.carousel.find('.carousel-item');
                                ui.itemsLen = ui.items.length;

                                // CREATE CONTROLS
                                ui.ctrl = $('<div />', { 'class': 'carousel-control' });
                                ui.prev = $('<div />', { 'class': 'carousel-prev' });
                                ui.next = $('<div />', { 'class': 'carousel-next' });
                                ui.pagList = $('<ul />', { 'class': 'carousel-pagination' });
                                ui.pagItem = $('<li></li>');
                                for (var i = 0; i < ui.itemsLen; i++) {
                                    ui.pagItem.clone().appendTo(ui.pagList);
                                }
                                ui.prev.appendTo(ui.ctrl);
                                ui.next.appendTo(ui.ctrl);
                                ui.pagList.appendTo(ui.ctrl);
                                ui.ctrl.appendTo(ui.carousel);
                                ui.carousel.find('.carousel-pagination li').eq(0).addClass('active');
                                ui.carousel.find('.carousel-item').each(function () {
                                    $(this).hide();
                                });
                                ui.carousel.find('.carousel-item').eq(0).show().addClass('active');


                                // CHANGE ITEM
                                var changeImage = function (direction, context) {
                                    var current = ui.carousel.find('.carousel-item.active');

                                    if (direction == 'index') {
                                        if (current.index() === context.index())
                                            return false;

                                        context.addClass('active').siblings().removeClass('active');

                                        ui.items.eq(context.index()).addClass('current').fadeIn(op.speed, function () {
                                            current.removeClass('active').hide();
                                            $(this).addClass('active').removeClass('current');
                                        });
                                    }

                                    if (direction == 'prev') {
                                        if (current.index() == 0) {
                                            ui.carousel.find('.carousel-item:last').addClass('current').fadeIn(op.speed, function () {
                                                current.removeClass('active').hide();
                                                $(this).addClass('active').removeClass('current');
                                            });
                                        }
                                        else {
                                            current.prev().addClass('current').fadeIn(op.speed, function () {
                                                current.removeClass('active').hide();
                                                $(this).addClass('active').removeClass('current');
                                            });
                                        }
                                    }

                                    if (direction == undefined) {
                                        if (current.index() == ui.itemsLen - 1) {
                                            ui.carousel.find('.carousel-item:first').addClass('current').fadeIn(300, function () {
                                                current.removeClass('active').hide();
                                                $(this).addClass('active').removeClass('current');
                                            });
                                        }
                                        else {
                                            current.next().addClass('current').fadeIn(300, function () {
                                                current.removeClass('active').hide();
                                                $(this).addClass('active').removeClass('current');
                                            });
                                        }
                                    }
                                    ui.carousel.find('.carousel-pagination li').eq(ui.carousel.find('.carousel-item.current').index()).addClass('active').siblings().removeClass('active');
                                };

                                ui.carousel
                                    .on('click', 'li', function () {
                                        changeImage('index', $(this));
                                    })
                                    .on('click', '.carousel-prev', function () {
                                        changeImage('prev');
                                    })
                                    .on('click', '.carousel-next', function () {
                                        changeImage();
                                    });

                                // AUTO CHANGE
                                if (op.autoChange) {
                                    var changeInterval = setInterval(changeImage, op.interval);
                                    ui.carousel
                                        .on('mouseenter', function () {
                                            clearInterval(changeInterval);
                                        })
                                        .on('mouseleave', function () {
                                            changeInterval = setInterval(changeImage, op.interval);
                                        });
                                }
                                return this;
                            };

                            $('.porDetCarousel').each(function () {
                                $(this).carousel({
                                    autoChange: true
                                });
                            });
                        });
                    </script>
                    <script>
    (function ($) {
        var $container = $('.masonry_wrapper'),
                colWidth = function () {
                    var w = $container.width(),
                            columnNum = 1,
                            columnWidth = 0;
                    if (w > 1200) {
                        columnNum  = 3;
                    } else if (w > 900) {
                        columnNum  = 3;
                    } else if (w > 600) {
                        columnNum  = 2;
                    } else if (w > 300) {
                        columnNum  = 1;
                    }
                    columnWidth = Math.floor(w/columnNum);
                    $container.find('.item').each(function() {
                        var $item = $(this),
                                multiplier_w = $item.attr('class').match(/item-w(\d)/),
                                multiplier_h = $item.attr('class').match(/item-h(\d)/),
                                width = multiplier_w ? columnWidth*multiplier_w[1]-4 : columnWidth-4,
                                height = multiplier_h ? columnWidth*multiplier_h[1]*0.5-4 : columnWidth*0.5-4;
                        $item.css({
                            width: width,
                            height: height
                        });
                    });
                    return columnWidth;
                }

        function refreshWaypoints() {
            setTimeout(function() {
            }, 1000);
        }
        function setPortfolio() {
            setColumns();
            $container.isotope('reLayout');
        }

        isotope = function () {
            $container.isotope({
                resizable: true,
                itemSelector: '.item',
                masonry: {
                    columnWidth: colWidth(),
                    gutterWidth: 0
                }
            });
        };
        isotope();
        $(window).smartresize(isotope);
    }(jQuery));
</script>
                   <script src="<c:url value="/resources/js/main.js"/>"></script>
</html>
