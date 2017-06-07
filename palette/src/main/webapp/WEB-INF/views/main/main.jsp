<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    
<!DOCTYPE html>

<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Portfolio Single - Edge Responsive Multipurpose Template</title>

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
  <link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>">
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
<!-- 헤더 -->
<header id="header">
 <%@ include file="/WEB-INF/views/header/MainHeader.jsp" %>
</header>
<!-- 메인 랭킹 시작 -->
  <div class="col-lg-12 col-md-12 col-sm-12" >
	<%@ include file="/WEB-INF/views/side/RankSide.jsp" %>

<div class="col-lg-1 col-md-1 col-sm-1"></div>
<!-- 상품 최신순으로 가져오기 -->
<div class="col-lg-7 col-md-7 col-sm-7">
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

                <div class="jcarousel recent-work-jc" style="width:650px; margin-left: 3px;">
                    <ul class="jcarousel-list">
                        
                        <!-- Recent Work Item -->
                        <c:forEach items="${list.recent1 }" var="recent1"  varStatus="index">
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 155px;">
                        	<a href="/palette/miniHome/${recent1.userId }/productMain/${recent1.itemNo.intValue()}">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; width: 128px; height: 96px;">
                            <img src="<c:url value="/productImg/${recent1.imgName }"/>"style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;" class="effect"/>
							
                            </figure>
                            </a>
                        </li>
						</c:forEach>

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
                        <c:forEach items="${list.recent2 }" var="recent2"  varStatus="index">
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 155px;">
                            <a href="/palette/miniHome/${recent2.userId }/productMain/${recent2.itemNo.intValue()}">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6; width: 128px; height: 96px;">
                            <img src="<c:url value="/productImg/${recent2.imgName }"/>"style="width:100%; height:auto; max-width: 128px; max-height: 96px; vertical-align: middle;"/>

                            </figure>
                            </a>
                        </li>
						</c:forEach>
                     
                    </ul>
        </div>
        </div>
        <div class="col-lg-1 col-md-1 col-sm-1"></div>
        
        <!-- 상품 최신순으로 가져오기 끝-->
        
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
                         <c:forEach items="${list.inven }" var="inven"  varStatus="index">
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 315px;">
                            <a href="/palette/miniHome/${inven.userId }/productMain/${inven.itemNo.intValue()}">
                            <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                            <img src="<c:url value="/productImg/${inven.imgName }"/>" style="width:100%;  max-width: 288px; min-width:288px; min-height:217px; max-height: 217px; vertical-align: middle;"/>

                              
                            </figure>
                            </a>
                        </li>
						</c:forEach>
                    

                    </ul>
        </div>
        </div>
        </div>
    
        
        
        
        </div>
        <!-- 마감 임박순 끝 -->
        
      <!-- 상품 많이 팔린순 -->
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
                        <c:forEach items="${list.score }" var="score"  varStatus="index">
                        <li class="col-sm-2 col-md-2 col-lg-2" style="padding-left: 15px; margin-left: 7px; width: 475px;">
                          
							<a href="/palette/miniHome/${score.userId }/productMain/${score.itemNo.intValue()}">	
							 <figure class="touching effect-bubba" style="border-radius: 10px; border: 1px dashed #727cb6;">
                             <img src="<c:url value="/productImg/${score.imgName }"/>" style="width:100%;  min-width: 448px;max-width: 448px; min-height: 338px;max-height: 338px; vertical-align: middle;"/>
                            </figure>
                            </a>
                        </li>
						</c:forEach>
                     
                    </ul>
        </div>
        </div>
<div class="col-lg-1 col-md-1 col-sm-1"></div>
<!-- 상품 많이 팔린 순 끝 -->

<!-- Footer Start-->
<%@ include file="/WEB-INF/views/footer/MainFooter.jsp" %>

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
