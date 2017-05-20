<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<div class="modal"  id="insertDeliveryModal" role="dialog" data-backdrop="false" >
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">배송번호입력</h4>
				</div>
              <form  id='registerform' action="/palette/users/insert" method="post">
              <div class="modal-body">
                  <div class="form-group">
                      <label for="InputDelivery">배송번호</label>
                      <input type="text" class="form-control" name="deliveryNo" placeholder="배송번호" id="id">
                  </div>
                  <div class="form-group text-center">
                      <button type="button"  id="register" class="btn btn-info">회원가입</button>
                      <button type="button" onclick="location.href='/palette/userId/admin/productOrderList'"  class="btn btn-warning">입력취소</button>
                  </div>
                  </div>
              </form>
          </div>
  
      </div>
      </div>
      
      <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
