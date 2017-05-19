<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<script>
$(function(){
	
	$("#delete").on("click",function(){
		if($("#check").val()==='탈퇴')
			$("#deleteForm").submit();
		else{
			alert("입력값이 다릅니다.")
		}
	})

})
</script>

<div class="modal"  id="deleteModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">회원 탈퇴</h4>
				</div>
	<form id="deleteForm" action="/palette/users/delete" method="post">
	<div class="modal-body">
		<label for="InputEmail">탈퇴를 원하시면 '탈퇴' 를 입력하세요 </label>
        <input type="text" class="form-control" id="check" ><br>
		<button type="button" id="delete" class="btn btn-info">탈퇴</button>
		<button data-dismiss="modal" class="btn btn-warning">취소</button>
	</div>
	</form>
	
		</div>
	</div>
</div>

