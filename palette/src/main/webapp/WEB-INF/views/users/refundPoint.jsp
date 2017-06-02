<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    <%Users users = (Users) session.getAttribute("user");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환급하기</title>
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
    min-height: 300px;
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
<script>
	$(function(){
		$("#point").on("blur",function(){
			$("#after").html(<%=users.getUserPoint()%>-$("#point").val())
		})
		
		$("#refund").on("click",function(e){
				e.preventDefault();
				$("#refundForm").submit();
				alert("환급완료");
			})
		
	})
</script>
</head>
<body>
<!-- 헤더 끝 -->
<div class="container text-center">    
  <div class="row">
	<section class="page_head">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">

                        <div class="page_title">
                           <h2>포인트 환급하기</h2>
                        </div>
                    </div>
                </div>
            </div>
             </section>
            
 
           <form id="refundForm" action="/palette/users/refundPoint"  method="post">
            <br><br>
					<div class="col-lg-1 col-md-1 col-sm-1">


					</div>
							
							
							<div class="well well-lg" style="padding-left: 50px; padding-right: 50px;padding-top: 20px;"><h3><i class="fa fa-money"></i>    &nbsp;환전금액 입력</h3>
							
							
										<table class="table table-striped table-hover">
                    <thead>
                    <tr>
										<th style="text-align: center;">현재 포인트</th>
										<th style="text-align: center;">포인트 입력</th>
										<th style="text-align: center;">잔여 포인트</th>
									</tr>
                    </thead>
                    <tbody style="text-align: center;">
                    
                    <tr>
							<td><span class="after"><%=users.getUserPoint() %></span></td>
							<td><input type="text" name="tradePoint" id="point" class="form-control"  placeholder="0"></td>
							<td><span class="after" id="after"><%=users.getUserPoint()%></span></td>			       
					</tr>
                </table>
                
                <div class="col-lg-8 col-md-8 col-sm-8" style="text-align: center;"><br>
						<input type="button" id="refund" data-loading-text="Loading..." class="btn btn-default btn-lg" value="환급하기">
				</div>
			</div>
									
							
		</form>
	 </div>
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
			<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</html>