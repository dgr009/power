<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		
		
		<div class="well well-lg" style="padding-left: 50px; padding-right: 50px;padding-top: 20px;"><h3><i class="fa fa-money"></i>    &nbsp;충전금액 선택</h3>
							
							
										<table class="table table-striped table-hover">
                    <thead>
                    <tr>
										<th style="text-align: center;">선택</th>
										<th style="text-align: center;">충전 금액</th>
										<th style="text-align: center;">실 충전 포인트</th>
										<th style="text-align: center;">적립 혜택</th>
									</tr>
                    </thead>
                    <tbody style="text-align: center;">
                    
                    <tr>
										<td><input type="radio" value="5000"  class="selectPoint" name="selectPoint"></td>
										<td>5000</td>
										<td>5500</td>
										<td>10% 추가 적립 +250P</td>
								       
									</tr>
									
									<tr>
										<td><input type="radio"  value="10000"  class="selectPoint" name="selectPoint"></td>
										<td>10000</td>
										<td>11000</td>
										<td>10% 추가 적립 +500P</td>
								       
									</tr>
									<tr>
										<td><input type="radio" value="20000" class="selectPoint" name="selectPoint"></td>
										<td>20000</td>
										<td>22000</td>
										<td>10% 추가 적립 +1000P</td>
								       
									</tr>
									<tr>
										<td><input type="radio" value="30000" class="selectPoint" name="selectPoint"></td>
										<td>30000</td>
										<td>33000</td>
										<td>10% 추가 적립 +3000P</td>
								       
									</tr>
									<tr>
										<td><input type="radio" value="50000" class="selectPoint" name="selectPoint"></td>
										<td>50000</td>
										<td>55000</td>
										<td>10% 추가 적립 +5000P</td>
								       
									</tr>
									<tr>
										<td><input type="radio" value="0" class="selectPoint" name="selectPoint"></td>
										<td>직접 입력</td>
										<td><input type="text" id="inputPoint"></td>
								       	<td>10% 추가 적립</td>
									</tr>
                    <tr>
                      
                
                    
                </table>
				<div class="well well-lg" style="padding-left: 50px; padding-right: 50px;padding-top: 20px;"><h3><i class="fa fa-money"></i>    &nbsp;충전 금액</h3>
							
							
										<table class="table table-striped table-hover">
                    <thead>
                    <tr>
										
										<th style="text-align: center;">충전 금액</th>
										<th style="text-align: center;">실 충전 포인트</th>
										
									</tr>
                    </thead>
                    <tbody style="text-align: center;">
                    
                    <tr>
										<td><input type="text" id="ip" readonly="readonly"></td>
										<td><input type="text" id="rp" name="tradePoint" readonly="readonly"></td>
								       
					</tr>
							
                    
                </table>

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
                    

<!-- <div><a id='bookTarget'></a></div> -->

<%-- <%Users user=(Users)session.getAttribute("user"); %> --%>
<!-- <script> -->
// 	$(function(){
// 		book();
// 		function book(){
// 			$.ajax({
// 				url:"/api/users/bookmarkCheck",
// 				type:"post",
<%-- 				data : {"orderId": '<%=user.getUserId()%>', "ownerId":'${userId}'}, --%>
// 				dataType: 'JSON',
// 				complete:function(r){
// 					if(r.responseText==0){
// 						$("#bookTarget").html("즐겨찾기추가");
// 					}
// 					else{
// 						$("#bookTarget").html("즐겨찾기해제");
// 					}
// 				}	
// 			})
			
// 		}
		
// 		$("#bookTarget").on("click",function(){
// 			if($(this).html()=='즐겨찾기추가'){
// 				$.ajax({
// 					url:"/api/users/bookmark",
// 					type:"post",
<%-- 					data : {"orderId": '<%=user.getUserId()%>', "ownerId":'${userId}' }, --%>
// 					dataType: 'JSON',
// 					complete:function(r){
// 						alert("즐겨 찾기 추가 완료");
// 					}

// 				})
				
// 			}else{
// 				$.ajax({
// 					url:"/api/users/bookmarkDelete",
// 					type:"post",
<%-- 					data : {"orderId":'<%=user.getUserId()%>', "ownerId":'${userId}' }, --%>
// 					dataType: 'JSON',
// 					complete:function(r){
// 						alert("즐겨 찾기 해제 완료");
// 					}

// 				})
				
// 			}
			
// 			book();
// 		})
		
// 	})
<!-- </script> -->







<c:if test="${userId!=null}">
                     <div class="col-lg-5 col-sm-7 top-info clearfix">
                        <ul>
                            <li>
                                <form name="searchForm" action="/palette/miniHome/${userId}/productSearch"  method="get" class="search-bar">
                                    <label for="search" class="search-label">
                                        <button class="search-button" type="button"><i class="fa fa-search"></i></button>
                                        <!-- Fix the break-row-bug-->
                                        <input type="text"  id="search" name="itemName" class="search-input" onkeydown="javascript:if(event.keyCode==13){goPage('1'); return false;}">
                                    </label>
                                </form>
                            </li>
                        </ul>
                    </div>
                    </c:if>






















<script type="text/javascript">
	$(function(){
		$("#find").on("click",function(){
			$("#target").html("");
			$.ajax({
				url:"/api/users/findPwd",
				type:"post",
				data : {"userId":$("#userId").val(),"userName":$("#userName").val(),"userMail":$("#userMail").val()},
				dataType:"JSON",
				success: function(result) {
					$("#target").html("비밀번호를 찾을 수 없습니다.");
					$("#target").css("color","red");
				},
				error:function(request){
			        $("#target").html("비밀번호 : " +request.responseText);
			    	$("#target").css("color","green");
			     }
			})
		})
	})
</script>

	<button  id="update" onclick='location.href="http://localhost:8087/palette/users/update"'>개인정보 수정하기</button>
	<button  id="tradeList" onclick='location.href="http://localhost:8087/palette/users/tradeList"'>포인트 거래내역 보기</button>
	<button  id="chargePoint" onclick='location.href="http://localhost:8087/palette/users/chargePoint"'>포인트 충전하기</button>
	<button  id="refundPoint" onclick='location.href="http://localhost:8087/palette/users/refundPoint"'>포인트 환급하기</button>
	<button  id="deleteuser" onclick='location.href="http://localhost:8087/palette/users/delete"'>개인회원 비활성화</button>
		
		
		<h1>충전 페이지</h1>
	<form action="/palette/users/chargePoint" method="post">
		충전하실 금액 : <input type="text" name="tradePoint">
		<button>충전 하기</button>
	</form>				
	
	/////////-----------------위쪽
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
	
</script>
</head>
<body>
<!-- 헤더 -->
<header id="header">
<%--  <%@ include file="/WEB-INF/views/header/MainHeader.jsp" %> --%>
</header>
<br><br><br><br><br><br>
<!-- 헤더 끝 -->
<div class="container text-center">    
  <div class="row">
  	<!-- 랭킹 -->
    <%@ include file="/WEB-INF/views/side/RankSide.jsp" %>
    <!-- 랭킹 끝 -->
    
	////////////--------- 아래쪽
					 <!-- 광고 사이드 오른쪽-->
    <%@ include file="/WEB-INF/views/side/AdsSide.jsp" %>
    <!-- 광고 사이드 오른쪽 끝 -->
  </div>
</div>
<br><br><br><br>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

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
</html>
////////////////// 아래쪽 끝		

//////////// 가운데
<div class="col-lg-9 col-md-9 col-sm-9">
이거 
 <div class="col-sm-8"> 
 로 수정
 

<li>
	<a href="/palette/users/delete" class="btn btn-block btn-default">회원 탈퇴</a>
</li>




/////////////////

미니홈페이지 제작
<!-- <article class="container"> -->
<!--           <div class="page-header"> -->
<!--               <h1>홈페이지 만들기</h1> -->
<!--           </div> -->
<!--           <div class="col-md-6 col-md-offset-3"> -->
<!--                   <div class="form-group"> -->
<!--                       <label for="InputEmail">홈페이지 제목</label> -->
<!--                       <input type="text" class="form-control" name="homeTitle" placeholder="홈페이지 제목" id="title"> -->
<!--                   </div> -->
<!--                   <div class="form-group"> -->
<!--                   <div style="display:inline; width:50%"> -->
<!--                       <label for="InputPassword1">홈페이지 이미지</label> -->
<!--                       <input type="file" class="form-control" name="homeImg" id="img"> -->
<!--                   </div> -->
<!--                   <div id="imagePreView"></div> -->
<!--                   </div> -->
<!--                   <div class="form-group"> -->
<!--                       <label for="InputPassword2">홈페이지 디자인 선택</label> -->
<!--                       <select name="homeDesign" id="design" class="form-control" > -->
<!-- 							<option value="1">기본타입</option> -->
<!-- 					  </select> -->
<!--                   </div> -->
<!--                   <div class="form-group"> -->
<!--                       <label for="username">홈페이지 소개</label> -->
<%--                       <textarea class="form-control"  rows="50" cols="60" id='content'><%=user.getUserId() %>의 홈페이지 입니다.</textarea> --%>
<!--                   </div> -->
                 
<!--                   <div class="form-group"> -->
                  		
<!--                   </div> -->
<!--                   <div class="form-group"> -->
                  
<!--                   </div> -->
 				 
<!--  				  <div id="hideValue"> -->
<%--  				  	<input type="hidden" name="userId" value="<%=user.getUserId() %>" id='id'> --%>
<!--  				  </div> -->
 
<!--                   <div class="form-group"> -->
<!--                       <label>약관 동의</label> -->
<!--                       <div data-toggle="buttons"> -->
<!--                           <label class="btn btn-primary active"> -->
<!--                               <span class="fa fa-check"></span> -->
<!--                               <input id="agree" type="checkbox" autocomplete="off" checked> -->
<!--                           </label> -->
<!--                           <a href="#">이용약관</a>에 동의합니다. -->
<!--                       </div> -->
<!--                   </div> -->
<!--                   <div class="form-group text-center"> -->
<!--                       <button type="button"  id="register" class="btn btn-info" >완료</button> -->
<!--                       <button onclick="location.href='/palette/users/home'">취소</button> -->
<!--                   </div> -->
<!--           </div> -->
<!--       </article> -->


///////////
<ul class="dropdown-menu sm-nowrap" style="width: auto; display: none; top: auto; left: 0px; margin-left: 0px; margin-top: 0px; min-width: 10em; max-width: 20em;">
                                        <li><a href="/hooligan/main/productList?type_no=3">점퍼</a></li>
                                        <li><a href="/hooligan/main/productList?type_no=4"> 자켓</a></li>
                                        <li><a href="/hooligan/main/productList?type_no=5">니트</a></li>
                                        <li><a href="/hooligan/main/productList?type_no=2">신발</a></li>
                                        <li><a href="/hooligan/main/productList?type_no=6">티셔츠</a></li>
                                        <li><a href="/hooligan/main/productList?type_no=7">팬츠</a></li>
                                        <li><a href="/hooligan/main/productList?type_no=1">모자</a></li>
                                    </ul>
<a href="#" class="has-submenu">의류<span class="sub-arrow">...</span></a>


///

var tagData = new FormData();
				 tagData.append("");
				 $.ajax({
				 	url:"/palette/users/homeTagRegister",
				 	type:"post",
				 	data: tagData,
				 	complete:function(result){
				 		console.log(result)
					}

				 })
				 
				 //
				 
				 		
<!-- 		$("#test").on("click",function(e){ -->
<!-- 			var smallResult =""; -->
<!-- 			var bigArray = []; -->
<!-- 			$(".bigKind").each(function(){ -->
<!-- 				bigArray.push($(this).html()); -->
<!-- 			}) -->
<!-- 			alert(bigArray.join(",")); -->
			
<!-- 			for(var j=0; j<i; j++){ -->
<!-- 				$(".smallName"+(j+1)).each(function() { -->
<!-- 					smallResult +=$(this).html()+","; -->
<!-- 				}); -->
<!-- 				smallResult +="\n"; -->
<!-- 			} -->
<!-- 			alert(smallResult); -->
			
<!-- 		}) -->

///////////////////////
<!--  var smallResult =""; -->
<!-- 					var bigArray = []; -->
<!-- 					$(".bigKind").each(function(){ -->
<!-- 						bigArray.push($(this).html()); -->
<!-- 					}) -->
					
<!-- 					for(var j=0; j<i; j++){ -->
<!-- 						$(".smallName"+(j+1)).each(function() { -->
<!-- 							smallResult +=$(this).html()+","; -->
<!-- 						}); -->
<!-- 						smallResult +="\n"; -->
<!-- 					} -->
					

<!-- 	 $.ajax({ -->
<!-- 				 	url:"/api/users/homeTagUpdate", -->
<!-- 				 	type:"post", -->
<%-- 				 	data: {"userId":"<%=users.getUserId()%>" ,"bigKind":bigArray.join(","),"smallKind":smallResult}, --%>
<!-- 				 	complete:function(result){ -->
<!-- 				 		alert(result) -->
<!-- 					} -->

<!-- 				 }) -->
				 
				 
				 //////////////////////////  홈페이지 세션확인 만들기 수정
				 
				 <%if(session.getAttribute("user")!=null){ %>
                               		 </li>
                               		   <li><a href="#" onclick=openHome()>회원 홈페이지</a>
                                    </li>
                                    </li>
                               		   <li><a href="#" onclick=openHomeUp()>홈페이지 수정</a>
                                    </li>
                                    <%} %>