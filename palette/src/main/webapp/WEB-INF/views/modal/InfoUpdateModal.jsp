<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
$(function(){
	var mailcheck = 1;
	var pwdcheck =0;
	var b =  /^[a-zA-Z0-9]{3,20}$/;// 비밀번호
	
	$("#upmail").on("blur",function(){
		$.ajax({
			url:"/api/users/hasMail",
			type:"post",
			data : {"userMail":$("#upmail").val()},
			dataType:"JSON",
			success:function(result) {
				if(result==0){
					$("#upmailchecked").html("사용 가능한 메일입니다.");
					$("#upmailchecked").css("color","green");
					mailcheck=0;
				}else{
					$("#upmailchecked").html("이미 사용중인 메일입니다.");
					$("#upmailchecked").css("color","red");
					mailcheck=1;
				}
			}
		})
	})
	
	$("#uppwd").on("blur",function(){
    				
    				if(b.test($("#uppwd").val())==false){
    					$("#uppwdcheck").html("비밀번호는 대소문자 및 숫자 3~20의 길이 입니다")
    					$("#uppwdcheck").css("color","red")
    					pwdcheck =1;
    				}
    				else {
    					$("#uppwdcheck").html("")
    					pwdcheck =0;
    				}
    				
    				if($("#uppwd").val()==$("#uppwd2").val()){
    					$("#uppwdcheck2").html("")
    					pwdcheck =0;
    				}
    			
    			})
    			
    		$("#uppwd2").on("blur",function(){
    				
    				if($("#uppwd").val()!==$("#uppwd2").val()){
    					$("#uppwdcheck2").html("비밀번호를 확인해 주십시오")
    					$("#uppwdcheck2").css("color","red")
    					pwdcheck =1;
    				}
    				else {
    					$("#uppwdcheck2").html("")
    					pwdcheck =0;
    				}
    			})
    			
    			
    $("#addressUp").on("click",function(){
    	$("#addressform").submit();
    })
    $("#mailUp").on("click",function(){
    	if(mailcheck==0){
    		$("#mailform").submit();
    	}
    })
    $("#phoneUp").on("click",function(){
    	$("#phoneform").submit();
    	
    })
    $("#pwdUp").on("click",function(){
		if(pwdcheck==0){    	
    		$("#pwdform").submit();
		}
    })
    		
})

function upPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('uppost').value = data.zonecode;
            document.getElementById('upaddress').value = data.jibunAddress;

            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                //예상되는 도로명 주소에 조합형 주소를 추가한다.
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

            } else {
                document.getElementById('guide').innerHTML = '';
            }
        }
    }).open();
}
</script>
<!-- 주소 모달 -->
<div class="modal"  id="addressModal" role="dialog" data-backdrop="false" >
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">주소 변경하기</h4>
				</div>
              <form  id='addressform' action="/palette/users/addressUpdate" method="post">
              <div class="modal-body">
                  <div class="form-group">
                      <input type="hidden" class="form-control" name="userId" value="${user.userId }">
                  </div>
            	 <div class="form-group">
                      <label for="address">주소</label><br>
                      <div style="text-align: left;">
                      <input type="text" class="form-control" style="width:30%; display:inline;" id="uppost" name="userPost" placeholder="우편번호를입력하시오">
                       <input type="button" class="form-control"  style="width:30%; display:inline;" onclick="upPostCode()" value="주소검색">
                      </div>
                      <input type="text" class="form-control" id="upaddress" name="userAddress" placeholder="주소를 입력해주세요">
                  </div>
                  <div class="form-group text-center">
                      <button type="button"  id="addressUp" class="btn btn-info">수정하기</button>
                      <button type="button" onclick="location.href='/palette/users/info'"  class="btn btn-warning">취소</button>
                  </div>
                  </div>
              </form>
          </div>
  
      </div>
      </div>
      

<!-- 메일 모달 -->
<div class="modal"  id="mailModal" role="dialog" data-backdrop="false" >
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">메일 수정 하기</h4>
				</div>
              <form  id='mailform' action="/palette/users/mailUpdate" method="post">
              <div class="modal-body">
                  <div class="form-group">
                      <input type="hidden" class="form-control" name="userId" value="${user.userId }">
                  </div>
                  <div class="form-group">
                      <label for="email">이메일</label>
                      <input type="text" class="form-control" id='upmail' name="userMail" placeholder="이메일을 입력해주세요">
                  </div>
                  <p id="upmailchecked"></p>     
                  <div class="form-group text-center">
                      <button type="button" id="mailUp" class="btn btn-info">수정</button>
                      <button type="button" onclick="location.href='/palette/users/info'"  class="btn btn-warning">취소</button>
                  </div>
                  </div>
              </form>
          </div>
  
      </div>
      </div>
      


<!-- 폰 모달 -->
<div class="modal"  id="phoneModal" role="dialog" data-backdrop="false" >
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">핸드폰 번호 수정하기 </h4>
				</div>
              <form  id='phoneform' action="/palette/users/phoneUpdate" method="post">
              <div class="modal-body">
                  <div class="form-group">
                      <input type="hidden" class="form-control" name="userId" value="${user.userId }">
                  </div>
                  <div class="form-group">
                      <label for="phone_number">전화번호</label>
                      <input type="text" class="form-control" name="userPhone" placeholder="전화번호를 입력해주세요">
                  </div>
                  <div class="form-group text-center">
                      <button type="button" id="phoneUp" class="btn btn-info">수정</button>
                      <button type="button" onclick="location.href='/palette/users/info'"  class="btn btn-warning">취소</button>
                  </div>
                  </div>
              </form>
          </div>
  
      </div>
</div>

<!-- 비밀번호 모달 -->
<div class="modal"  id="pwdModal" role="dialog" data-backdrop="false" >
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">비밀 번호 수정하기 </h4>
				</div>
              <form  id='pwdform' action="/palette/users/pwdUpdate" method="post">
              <div class="modal-body">
                  <div class="form-group">
                      <input type="hidden" class="form-control" name="userId" value="${user.userId }">
                  </div>
                  <div class="form-group">
                      <label for="InputPassword1">비밀번호</label>
                      <input type="password" class="form-control" name="userPwd" placeholder="비밀번호" id="uppwd">
                  </div>
                  <p id="uppwdcheck"></p>
                  <div class="form-group">
                      <label for="InputPassword2">비밀번호 확인</label>
                      <input type="password" class="form-control" placeholder="비밀번호 확인" id="uppwd2">
                  </div>
                  <p id="uppwdcheck2"></p>
                  <div class="form-group text-center">
                      <button type="button" id="pwdUp" class="btn btn-info">수정</button>
                      <button type="button" onclick="location.href='/palette/users/info'"  class="btn btn-warning">취소</button>
                  </div>
                  </div>
              </form>
          </div>
  
      </div>
</div>
      