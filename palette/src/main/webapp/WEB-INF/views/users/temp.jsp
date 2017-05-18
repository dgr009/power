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
						