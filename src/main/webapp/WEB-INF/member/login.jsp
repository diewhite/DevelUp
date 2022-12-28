<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head> </head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
<div id="contents">
  <!-- title -->
  <div class="sub_top center">
    <div class="container">
      <h1>로그인</h1>
      <p>온고에 오신 것을 환영합니다.</p>
    </div>
  </div>
  <!-- //title -->
  <!-- 로그인 -->
  <div class="login_container container">
   
    <div class="tab-content">
        <div class="login_wrap">
          <div class="login_section all">
            <form id="frmUsr" action="#" method="post" onsubmit="return checkUsrSubmit()">
              <input type="hidden" id="USR_TP" name="TP" value="USR">
              <div class="input-group">
                <label for="USR_ID" class="form-label">아이디</label>
                <input type="text" class="form-control" id="USR_ID" name="ID" placeholder="아이디를 입력해주세요." value="">
              </div>
              <div class="input-group">
                <label for="PW" class="form-label">비밀번호</label>
                <input type="password" class="form-control" id="PW" name="PW" placeholder="비밀번호를 입력해주세요." value="">
              </div>
              <div class="form-check">
                <input type="checkbox" name="remember" id="remember" class="form-check-input">
                <label for="remember" class="form-check-label"><span class="checkbox"></span>아이디저장</label>
              </div>
              <button onclick="location.href='/ongo/index.do'" type="submit" class="btn btn-primary btn-full">로그인</button>
              <div class="text-center login_bottom">
                <span><a href="#">아이디찾기</a></span>
                <span><a href="#">비밀번호찾기</a></span>
                <span><a href="#" class="blue">회원가입</a></span>
              </div>
            </form>
          </div>
        </div>
      </div>
      
    </div>
  </div><!-- // content -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>