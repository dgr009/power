<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@page import="com.icia.palette.vo.Users"%>
<%
	Users user = (Users) session.getAttribute("user");
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

#repleCnt{
	color : orange;
	font-weight: normal;
}

#repleCnt #rrrrr{
	font-weight: bold;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://use.fontawesome.com/f4a7d32a7d.js"></script>
	
<script>


	$(function(){
		
		function print(result){
			$("#comment").empty();
			
			$("#rrrrr").empty();
			$("#rrrrr").html(result.cnt);
			
			
			$.each(result.reple, function(idx, reply){

				//alert(reply)
				var ccc= "Content"+reply.freeRepleNo;
				var cxc= reply.freeRepleNo;
				var str = " <thead><tr><th><span style='font-weight: normal;'>ID : </span>"+reply.freeRepleName+"</th><th></th>";
				str = str + "<th style='text-align: right;'><span style='font-weight: normal; font-size: 90%;'>작성일 : </span>"+reply.freeRepleDate+"</th>";
				str = str + "</tr></thead><tbody><tr>"
				str = str + "<td colspan='2' width='900px;' class='Content"+reply.freeRepleNo+"' style='text-align: left;'><i class='fa fa-ellipsis-h'></i>&nbsp;&nbsp;&nbsp;"+reply.freeRepleContent+"</td>";
				str = str + "<input type='hidden' value='"+reply.freeRepleName+"' name='freeRepleName' class='repleName'>";
				str = str + "<input type='hidden' value='"+reply.freeRepleNo+"' name='freeRepleNo' class='freeRepleNo'>";
				str = str + "<input type='hidden' value='"+reply.freeNo+"' name='freeNo' class='freeNo'>";
				
				if(reply.freeRepleName=="<%=user.getUserId()%>"){
					str = str + "<td style='text-align: right;'><input type='button' id='updateReple"+cxc+"' data-loading-text='Loading...' class='btn btn-default btn-lg updateReple' data-content='"+reply.freeRepleContent +"'data-nono='"+reply.freeRepleNo +"' value='수정' style='margin-top: 10px; height: 20px; line-height: 1px; color: white;'>";
					str = str + "&nbsp;<input type='button' id='deleteReple"+cxc+"' data-loading-text='Loading...' class='btn btn-default btn-lg deleteReple' data-cno='"+reply.freeRepleNo+"' value='삭제' style='margin-top: 10px; height: 20px; line-height: 1px; color: white;'></td></tr></tbody>"
					
				}
			
				$("#comment").append(str).trigger("create");
				$("#freeRepleContent").val("");
				
				
				//수정완료로 바꿔줌
				$('.updateReple').click(function(e){
			        var id = e.target.getAttribute('id');//누른 버튼의 id값 얻어오기

// 			        $('#'+id).html("수정 완료");   
			        var res = id.substring(11)	//잘라서 번호만 따오기
			        
			        $('#'+id).on("click",function(){
			        	$.ajax({
							url:"/api/miniHome/${mini.free.userId }/freeRepleUpdate/"+res,
							type:"post",
							data : {"freeRepleContent":$("#ddd").val(), "freeRepleNo":res,"freeNo":$(".freeNo").val()},
							dataType: 'JSON',
							success : function(result){
								
								print(result);
							}
				        })
			   		 });
			    });	
			})	
		}	
		//추가
		$("#btn1").on("click",function(){
			$.ajax({
				url:"/api/miniHome/${mini.free.userId }/freeRepleRegister/${mini.free.freeNo.intValue()}",
				type:"post",
				data : {"freeRepleContent":$("#freeRepleContent").val(), "freeRepleName":$("#freeRepleName").val()},
				dataType: 'JSON',
				success : function(result){
					
					
					print(result);
				}
			})
		})
		$("#comment").on("click",".deleteReple",function(){
			$.ajax({
				url:"/api/miniHome/${mini.free.userId }/freeRepleDelete/"+$(this).data("cno"),
				type:"post",          
				data : {"freeNo":$(".freeNo").val(),"freeRepleNo":$(this).data("cno") },
				dataType: 'JSON',
				success : function(result){
					print(result);
				}
			})
		})
		
		$("#comment").on("click",".updateReple",function(){
			
			$("td[class='Content"+$(this).data("nono")+"']").empty();
			//$("td[class='Content"+$(this).data("nono")+"']").append("<input type='text' id='ddd' value='"+$(this).data("content")+"'>");
			$("td[class='Content"+$(this).data("nono")+"']").append("<textarea rows='3' cols='' id='ddd' style='height:47px;'>"+$(this).data("content")+"</textarea>");
			
		})
		
		$(".updateReple").on("click",function(e){
			 var id = e.target.getAttribute('id');
		        $('#'+id).html("수정 완료");
		        
		        var res = id.substring(11)
		        //$(".Content"+res).text()
		        
		        
		        $('#'+id).on("click",function(){
		        	$.ajax({
						url:"/api/miniHome/${mini.free.userId }/freeRepleUpdate/"+res,
						type:"post",
						data : {"freeRepleContent":$("#ddd").val(), "freeRepleNo":res,"freeNo":$(".freeNo").val()},
						dataType: 'JSON',
						success : function(result){
							print(result);
						}
			        })
		   		 });
		})
	})
	
</script>
</head>
<body>
<!--Start Header-->
	<header id="header">
		<%@ include file="/WEB-INF/views/header/Noheader.jsp" %>
	<!-- End Header -->
		<div id="menu-bar">
			<div class="container">
				<div class="row">
					<!-- Logo / Mobile Menu -->
					<div class="col-lg-3 col-sm-3 ">
						<div id="logo">
							<h1>
								<a href="/hooligan/main/index"><img src="<c:url value="/resources/images/logo.png" />"></a>
							</h1>
						</div>
					</div>
					
					 <!-- =====================메인 메뉴(우측상단) 시작============================= -->
                 <%@include file="/WEB-INF/views/MenuSelect.jsp" %>
        <!-- =====================메인 메뉴(우측상단) 끝============================= -->
		<!--End Header-->
		</header>
		<!--start wrapper-->
		<section class="page_head">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">

                        <div class="page_title">
                           <h2>자유 게시판</h2>
                        </div>
                    </div>
                </div>
            </div>
            
             </section>
            
 
           
            <div class="col-lg-12 col-md-12 col-sm-12">
							<br><br>
						
							<form 
							action="/palette/miniHome/${mini.free.userId }/freeUpdate/${mini.free.freeNo.intValue()}"
							method="get">
							<div class="well well-lg" style=" padding-left: 35px; padding-right: 35px; margin-left: 15px; margin-right: 15px;">
							<h3 style="display: inline-block;">&nbsp;&nbsp;<i class="fa fa-group"></i>&nbsp;&nbsp;
							
							<!-- 게시물 제목 -->
							     ${mini.free.freeTitle }</h3>
							     <!-- 댓글 수 -->
							     <c:if test="${mini.free.freeRepleCnt.intValue()>0 }">
							      <h3 style="display: inline-block;" id="repleCnt">
							      	&nbsp;(
							      	<span id="rrrrr">${mini.free.freeRepleCnt.intValue() }</span>&nbsp;)
							      </h3>
							      </c:if>
							      
							     <div style="font-size: 90%;">
							     	<div style=" float: left; ">
									&nbsp;&nbsp;&nbsp;글 번호 (&nbsp;${mini.free.freeNo.intValue() }&nbsp;)
									</div>
									<div style=" float: right; ">
									조회수 (&nbsp;${mini.free.freeHits.intValue() }&nbsp;)&nbsp;&nbsp;&nbsp;
									</div>
							     </div>
							     <!-- 조회수 -->
							     
							     	
              				  		
              				  		<table class="table table-striped table-hover" >
				                    <thead>
				                    <tr >
				                    
				                    <!-- 작성자 및 시간 -->
				                    
				                    <th style="text-align: left;"><span style="font-weight: normal;">작성자 : </span>${mini.free.freeName }</th>
										<th style="text-align: right;"><span style="font-weight: normal;">작성일 : </span>${mini.free.freeDate }</th>
									</tr>
                  					  </thead>
                   

              						  </table>
              						
              		   <div class="col-lg-1 col-md-1 col-sm-1">
              		   </div>
              		   
              		   <div class="col-lg-10 col-md-10 col-sm-10">
              		   <br>
              		   <!-- 게시물 내용 -->
              		   <p style="max-height: 700px; min-height: 250px;">
              		   ${mini.free.freeContent }
							</p>
							
							
              		   </div>
              		   	
              		   <div class="col-lg-1 col-md-1 col-sm-1">
              		   		
              		   </div>	
              		   
              		   <div class="col-lg-9 col-md-9 col-sm-9">
              		   		<a href="../freeList?pageNo=1"><input type="button" data-loading-text="Loading..." class="btn btn-default btn-lg" value="목록으로" style="color:white;"></a>
              		   </div>  
              		   
              		   <c:set var="ddddd" value="<%=user.getUserId()%>" />
						<c:set var="ooooo" value="${mini.free.freeName }" />
						<div class="col-lg-3 col-md-3 col-sm-3" style="text-align: right;">
					
						<c:if test="${ddddd eq ooooo}">
							<input type="submit" data-loading-text="Loading..." class="btn btn-default btn-lg" value="수정하기">
						</form>
						</c:if>
              		   		 
              		 		
								
								<c:if test="${ddddd eq ooooo}">
								 <form style="display: inline-block;" action="/palette/miniHome/${mini.free.userId }/freeDelete/${mini.free.freeNo.intValue()}"method="post">
								 &nbsp;
								 <input type="submit" data-loading-text="Loading..." class="btn btn-default btn-lg" value="삭제하기">	
								 <input type="hidden"value="${mini.userId }" name="userId" id="userId"> 
								 <input type="hidden" value="${mini.freeNo.intValue() }" name="freeNo"id="freeNo">
								</form>
					
									</c:if>
									
							
              		 		 
              		   </div>  
						<table class="table table-striped table-hover" style="text-align: center;">
				                    <thead>
				                    <tr >
										<th style="text-align: center;"></th>
									</tr>
                  					  </thead>
                   

              						  </table>
              						  
               				 <p>댓글 목록</p>
               				 
               				 <!-- 댓글 -->
               				 <table id="comment" class="table table-striped table-hover" style="text-align: center;" >
				                    <c:forEach items="${mini.reple }" var="reple">
				                    <thead>
				                    <tr>
				                    	<!-- 작성자 -->
				                    	<th><span style="font-weight: normal;">ID : </span>${reple.freeRepleName }</th>
				                    	<th></th>
				                    	<!-- 시간 -->
										<th style="text-align: right;"><span style="font-weight: normal; font-size: 90%;">작성일 : </span>${reple.freeRepleDate }</th>
									</tr>
									</thead>
									<tbody>
             							<tr>
             								<!--내용 -->
             								<td colspan="2" width="900px;" class="Content${reple.freeRepleNo.intValue() }" style="text-align: left;"><i class="fa fa-ellipsis-h"></i>&nbsp;&nbsp;&nbsp;${reple.freeRepleContent }</td>
             								<!-- 히든 -->
             								<input type="hidden" value="${reple.freeRepleName }"
												name="repleName" class="repleName">
											<input type="hidden" value="${reple.freeRepleNo.intValue() }"
												name="freeRepleNo" class="freeRepleNo">
											<input type="hidden" value="${reple.freeNo.intValue() }"
												name="freeNo" class="freeNo">
             								<td style=" text-align: right;" class="rrr">
             								<!-- 버튼 -->
             								<c:set var="name" value="<%=user.getUserId()%>" />
											<c:set var="freeName" value="${reple.freeRepleName }" />
											<c:if test="${name eq freeName}">
	             								<input type="button" id="updateReple${reple.freeRepleNo.intValue()}" 
	             								data-loading-text="Loading..." class="btn btn-default btn-lg updateReple" 
	             								data-content="${reple.freeRepleContent }"
												data-nono="${reple.freeRepleNo.intValue() }" value="수정" 
												style="margin-top: 10px; height: 20px; line-height: 1px; color: white;">
	             								
	             								<input type="button" id="deleteReple${reple.freeRepleNo.intValue()}" 
	             								data-loading-text="Loading..." class="btn btn-default btn-lg deleteReple" 
	             								data-cno="${reple.freeRepleNo.intValue() }" value="삭제" 
	             								style="margin-top: 10px; height: 20px; line-height: 1px; color: white;">
	             								
             								</c:if>	
             								</td>
             							</tr>
             							</tbody>
             							</c:forEach>
              						  </table>
              						  
              						<!-- 댓글 -->
             						<p>댓글 작성</p>
             						 <div class="col-lg-11 col-md-11 col-sm-11">
             						 <input type="hidden" value='<%=user.getUserId() %>'name='freeRepleName' id="freeRepleName">
             						<textarea rows="3" cols="" id="freeRepleContent" name="freeRepleContent"></textarea>
             						</div>
										&nbsp;&nbsp;<input type="button" id="btn1" data-loading-text="Loading..." 
										class="btn btn-default btn-lg" value="등록" style="margin-top: 10px; color: white;">
									<br><br>
									<br><br>
								
							
							
								
							
						
                            
							
									
							</div>
							
							
							</div>
							
							
					

           
			

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