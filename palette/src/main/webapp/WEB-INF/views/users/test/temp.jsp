<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
 <%@ include file="/WEB-INF/views/header/MainHeader.jsp" %>
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
