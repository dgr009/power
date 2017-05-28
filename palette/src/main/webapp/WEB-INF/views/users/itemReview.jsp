<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<title>리뷰 작성</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS FILES -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen" data-name="skins">
<link rel="stylesheet" href="<c:url value="/resources/css/layout/wide.css"/>" data-name="layout">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/switcher.css"/>" media="screen" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#check").on("click",function(e){
		e.preventDefault(); //기본 이벤트를 차단
		var obj = document.getElementsByName('reviewScore');
		var jumsu;
		for( i=0; i<obj.length; i++ ) {
			if(obj[i].checked) {
				jumsu = obj[i].value;
			}
		}
		
// 		var formData = new FormData();
// 		 formData.append("orderNo","${orderNo}");
// 		 formData.append("reivewContent",$("#content").val());
// 		 formData.append("reviewScore",jumsu);
		$.ajax({
			url:"/api/users/review",
			type:"post",
			data:{"orderNo":'${orderNo}',"reviewContent":$("#content").val(),"reviewScore":jumsu},
			dataType:"json",
			complete:function(r){
				if(r.responseText=='성공'){
					opener.parent.location.reload();
					self.close();
				}
			}
		})
		
		
	})
})
</script>
<body>
  <article class="container">
          <div class="page-header">
              <h1>리뷰 작성하기</h1>
          </div>
          <div class="col-md-6 col-md-offset-3">			<!-- Modal content-->
               <div class="form-group">
                     <input type="hidden" name="orderNo" value="${orderNo }"> 
                     <label for="score">리뷰 점수  </label>
                     
                      	<input type="radio" name="reviewScore" id="score" value="1"> 1점 
                      	<input type="radio" name="reviewScore" id="score" value="2"> 2점 
                      	<input type="radio" name="reviewScore" id="score" value="3" checked="checked"> 3점 
                      	<input type="radio" name="reviewScore" id="score" value="4"> 4점 
                      	<input type="radio" name="reviewScore" id="score" value="5"> 5점 <br>
				  </div>
                  <div class="form-group">
                      <label for="InputEmail">리뷰 내용</label>
                      <textarea rows="7" cols="30" class="form-control" name="reviewContent"  id="content"></textarea>
                  </div>
                 
                  
                  <div class="form-group text-center">
                      <button type="button"  id="check" class="btn btn-info" >작성완료</button>
                  </div>
                  </div>
  </form>
      </article>
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
</html>
