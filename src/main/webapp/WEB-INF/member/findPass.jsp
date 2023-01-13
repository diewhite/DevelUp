<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>
	<script type="text/javascript">
		function fnCheck(){
 			var data = {"member_email":$("#member_email").val(),
						"member_id":$("#member_id").val()};
			$.ajax({
				url : "/ongo/member/ajax_findpass",
				type : "get",
				data : data,
				success : function(data){
					if(data!=""){
						$("#USER_ID").val(data);
						$("#div1").css("display","none");
						$("#div2").css("display","block");
					} else {
						$("#div2").css("display","none");
						alert("일치하는 아이디가 없습니다.");
					}
				},//end success
				error : function(obj,msg,statusMsg){
					alert("오류",statusMsg);
				}//end error
			})//end ajax
		}//end fnCheck

		$(document).ready(function(){
			$("#modibtn").click(function() {
				var id = $("#USER_ID").val();
				var pw1 = $("#ENPWD").val();
				var pw2 = $("#ENPWD2").val();
				if(pw1==pw2){
					alert("비밀번호 변경 성공!");
					location.href = "/ongo/member/passupdate?member_pw="+pw1+"&member_id="+id;
				} else {
					alert("비밀번호를 입력하세요");
					location.href = "#";
				}
			});//end btn click
		});//end document ready
	</script>
</head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
<div id="contents">
    <!-- title -->
    <div class="sub_top center">
        <h1>비밀번호 찾기</h1>
        <p>이메일과 아이디를 통하여 비밀번호 찾기를 진행 할 수 있습니다.</p>
    </div>
    <!-- //title -->

    <div class="login_container container" >
        <div class="tab-content" id="div1">
            <div class="tab-pane fade show active" id="normal" role="tabpanel" aria-labelledby="normal-tab">    
                <h2 class="visually-hidden">일반회원</h2>       
                <div class="login_wrap">
                    <div class="login_section all">
                        <div class="input-group">
			                <input type="text" class="form-control" id="member_email" name="member_email" placeholder="이메일을 입력해주세요." value="">
			            </div>
		                <div class="input-group">
			            	<input type="text" class="form-control" id="member_id" name="member_id" placeholder="아이디를 입력해주세요." value="">
			            </div>
	                    	<button type="button" class="btn btn-primary btn-full" onclick="fnCheck()">비밀번호 찾기</button>
	            	</div>
	            </div>
	        </div>
		</div>  
    <div class="login_container container" id="div2" style="display: none;">
      <div class="tab-content">
        <form action="/ongo/member/passupdate?member_pw=${ENPWD }&member_id=${USER_ID}" >
          <div class="tab-pane fade show active" id="normal" role="tabpanel" aria-labelledby="normal-tab">    
              <h2 class="visually-hidden">일반회원</h2>       
              <div class="login_wrap">
                  <div class="login_section all">
                      <h3 class="text-center blue">비밀번호 변경</h3>
                      <div class="text-center"><img src="/ongo/images/joinsuccess.png" alt=""></div>
                      <label for="USER_ID" class="form-label">아이디</label>
                       <input type="text" id="USER_ID" name="USER_ID" class="form-control" title="아이디 입력" disabled="disabled">
                       <label for="ENPWD" class="form-label">비밀번호</label><br>
                       <span>(4자리 이상, 20자리 이하)</span>
                       <input type="password" id="ENPWD" name="ENPWD" class="form-control" title="비밀번호 입력" maxlength="20" placeholder="비밀번호를 입력해주세요.">
                       <label for="ENPWD2" class="form-label">비밀번호확인</label>
                       <input type="password" id="ENPWD2" name="ENPWD2" class="form-control" title="비밀번호확인 입력" maxlength="20" placeholder="비밀번호를 입력해주세요.">
                       <button type="button" id="modibtn" class="btn btn-primary btn-full">비밀번호 변경</button>
                  </div>
              </div>
          </div>
        </form>
      </div>
  </div>  
</div>
<!-- // contents -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
 <!-- //Footer -->
 
  
</body>
</html>