<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>
<script>

function fnHome(){
	location.href = '/ongo/index.do';
}

function fnLogin(){
	location.href = '/ongo/member/login.do';
}

</script>
 </head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
 <div id="contents">
  <!-- title -->
  <div class="sub_top center">
      <div class="login_container container">
          <h1>회원가입</h1>
          <ul class="step join_step">
              <li>
                  <p class="stepicon"></p>
                  <h2 class="steptt">약관동의</h2>
              </li>
           	 <li>
                  <p class="stepicon"></p>
                  <p class="steptt">인증서 확인</p>
              </li>
              <li>
                  <p class="stepicon"></p>
                  <h2 class="steptt">정보입력</h2>
              </li>
              <li class="on" title="선택됨">
                  <p class="stepicon"></p>
                  <h2 class="steptt">가입완료</h2>
              </li>
          </ul>
      </div>
  </div>
  <!-- //title -->

  <!-- 게시판 -->
  <div class="login_container container">
      <!-- 현재 탭 표시 -->
      <h2 class="visually-hidden">가입완료</h2>
      <!-- //현재 탭 표시 -->
      <div class="login_wrap">
          <div class="login_section all">
              <h3 class="text-center blue">가입 완료</h3>
              <p class="text-center">회원가입이 완료되었습니다. 서비스 이용을 위해 로그인해주세요.</p>
              <p class="text-center"><img src="/ongo/images/joinsuccess.png" alt=""></p>
              <div class="btn-area">
                  <button type="button" class="btn btn-primary btn-large me-md-2" onclick="fnLogin()">로그인</button>
                  <button type="button" class="btn btn-outline-secondary btn-large" onclick="fnHome()">홈으로 이동</button>
              </div>
          </div>
      </div>    
  </div>
</div>
<!-- // contents -->

 
<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer --> 
  
</body>
</html>