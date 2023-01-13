<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>

<style type="text/css">

</style>
	<script type="text/javascript">
		function fnCheck(){
 			var data = {"member_email":$("#member_email").val(),
						"member_phone":$("#member_phone").val()};
			$.ajax({
				url : "/ongo/member/ajax_findid",
				type : "get",
				data : data,
				success : function(data){
					if(data!=""){
						$("#usrId").html(data);
						$("#div2").css("display","block");
					} else {
						$("#usrId").html("");
						$("#div2").css("display","none");
						alert("일치하는 아이디가 없습니다.");
					}
				},//end success
				error : function(obj,msg,statusMsg){
					alert("오류",statusMsg);
				}//end error
			})//end ajax
		}//end fnCheck
	</script>
 </head>
<body>

<!-- content -->
<div id="contents">
    <!-- title -->
    <div class="sub_top center">
        <h1>아이디 찾기</h1>
        <p>이메일과 핸드폰번호를 통하여 아이디 찾기를 진행 할 수 있습니다.</p>
    </div>
    <!-- //title -->

	<div class="login_container container" id="div1">
        <div class="tab-content">
            <div class="tab-pane fade show active" id="normal" role="tabpanel" aria-labelledby="normal-tab">    
                <h2 class="visually-hidden">일반회원</h2>       
                <div class="login_wrap">
                    <div class="login_section all">
                        <div class="input-group">
			                <input type="text" class="form-control" id="member_email" name="member_email" placeholder="이메일을 입력해주세요." value="">
			            </div>
		                <div class="input-group">
			            	<input type="text" class="form-control" id="member_phone" name="member_phone" placeholder="핸드폰번호를 입력해주세요." value="">
			            </div>
	                    	<button type="button" class="btn btn-primary btn-full" onclick="fnCheck()">아이디 찾기</button>
	            	</div>
	            </div>
	        </div>
		</div>   
    <div class="login_container container" id="div2" style="display: none">
      <div class="tab-content">
          <div class="tab-pane fade show active" id="normal" role="tabpanel" aria-labelledby="normal-tab">    
              <h2 class="visually-hidden">일반회원</h2>       
              <div class="login_wrap">
                  <div class="login_section all">
                      <h3 class="text-center blue">아이디 조회</h3>
                      <div class="text-center"><img src="/ongo/images/join_normal.png" alt=""></div>
                      <p class="text-center">해당 명의로 가입된 아이디는 <strong><span id="usrId"></span></strong> 입니다.</p>
                      <button type="button" class="btn btn-primary btn-full" onclick="location.href='/ongo/member/login.do'">로그인</button>
                  </div>
              </div>
          </div>
      </div>
  </div>
  

  
  
  
  
  
</div><!-- // contents -->


<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>