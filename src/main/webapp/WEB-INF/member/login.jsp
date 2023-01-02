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
            <form action="/ongo/member/login.do" method="post" >
              <input type="hidden"  value=" ">
              <div class="input-group">
                <label class="form-label">아이디</label>
                <input type="text" class="form-control"name="member_id" placeholder="아이디를 입력해주세요." value="">
              </div>
              <div class="input-group">
                <label for="PW" class="form-label">비밀번호</label>
                <input type="password" class="form-control" name="member_pw" placeholder="비밀번호를 입력해주세요." value="">
              </div>
              <div class="form-check">
                <input type="checkbox" name="remember" class="form-check-input">
                <label for="remember" class="form-check-label"><span class="checkbox"></span>아이디저장</label>
              </div>
              <button type="submit" class="btn btn-primary btn-full">로그인</button>
              <div class="text-center login_bottom">
                <span><a href="/ongo/member/findid.do">아이디찾기</a></span>
                <span><a href="/ongo/member/pass.do">비밀번호찾기</a></span>
                <span><a href="/ongo/member/join1.do" class="blue">회원가입</a></span>
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