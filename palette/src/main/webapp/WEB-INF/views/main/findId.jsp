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
	
		<img alt="" src="<c:url value='/resources/images/로고4.png'/>" style="width:230px; height: 60px;"><br><br><br><br>
		
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
			<p style="text-align: left; font-size: 1.35em;">&nbsp;&nbsp;이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="&nbsp;&nbsp;이름 입력(2자 이상)" style="width: 311px; height: 53px; border-radius: 10px; border : 1px solid silver;"></p><br><br>
			<p style="text-align: left; font-size: 1.35em;">&nbsp;&nbsp;이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" placeholder="&nbsp;&nbsp;이메일 입력"  style="width: 311px; height: 53px; border-radius: 10px; border : 1px solid silver;"></p>
			<br><br>
			<div style="width: 400px; height:20px; border-top: 1px solid silver; display: inline-block; position: absolute; text-align:left; left: 70px; padding-top: 20px;">
				아직 팔레트 회원이 아닌가요?&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">회원가입</a>
			</div>
			<br><br>
			<br><br>
			<button type="button" id="btnLogin" class="btn_login03"style="text-align: center; width :264px; height :66px; border:0; background:#727cb6; margin-left: 5px;"><span id="login" style="color:white;">아이디 찾기</span></button>
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
