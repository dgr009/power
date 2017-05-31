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
 	th{
		text-align: center;
	}
	td{
		text-align: center;
	}
	.title:HOVER{
		text-decoration: underline;
		cursor: pointer;
	}
  }

  </style>



<script type="text/javascript">

</script>
</head>
<body>
<header id="header">
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
</header>
<div class="col-xs-12 col-xs-12 col-xs-12"  style="border-bottom: 1px solid silver;"><br>
<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
<div class="col-xs-10 col-xs-10 col-xs-10" >
	<img alt="" src="<c:url value="/resources/images/로고4.png"/>" style="width:150px; height: 40px; margin-top: 3px;">
	<div class="navbar-collapse collapse" style="width: 700px; display: inline-block; ">
                            <ul class="nav navbar-nav sm" data-smartmenus-id="1495757258893402"  style="padding-bottom: 15px; margin-left: 120px;">
                                <li><a href="#" style=" width: 85px; text-align: center; color:black;  border-radius: 35px;">내 정보보기</a>

                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 70px; text-align: center;  font-size: 1.1em; font-size: 1.15em; color:#727cb6; font-weight:bold;">즐겨찾기</a>

                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 70px; text-align: center;  font-size: 1.1em;">장바구니</a>

                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 70px; text-align: center; font-size: 1.1em;">주문내역</a>
								</li>
								
								 <li><a href="#" class="has-submenu" style="color:black; width: 70px; text-align: center;  font-size: 1.1em;">충전내역</a>
								</li>
                               	</ul>
                        </div>
                        <br>
                        <br>
                       
</div>
<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
</div>

<!-- 회원 정보 -->
<div class="col-xs-12 col-xs-12 col-xs-12" ><br><br>

	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	
	<div class="col-xs-10 col-xs-10 col-xs-10" >
	
	
	<div style="width: 1000px; height: 540px; border : 1px solid silver; border-bottom: none; ; position: relative;"> 
	
	<p style="padding-top:30px; padding-left: 30px;">
		<span style="font-size: 1.15em; font-weight: bold; color:#727cb6;">qhrals8</span>님의 <span class="highlight light">즐겨찾기</span> 추가 목록 
	</p>
	<p style="font-weight: bold; padding-left: 30px;">총 <span class="highlight default">10</span>개</p>
	<br>
		<div class="well" style="height: 45px; padding-top: 12px; ">		
		<table>
			<thead>
				<tr>
					<th style="width:100px; border-right: 1px dashed black; padding-right: 25px;">NO</th>
					<th style="width:200px; border-right: 1px dashed black;">프로필 사진</th>
					<th style="width:400px; border-right: 1px dashed black; ">홈페이지 이름</th>
					<th style="width:250px; padding-left: 20px; ">주인장 ID</th>
				</tr>
			</thead>
		</table>
		</div>
		
	<table style="">
		
		<tbody>
			<tr style="padding-left: 50px ;">
				<td style="width:120px;  padding-bottom: 10px;">1</td>
				<td style="width:200px;  padding-bottom: 10px;"><img src="images/portfolio/portfolio_1_1.png" alt="" class="info" style=" width: 63px; height: 43px; border-radius: 43px;"></td>
				<td class="title" style="width:400px;  padding-bottom: 10px;">김금명의 XL 쇼핑몰 사이트</td>
				<td style="width:270px;  padding-bottom: 10px;">rlarmaaud</td>
			</tr>
			
			<tr style="">
				<td style="width:120px; padding-bottom: 10px; ">2</td>
				<td style="width:200px; padding-bottom: 10px;"><img src="images/portfolio/portfolio_1_1.png" alt="" class="info" style=" width: 63px; height: 43px; border-radius: 43px;"></td>
				<td class="title" style="width:400px; padding-bottom: 10px; ">싼 가격에 드리는 중고 옷 판매사이트</td>
				<td style="width:270px; padding-bottom: 10px; ">qhrals8</td>
			</tr>
			
				<tr style="padding-left: 50px ;">
				<td style="width:120px;  padding-bottom: 10px;">1</td>
				<td style="width:200px;  padding-bottom: 10px;"><img src="images/portfolio/portfolio_1_1.png" alt="" class="info" style=" width: 63px; height: 43px; border-radius: 43px;"></td>
				<td class="title" style="width:400px;  padding-bottom: 10px;">김금명의 XL 쇼핑몰 사이트</td>
				<td style="width:270px;  padding-bottom: 10px;">rlarmaaud</td>
			</tr>
			
				<tr style="padding-left: 50px ;">
				<td style="width:120px;  padding-bottom: 10px;">1</td>
				<td style="width:200px;  padding-bottom: 10px;"><img src="images/portfolio/portfolio_1_1.png" alt="" class="info" style=" width: 63px; height: 43px; border-radius: 43px;"></td>
				<td class="title" style="width:400px;  padding-bottom: 10px;">김금명의 XL 쇼핑몰 사이트</td>
				<td style="width:270px;  padding-bottom: 10px;">rlarmaaud</td>
			</tr>
			
				<tr style="padding-left: 50px ;">
				<td style="width:120px;  padding-bottom: 10px;">1</td>
				<td style="width:200px;  padding-bottom: 10px;"><img src="images/portfolio/portfolio_1_1.png" alt="" class="info" style=" width: 63px; height: 43px; border-radius: 43px;"></td>
				<td class="title" style="width:400px;  padding-bottom: 10px;">김금명의 XL 쇼핑몰 사이트</td>
				<td style="width:270px;  padding-bottom: 10px;">rlarmaaud</td>
			</tr>
			
		

			
		</tbody>
	</table>
	<br>
		<div style="width: 1000px; border-top:1px dashed silver;"></div>
			<ul class="pagination" style="margin-left: 380px; ">
		        <li><a href="#">«</a></li>
		        <li class="active"><a href="#">1</a></li>
		        <li><a href="#">2</a></li>
		        <li><a href="#">3</a></li>
		        <li><a href="#">4</a></li>
		        <li><a href="#">5</a></li>
		        <li><a href="#">»</a></li> <br><br> <br><br>
		    </ul>
	    </div>
	
	
	
	
	
	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	</div>
</div>
<!-- 회원 정보 footer -->

<div class="col-xs-12 col-xs-12 col-xs-12" >

	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	
	<div class="col-xs-10 col-xs-10 col-xs-10">
	
	
	<div style="width: 1000px; height: 100px; background: #fbfbfb;  border : 1px solid silver; border-top: none; "> 	
		<p style="padding : 37px; padding-left: 115px; font-size: 1.1em"> 쓰면 쓸 수록 커지는 등급별 혜택을 누리세요! &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span style="color:#727cb6; font-weight: bold;">홈페이지 결제권 구매하고 등급별 혜택 받기 !</span>
		</p>
	</div><br><br>
	<br>
	<br>
	
	</div>
	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
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
