
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#check").on("click",function(){
// 		$.ajax({
// 			url:"/api/users/review",
// 			type:"post",
// 			data:{"orderNo":'${orderNo}',"reivewContent":$("#content").val(),"reviewScore":$("#score").val()},
// 			dataType:"JSON",
// 			complete:function(){
// 				window.location.reload();
// 				alert("리뷰 작성완료");
// 			}	
// 		})
	})
})
</script>
<body>
<div class="modal"  id="reviewModal" role="dialog" data-backdrop="false" >
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h2 class="modal-title">리뷰 작성하기</h2>
				</div>
              <form  id='reviewform' action="/palette/users/insert" method="post">
              <div class="modal-body">
               <div class="form-group">
                     <label for="score">리뷰 점수  </label>
                      	<input type="radio" name="score" id="score" value="1"> 1점 
                      	<input type="radio" name="score" id="score" value="2"> 2점 
                      	<input type="radio" name="score" id="score" value="3" checked="checked"> 3점 
                      	<input type="radio" name="score" id="score" value="4"> 4점 
                      	<input type="radio" name="score" id="score" value="5"> 5점 <br>
				  </div>
                  <div class="form-group">
                      <label for="InputEmail">리뷰 내용</label>
                      <textarea rows="7" cols="30" class="form-control" name="reviewContent"  id="content"></textarea>
                  </div>
                 
                  
                  <div class="form-group text-center">
                      <button type="button"  id="check" class="btn btn-info" data-dismiss="modal">작성완료</button>
                  </div>
                  </div>
              </form>
          </div>
  
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
</html>
