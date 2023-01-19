<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>
<script>

function fnHome(){
	location.href = '/ongo/index.do';
}

function fnLogin(){
	location.href = '/ongo/payment/paymentlist';
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
          <h1>결제하기</h1>
      </div>
  </div>
  <!-- //title -->

  <!-- 게시판 -->
  <div class="login_container container">
      <!-- 현재 탭 표시 -->
      <h2 class="visually-hidden">결제완료</h2>
      <!-- //현재 탭 표시 -->
      <div class="login_wrap">
          <div class="login_section all">
              <h3 class="text-center blue">결제 완료</h3>
              <p class="text-center">결제가 완료되었습니다.</p>
              
              <div class="btn-area">
                  <button type="button" class="btn btn-primary btn-large me-md-2" onclick="fnLogin()">결제내역조회</button>
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