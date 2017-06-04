<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@page import="com.icia.palette.vo.Users"%>
<%
	Users userMini = (Users) session.getAttribute("user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<link rel="stylesheet" href="https://use.fontawesome.com/f4a7d32a7d.css">
<!-- fortAwesome -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
	
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
    min-height: 290px;
    padding : 0;
    padding-left: 50px;
    }
    
input[type="submit"] {
	font-family:FontAwesome;
}

input[type="button"] {
	font-family:FontAwesome;
}

.read:HOVER{
	cursor: pointer;
}
#read1:HOVER, #read2:HOVER, #read3:HOVER {
	cursor: pointer;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://use.fontawesome.com/f4a7d32a7d.js"></script>
	
<script>
	$(function(){
		var x = <%=userMini.getUserPoint() %>;
		
		
		//3만원 결제시
		$("#read1").on("click",function(){
			$("#btnPay").empty();
			$("#minus").text("30000P");	
			
			var a = $("#minus").text().split("P")
			var aa = a[0];
			var b = x-a[0]
			
			$("#result").text(b);
			$("#result").append("P")
			$(".ddd").attr("class","highlight light");
			
			if(<%=userMini.getUserPoint() %><30000){
				alert("포인트가 부족합니다. 충전이 필요합니다")
				$("#btnPay").text("※불가능")
				$("#btnPay").css("color","red");
				
			}
			else{
				$("#btnPay").append("<form action='/palette/miniHome/<%=userMini.getUserId() %>/pay' method='post'><button type='submit' class='btn btn-sm btn-social-pinterest dddd'><i class='fa fa-fw' aria-hidden='true' title='Copy to use diamond'></i> &nbsp;결제하기 </button><input type='hidden' value='<%=userMini.getUserId() %>' name='userId'></form>")
			}
			
		})
		
		//5만원 결제시
		$("#read2").on("click",function(){
			$("#btnPay").empty();
			$("#minus").text("50000P");
			
			var a = $("#minus").text().split("P")
			var aa = a[0];
			var b = x-a[0]
			
			$("#result").text(b);
			$("#result").append("P")
			$(".ddd").attr("class","highlight light");
			
			if(<%=userMini.getUserPoint() %><50000){
				alert("포인트가 부족합니다. 충전이 필요합니다")
				$("#btnPay").text("※불가능")
				$("#btnPay").css("color","red");
				
			}
			else{
				$("#btnPay").append("<form action='/palette/miniHome/<%=userMini.getUserId() %>/pay' method='post'><button type='submit' class='btn btn-sm btn-social-pinterest dddd'><i class='fa fa-fw' aria-hidden='true' title='Copy to use diamond'></i> &nbsp;결제하기 </button><input type='hidden' value='<%=userMini.getUserId() %>' name='userId'></form>")
			}
			
		})
		
		//10만원 결제시
		$("#read3").on("click",function(){
			$("#btnPay").empty();
			$("#minus").text("100000P");
			
			var a = $("#minus").text().split("P")
			var aa = a[0];
			var b = x-a[0]
			
			$("#result").text(b);
			$("#result").append("P")
			$(".ddd").attr("class","highlight light");
			
			if(<%=userMini.getUserPoint() %><100000){
				alert("포인트가 부족합니다. 충전이 필요합니다")
				$("#btnPay").text("※불가능")
				$("#btnPay").css("color","red");
			}
			else{
				$("#btnPay").append("<form action='/palette/miniHome/<%=userMini.getUserId() %>/pay' method='post'><button type='submit' class='btn btn-sm btn-social-pinterest dddd'><i class='fa fa-fw' aria-hidden='true' title='Copy to use diamond'></i> &nbsp;결제하기 </button><input type='hidden' value='<%=userMini.getUserId() %>' name='userId'></form>")
			}
			
		})

		
		
		
		
		
		
		$("#btnPay").on("click",".dddd",function(){
			
			var con_test = confirm("결제 하시겠습니까?");
			
			if(con_test == true){ 
			 	alert("결제가 성공적으로 완료되었습니다!")
			}
		})
		
	})
</script>
</head>
<body>
<!--Start Header-->
	<header id="header">
		<%@ include file="/WEB-INF/views/header/MiniMainHeader.jsp" %>
	<!-- End Header -->
					
					 <!-- =====================메인 메뉴(우측상단) 시작============================= -->
                 <%@include file="/WEB-INF/views/MenuSelect.jsp" %>
        <!-- =====================메인 메뉴(우측상단) 끝============================= -->
		<!--End Header-->
		</header>
		<!--start wrapper-->
		<section class="page_head">
            <div class="container">
                <div class="row">
                    

                        <div class="page_title">
                           <h2>홈페이지 결제</h2>
                        </div>
                    </div>
                </div>
            </div>
             </section>
             <br><br>
                    <div class="col-sm-6 col-lg-3" style="margin-left: 150px;">
                        <div class="serviceBox_5">
                            <div class="service-image">
                                <img src="<c:url value="/resources/images/사암만원.png"/>">
                            </div>
                            <div class="service-content bg2" id="read1">
                                <div class="internal">
                                    <div class="item_content">
                                        <div class="service-icon">
                                            <img src="<c:url value="/resources/images/services/service-3-icon2.png"/>">
                                        </div>
                                       <h3 ><sapn style="font-size: 1.3em; text-decoration:underline;" id="price1">30.000원</sapn><br>
                                        3개월 이용권<sapn style="font-size: 0.8em;"> + 이벤트</sapn></h3>
                                        <a class="read" href="#">구입하기 !</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="serviceBox_5">
                            <div class="service-image">
                                <img src="<c:url value="/resources/images/오오만원.png"/>">
                            </div>
                            <div class="service-content bg3 "id="read2" >
                                <div class="internal">
                                    <div class="item_content">
                                        <div class="service-icon">
                                            <img src="<c:url value="/resources/images/services/service-3-icon2.png"/>"><img src="<c:url value="/resources/images/services/service-3-icon2.png"/>">
                                        </div>
                                        <h3 ><sapn style="font-size: 1.3em; text-decoration:underline;">50.000원</sapn><br>
                                        6개월 이용권<sapn style="font-size: 0.8em;"> + 이벤트</sapn></h3>
                                        <a class="read" href="">구입하기 !</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                      <div class="col-sm-6 col-lg-3">
                        <div class="serviceBox_5">
                            <div class="service-image">
                                <img src="<c:url value="/resources/images/시입마너언.png"/>">
                            </div>
                            <div class="service-content "id="read3">
                                <div class="internal">
                                    <div class="item_content">
                                        <div class="service-icon">
                                            <img src="<c:url value="/resources/images/services/service-3-icon2.png"/>"><img src="<c:url value="/resources/images/services/service-3-icon2.png"/>"><img src="<c:url value="/resources/images/services/service-3-icon2.png"/>">
                                        </div>
                                        <h3 ><sapn style="font-size: 1.3em; text-decoration:underline;">100.000원</sapn><br>
                                        12개월 이용권<sapn style="font-size: 0.8em;"> + 이벤트</sapn></h3>
                                        <a class="read" href="">구입하기 !</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="col-sm-12 col-md-12 col-lg-12"><br><br>
                    	<div class="col-sm-1 col-md-1 col-lg-1"></div>
                    	<div class="col-sm-10 col-md-10 col-lg-10">
                    		<blockquote class="default" style="text-align: center; ">
                    			<table>
                    				<thead style="text-align: center;">
                    					<tr id="dda">
	                    					<th style="width: 300px; text-align: center;"><span class="highlight default"><%=userMini.getUserId() %></span>&nbsp;님 보유 포인트 &nbsp;:&nbsp;<span class="highlight light"><%=userMini.getUserPoint() %>P</span></th>
	                    					<th style="width: 300px; text-align: center;">차감 될 포인트 &nbsp;:&nbsp;<span class="ddd" id="minus"></span></th>
	                    					<th style="width: 300px; text-align: center;">결제 후 포인트 &nbsp;:&nbsp;<span class="ddd" id="result"></span></th>
	                    					<th style="width: 65px; text-align: center;" id="btnPay">
	                    					
	                    					</th>
	                    					
	                    				</tr>
                    				</thead>
                    			</table>
                    		</blockquote>
						</div>
						<div class="col-sm-1 col-md-1 col-lg-1"></div>
					</div>
							<br><br><br><br><br>
					

           
			

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
						$(document)
								.ready(
										function() {
											$.fn.carousel = function(op) {
												var op, ui = {};
												op = $.extend({
													speed : 500,
													autoChange : false,
													interval : 5000
												}, op);
												ui.carousel = this;
												ui.items = ui.carousel
														.find('.carousel-item');
												ui.itemsLen = ui.items.length;

												// CREATE CONTROLS
												ui.ctrl = $(
														'<div />',
														{
															'class' : 'carousel-control'
														});
												ui.prev = $('<div />', {
													'class' : 'carousel-prev'
												});
												ui.next = $('<div />', {
													'class' : 'carousel-next'
												});
												ui.pagList = $(
														'<ul />',
														{
															'class' : 'carousel-pagination'
														});
												ui.pagItem = $('<li></li>');
												for (var i = 0; i < ui.itemsLen; i++) {
													ui.pagItem.clone()
															.appendTo(
																	ui.pagList);
												}
												ui.prev.appendTo(ui.ctrl);
												ui.next.appendTo(ui.ctrl);
												ui.pagList.appendTo(ui.ctrl);
												ui.ctrl.appendTo(ui.carousel);
												ui.carousel
														.find(
																'.carousel-pagination li')
														.eq(0).addClass(
																'active');
												ui.carousel.find(
														'.carousel-item').each(
														function() {
															$(this).hide();
														});
												ui.carousel.find(
														'.carousel-item').eq(0)
														.show().addClass(
																'active');

												// CHANGE ITEM
												var changeImage = function(
														direction, context) {
													var current = ui.carousel
															.find('.carousel-item.active');

													if (direction == 'index') {
														if (current.index() === context
																.index())
															return false;

														context
																.addClass(
																		'active')
																.siblings()
																.removeClass(
																		'active');

														ui.items
																.eq(
																		context
																				.index())
																.addClass(
																		'current')
																.fadeIn(
																		op.speed,
																		function() {
																			current
																					.removeClass(
																							'active')
																					.hide();
																			$(
																					this)
																					.addClass(
																							'active')
																					.removeClass(
																							'current');
																		});
													}

													if (direction == 'prev') {
														if (current.index() == 0) {
															ui.carousel
																	.find(
																			'.carousel-item:last')
																	.addClass(
																			'current')
																	.fadeIn(
																			op.speed,
																			function() {
																				current
																						.removeClass(
																								'active')
																						.hide();
																				$(
																						this)
																						.addClass(
																								'active')
																						.removeClass(
																								'current');
																			});
														} else {
															current
																	.prev()
																	.addClass(
																			'current')
																	.fadeIn(
																			op.speed,
																			function() {
																				current
																						.removeClass(
																								'active')
																						.hide();
																				$(
																						this)
																						.addClass(
																								'active')
																						.removeClass(
																								'current');
																			});
														}
													}

													if (direction == undefined) {
														if (current.index() == ui.itemsLen - 1) {
															ui.carousel
																	.find(
																			'.carousel-item:first')
																	.addClass(
																			'current')
																	.fadeIn(
																			300,
																			function() {
																				current
																						.removeClass(
																								'active')
																						.hide();
																				$(
																						this)
																						.addClass(
																								'active')
																						.removeClass(
																								'current');
																			});
														} else {
															current
																	.next()
																	.addClass(
																			'current')
																	.fadeIn(
																			300,
																			function() {
																				current
																						.removeClass(
																								'active')
																						.hide();
																				$(
																						this)
																						.addClass(
																								'active')
																						.removeClass(
																								'current');
																			});
														}
													}
													ui.carousel
															.find(
																	'.carousel-pagination li')
															.eq(
																	ui.carousel
																			.find(
																					'.carousel-item.current')
																			.index())
															.addClass('active')
															.siblings()
															.removeClass(
																	'active');
												};

												ui.carousel
														.on(
																'click',
																'li',
																function() {
																	changeImage(
																			'index',
																			$(this));
																})
														.on(
																'click',
																'.carousel-prev',
																function() {
																	changeImage('prev');
																})
														.on(
																'click',
																'.carousel-next',
																function() {
																	changeImage();
																});

												// AUTO CHANGE
												if (op.autoChange) {
													var changeInterval = setInterval(
															changeImage,
															op.interval);
													ui.carousel
															.on(
																	'mouseenter',
																	function() {
																		clearInterval(changeInterval);
																	})
															.on(
																	'mouseleave',
																	function() {
																		changeInterval = setInterval(
																				changeImage,
																				op.interval);
																	});
												}
												return this;
											};

											$('.porDetCarousel').each(
													function() {
														$(this).carousel({
															autoChange : true
														});
													});
										});
					</script>
					<script src="<c:url value="/resources/js/main.js"/>"></script>
</body>
</html>