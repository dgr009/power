<%@page import="com.icia.palette.vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>충전하기</title>
   <!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>"
   media="screen" />
     <link rel="stylesheet" href="<c:url value="/resources/css/animate.css"/>">
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
<script>
   $(function(){
         $("#charge").on("click",function(){
            $("#chargeForm").submit();
            alert("충전완료");

         })
         $(".selectPoint").on("change",function(){
				$("#ip").val($(this).val());
				$("#rp").val(parseInt($(this).val()*1.1));
			})
			
			$("#inputPoint").on("change",function(){
				$("#ip").val($(this).val());
				$("#rp").val(parseInt($(this).val()*1.1));
			})
   })
</script>
</head>
<body>
<!-- 헤더 -->
<!-- 헤더 끝 -->
<div class="container text-center">    
  <div class="row">
   <section class="page_head">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">

                        <div class="page_title">
                           <h2>포인트 충전하기</h2>
                        </div>
                    </div>
                </div>
            </div>
             </section>
            
 
           <form id="chargeForm" action="/palette/users/chargePoint"  method="post">
            <br><br>
               <div class="col-lg-1 col-md-1 col-sm-1">


               </div>
                     
                     
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
                    
                </table>
                           
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
                            
                           
                           
                           </div>
                           
                           
                           <div class="col-lg-1 col-md-1 col-sm-1">


                           </div>
                     
                        
                         <div class="col-lg-12 col-md-12 col-sm-12">
            <br><br>
                     
                     
                     <div class="well well-lg" style="padding-left: 50px; padding-right: 50px; padding-top: 7px; height: 280px; margin-right: 20px; margin-left: 20px;"><h3><i class="fa fa-credit-card"></i>   &nbsp; 포인트 충전방식 선택</h3>
                           <br>
                           <div style="text-align: center;">
                              <a href="#"><img src="/palette/resources/images/가상계좌.png"></a>&nbsp;                        
                              <a href="#"><img src="/palette/resources/images/도서상품권.png"></a>&nbsp;
                              <a href="#"><img src="/palette/resources/images/모바일티머니.png"></a>&nbsp;<br><br>
                              <a href="#"><img src="/palette/resources/images/핸드폰.png"></a>&nbsp;
                              <a href="#"><img src="/palette/resources/images/컬쳐랜드.png"></a>&nbsp;
                              <a href="#"><img src="/palette/resources/images/해피머니.png"></a>&nbsp;<br><br>
                              <a href="#"><img src="/palette/resources/images/비자.png"></a>&nbsp;
                              <a href="#"><img src="/palette/resources/images/OK캐시백.png"></a>&nbsp;
                              <a href="#"><img src="/palette/resources/images/신용카드.png"></a>&nbsp;
                           </div>
                           <div style="text-align: center;">
                              
                              
                           
                           </div>
                              
                           
                           
                           
                  
                            
                     
                           
                     </div>
                     
                     
                     </div>
                     
                     <div class="col-lg-2 col-md-2 col-sm-2"></div>
                     
                     <div class="col-lg-8 col-md-8 col-sm-8" style="text-align: center;"><br>
                     
                        
                        <input type="submit"  id="charge" data-loading-text="Loading..." class="btn btn-default btn-lg" value="충전하기" style=" background:#727cb6; :white;">
                     </div>
                     
                     <div class="col-lg-2 col-md-2 col-sm-2"><br><br><br><br><br><br><br><br></div>
                     
                     </form>
    </div>
   </div>
      
      
<br><br><br><br><br><br><br><br>

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
         <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</html>