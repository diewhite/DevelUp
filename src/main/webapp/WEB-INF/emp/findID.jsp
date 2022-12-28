<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head> </head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
<div id="contents">
    <!-- title -->
    <div class="sub_top center">
        <h1>아이디 찾기</h1>
        <p>간편인증을 통하여 아이디 찾기를 진행 할 수 있습니다.</p>
    </div>
    <!-- //title -->

    <div class="login_container container" id="div1">
        <div class="tab-content">
            <div class="tab-pane fade show active" id="normal" role="tabpanel" aria-labelledby="normal-tab">    
                <h2 class="visually-hidden">일반회원</h2>       
                <div class="login_wrap">
                        <div class="login_section all">
                        <h3 class="text-center blue">간편 인증</h3>
                        <p class="text-center">본인명의로 등록된 간편 인증을 진행합니다.</p>
                        <div class="text-center"><img src="/ongo/images/idfind.png" alt=""></div>
                        <button type="button" class="btn btn-primary btn-full" onclick="fnCheck()">간편 인증</button>
                    </div>
                </div>
            </div>
        </div>
    </div>   
    <div class="login_container container" id="div2" style="display: none;">
      <div class="tab-content">
          <div class="tab-pane fade show active" id="normal" role="tabpanel" aria-labelledby="normal-tab">    
              <h2 class="visually-hidden">일반회원</h2>       
              <div class="login_wrap">
                  <div class="login_section all">
                      <h3 class="text-center blue">아이디 조회</h3>
                      <div class="text-center"><img src="/ongo/images/join_normal.png" alt=""></div>
                      <p class="text-center">해당 명의로 가입된 아이디는 <strong><span id="usrId"></span></strong> 입니다.</p>
                      <button type="button" class="btn btn-primary btn-full" onclick="fnLogin();">로그인</button>
                  </div>
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