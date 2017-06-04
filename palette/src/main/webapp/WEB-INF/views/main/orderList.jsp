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
                                <li><a href="#" class="has-submenu" style="color:black; width:85px; text-align: center;  font-size: 1.1em;">내 정보보기</a>

                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 70px; text-align: center;  font-size: 1.1em;">즐겨찾기</a>

                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 70px; text-align: center;  font-size: 1.1em;">장바구니</a>

                                </li>

                                <li><a href="#" class="has-submenu" style="color:black; width: 70px; text-align: center;  font-size: 1.15em; color:#727cb6; font-weight:bold;">주문내역</a>
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
<div class="col-xs-12 col-xs-12 col-xs-12"  style=""><br><br>

	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	
	<div class="col-xs-10 col-xs-10 col-xs-10" >
	
	
	<div style="width: 1000px; height: 200px; border : 1px solid silver;  position: relative;"> 
	
	<div style="width:355px; height: 114px; display: inline-block;  margin-left: 40px;  border-right: 1px dashed gray; position: absolute; bottom:40px;">
	
	<p style="padding-top: 5px; font-size: 1.4em; font-weight: bold;">&nbsp;&nbsp;&nbsp;팔레트 포인트 잔액 : 
	<span style="color:#727cb6; font-size: 1.2em;">
	10.000</span>&nbsp;원</p><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<button type="button" id="btnLogin" class="btn_login03"style="border-radius:20px; text-align: center; width :95px; height :35px; border:0; background:#727cb6; margin-left: 10px; position: absolute; top: 50px;">
	<span id="login" style="color:white; font-size: 0.9em; font-weight: bold;">
				이용권 구매</span>
	</button>
	<button type="button" id="btnLogin" class="btn_login03"style="border-radius:20px; text-align: center; width :110px; height :35px; border:0; background:white; border:1px solid #727cb6; margin-left: 5px; position: absolute; top: 50px; left: 150px;">
	<span id="login" style="color:#727cb6; font-size: 0.9em; font-weight: bold;">
				이용권 구매내역</span>
			</button>
	</div>
	<div style="width:550px; height : 114px; display: inline-block;  margin : 35px; margin-top: 50px; position: absolute; left:400px; margin-left: none; " >
		<p>팔레트 포인트는 이용권을 구매하실 때 사용 하실 수 있습니다.</p>
		<p>결제금액은 팔레트 충전금액에 부가가치세 10%가 포함된 실제 결제된 금액입니다.</p>
		<p>팔레트 충전금액과 내역은 마이페이지 > 결제목록에서 확인 가능합니다.</p>
	</div>
	
	
	</div>
	<div class="col-xs-1 col-xs-1 col-xs-1" ></div>
	
<br>	
	<table style="width: 1000px;"> 
		<thead >
			<tr style="background: #fafafa;  border: 1px solid #e6e6e6; border-left: none; border-right: none; border-top: 2px solid silver;">
				<th style="text-align: center; height: 35px; width: 65px;">NO</th>
				<th style="text-align: center; width: 160px;">날짜</th>
				<th style="text-align: center;">상품명</th>
				<th style="text-align: center; width: 180px;">옵션</th>
				<th style="text-align: center; width: 65px;">개수</th>
				<th style="text-align: center; width: 140px;">금액</th>
				<th style="text-align: center;width: 85px;">주문상태</th>
			</tr>
		</thead>
		<tbody style="border: 1px solid #e6e6e6; border-left: none;  border-right: none;">
			<tr style="border: 1px solid #e6e6e6; border-left: none; border-right: none;">
				<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">1</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">2015/11/11:12:00</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: left; padding-left: 30px;">알록달록 색연필 세트</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">사이즈 - 100 XL</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">24</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">100.000<i class="fa fa-krw" style="color: #727cb6;"></i></td>
				<td style="text-align: center; border: 1px solid #e6e6e6; border-right: none;">주문완료</td>
			</tr>
			<tr>
				<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">2</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">2015/11/11:12:00</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none;  text-align: left; padding-left: 30px;">포인트 알록달록 색연필 세트</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">사이즈 - 100 XL</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">24</td>
					<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">100.000<i class="fa fa-krw" style="color: #727cb6;"></i></td>
			<td style="text-align: center; border: 1px solid #e6e6e6; border-right: none;">주문완료</td>
			</tr>
			<tr>
				<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">2</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">2015/11/11:12:00</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none;  text-align: left; padding-left: 30px;">알록달록 색연필 세트 환급</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">사이즈 - 100 XL</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">24</td>
					<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">100.000<i class="fa fa-krw" style="color: #727cb6;"></i></td>
				<td style="text-align: center; border: 1px solid #e6e6e6; border-right: none;">주문완료</td>
			</tr>
			<tr>
				<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">2</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">2015/11/11:12:00</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none;  text-align: left; padding-left: 30px;">알록달록 색연필 세트</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">사이즈 - 100 XL</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">24</td>
					<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">100.000<i class="fa fa-krw" style="color: #727cb6;"></i></td>
				<td style="text-align: center; border: 1px solid #e6e6e6; border-right: none;">주문완료</td>
			</tr>
			<tr>
				<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">2</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">2015/11/11:12:00</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none;  text-align: left; padding-left: 30px;">알록달록 색연필 세트</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">사이즈 - 100 XL</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">24</td>
					<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">100.000<i class="fa fa-krw" style="color: #727cb6;"></i></td>
				<td style="text-align: center; border: 1px solid #e6e6e6; border-right: none;">주문완료</td>
			</tr>
			<tr>
				<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">2</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">2015/11/11:12:00</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none;  text-align: left; padding-left: 30px;">알록달록 색연필 세트</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">사이즈 - 100 XL</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">24</td>
					<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">100.000<i class="fa fa-krw" style="color: #727cb6;"></i></td>
				<td style="text-align: center; border: 1px solid #e6e6e6; border-right: none;">주문완료</td>
			</tr>
			<tr>
				<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">2</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">2015/11/11:12:00</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none;  text-align: left; padding-left: 30px;">알록달록 색연필 세트</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">사이즈 - 100 XL</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">24</td>
					<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">100.000<i class="fa fa-krw" style="color: #727cb6;"></i></td>
				<td style="text-align: center; border: 1px solid #e6e6e6; border-right: none;">주문완료</td>
			</tr>
			<tr>
				<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">2</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">2015/11/11:12:00</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none;  text-align: left; padding-left: 30px;">알록달록 색연필 세트</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">사이즈 - 100 XL</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">24</td>
					<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">100.000<i class="fa fa-krw" style="color: #727cb6;"></i></td>
				<td style="text-align: center; border: 1px solid #e6e6e6; border-right: none;">배송중</td>
			</tr>
			<tr>
				<td style="border: 1px solid #e6e6e6;  border-left: none; height: 40px; text-align: center;">2</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">2015/11/11:12</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: left; padding-left: 30px;">알록달록 색연필 세트</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">사이즈 - 100 XL</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">24</td>
				<td style="border: 1px solid #e6e6e6;  border-left: none; text-align: center;">100.000<i class="fa fa-krw" style="color: #727cb6;"></i></td>
				<td style="text-align: center; border: 1px solid #e6e6e6; border-right: none;">배송중</td>
			</tr>
			
		</tbody>
	</table>	<br>
	 	<ul class="pagination" style="margin-left: 380px;  bottom: 23px; height: 10px; ">
		        <li><a href="#">«</a></li>
		        <li class="active"><a href="#">1</a></li>
		        <li><a href="#">2</a></li>
		        <li><a href="#">3</a></li>
		        <li><a href="#">4</a></li>
		        <li><a href="#">5</a></li>
		        <li><a href="#">»</a></li> 
		    </ul>   
	<br><br><br><br>
	</div>
	
	<div class="col-xs-12 col-xs-12 col-xs-12"  style="border-top: 1px solid silver; padding:0;">
		<div class="navbar-collapse collapse" style="width: 700px; height:30px; display: inline-block; padding:0; ">
            <ul class="nav navbar-nav sm"  style= "margin-left: 335px;">
                <li>
                	<a href="#" class="has-submenu" style="color:black; width: 70px; text-align: center;  font-size: 1.1em; ">메인으로</a>
                </li>
                <li>
                	<a href="#" class="has-submenu" style="color:black; width: 70px; text-align: center;  font-size: 1.1em; ">고객센터</a>
                </li>
            </ul>
        </div>
	<br><br><br>
	<div class="col-xs-12 col-xs-12 col-xs-12"  style="border-top: 1px solid #e6e6e6; bottom:10px; padding:0;"></div><br>
		<p style="font-size: 0.85em; color:gray; text-align: center;">서울시 강남구 테헤란로 103길 17대표이사 신원수, 박성훈사업자등록번호 138-81-05876통신판매업 신고번호 제2011-서울강남-02008호</p>
		<p style="font-size: 0.8em; color:gray;text-align: center;">
		문의전화(평일 09:00~18:00) 1566-7727 (유료)이메일 : meloninformation@iloen.com© 2016. LOEN Entertainment, Inc. ALL RGIHTS RESERVED.</p>
	<br>
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
