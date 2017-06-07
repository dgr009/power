<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
 <script>
    	$(function(){
    		var a =  /^[a-zA-Z0-9]{3,15}$/;	//아이디
    		var b =  /^[a-zA-Z0-9]{3,20}$/;// 비밀번호
    		var mailcheck = 0;
    		var idcheck =1;
    		var pwdcheck =0;
    		
    		$("#mail").on("blur",function(){
    			$.ajax({
    				url:"/api/users/hasMail",
    				type:"post",
    				data : {"userMail":$("#mail").val()},
    				dataType:"JSON",
    				success:function(result) {
    					if(result==0){
    						$("#mailchecked").html("사용 가능한 메일입니다.");
    						$("#mailchecked").css("color","green");
    						mailcheck=0;
    					}else{
    						$("#mailchecked").html("이미 사용중인 메일입니다.");
    						$("#mailchecked").css("color","red");
    						mailcheck=1;
    					}
    				}
    			})
    		})
    		
    		$("#id").on("blur",function(){

    			if(a.test($("#id").val())==false){
					$("#idchecked").html("아이디는 대소문자 및 숫자 3~15의 길이 입니다")
					$("#idchecked").css("color","red")
					idcheck =1;
				}
    			else{
    				$.ajax({
        				url:"/api/users/hasId",
        				type:"post",
        				data : {"userId":$("#id").val()},
        				dataType:"json",
        				success:function(result) {
        					if(result==0){
        						$("#idchecked").html("사용 가능한 아이디입니다.");
        						$("#idchecked").css("color","green");
        						idcheck =0;
        					}else{
        						$("#idchecked").html("이미 사용중인 아이디입니다.");
        						$("#idchecked").css("color","red");
        						idcheck =1;
        					}
        				}
        			})
    			}
    			
    			
    			
    		
    			
    		})
    		$("#pwd").on("blur",function(){
    				
    				if(b.test($("#pwd").val())==false){
    					$("#pwdcheck").html("비밀번호는 대소문자 및 숫자 3~20의 길이 입니다")
    					$("#pwdcheck").css("color","red")
    					pwdcheck =1;
    				}
    				else {
    					$("#pwdcheck").html("")
    					pwdcheck =0;
    				}
    				
    				if($("#pwd").val()==$("#pwd2").val()){
    					$("#pwdcheck2").html("")
    					pwdcheck =0;
    				}
    			
    			})
    			
    		$("#pwd2").on("blur",function(){
    				
    				if($("#pwd").val()!==$("#pwd2").val()){
    					$("#pwdcheck2").html("비밀번호를 확인해 주십시오")
    					$("#pwdcheck2").css("color","red")
    					pwdcheck =1;
    				}
    				else {
    					$("#pwdcheck2").html("")
    					pwdcheck =0;
    				}
    			})
    		
    			$("#register").on("click",function(){			
    				if(mailcheck == 0 && idcheck==0 && pwdcheck==0)	
    					$("#registerform").submit();
    				else if(idcheck==1){
    					$("#id").focus();
    					alert("아이디를 확인해주세요");
    				}else if(pwdcheck==1){
    					$("#pwd").focus();
    					alert("비밀번호를 확인해주세요");
    				}else if(mailcheck ==1){
    					$("#mail").focus();
    					alert("이메일을 확인해주세요");
    				}
    			})
    			
    	})
    	
    	function getPostCode() {
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
                document.getElementById('post').value = data.zonecode;
                document.getElementById('address').value = data.jibunAddress;

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
 
<div class="modal"  id="registerModal" role="dialog" data-backdrop="false" >
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">개인 회원 가입</h4>
				</div>
              <form  id='registerform' action="/palette/users/insert" method="post">
              <div class="modal-body">
                  <div class="form-group">
                      <label for="InputEmail">아이디</label>
                      <input type="text" class="form-control" name="userId" placeholder="아이디" id="id">
                  </div>
                  <p id="idchecked"></p>
                  <div class="form-group">
                      <label for="InputPassword1">비밀번호</label>
                      <input type="password" class="form-control" name="userPwd" placeholder="비밀번호" name="password" id="pwd">
                  </div>
                  <p id="pwdcheck"></p>
                  <div class="form-group">
                      <label for="InputPassword2">비밀번호 확인</label>
                      <input type="password" class="form-control" placeholder="비밀번호 확인"name="password2" id="pwd2">
                  </div>
                  <p id="pwdcheck2"></p>
                  <div class="form-group">
                      <label for="username">이름</label>
                      <input type="text" class="form-control" name="userName" placeholder="이름을 입력해 주세요">
                  </div>
 
                  <div class="form-group">
                      <label for="phone_number">전화번호</label>
                      <input type="text" class="form-control" name="userPhone" placeholder="전화번호를 입력해주세요">
                  </div>
            	 <div class="form-group">
                      <label for="address">주소</label><br>
                      <div style="text-align: left;">
                      <input type="text" class="form-control" style="width:30%; display:inline;" id="post" name="userPost" placeholder="우편번호를입력하시오">
                       <input type="button" class="form-control"  style="width:30%; display:inline;" onclick="getPostCode()" value="주소검색">
                      </div>
                      <input type="text" class="form-control" id="address" name="userAddress" placeholder="주소를 입력해주세요">
                  </div>
                  <div class="form-group">
                  </div>
                  <div class="form-group">
                      <label for="email">이메일</label>
                      <input type="text" class="form-control" id='mail' name="userMail" placeholder="이메일을 입력해주세요">
                  </div>         
                   <p id="mailchecked"></p>
                  <div class="form-group">
                      <label>약관 동의</label>
                      <div data-toggle="buttons">
                          <label class="btn btn-primary active">
                              <span class="fa fa-check"></span>
                              <input id="agree" type="checkbox" autocomplete="off" checked>
                          </label>
                          <a href="#">이용약관</a>에 동의합니다.
                      </div>
                  </div>
                  <div class="form-group text-center">
                      <button type="button"  id="register" class="btn btn-info">회원가입</button>
                      <button type="button" onclick="location.href='/palette/main'"  class="btn btn-warning">가입취소</button>
                  </div>
                  </div>
              </form>
          </div>
  
      </div>
      </div>
      
      <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
