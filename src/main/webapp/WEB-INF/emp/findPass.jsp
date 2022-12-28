<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head> </head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
<div id="contents">
    <!-- title -->
    <div class="sub_top center">
        <h1>비밀번호 찾기</h1>
        <p>간편인증을 통하여 비밀번호 찾기를 진행 할 수 있습니다.</p>
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
                        <div class="text-center"><img src="images/idfind.png" alt=""></div>
                        <label for="inputUsrId" class="form-label">아이디</label>
                        <input type="text" id="inputUsrId" name="inputUsrId" class="form-control" title="아이디 입력" placeholder="아이디를 입력해주세요.">
                        <button type="button" class="btn btn-primary btn-full" onclick="fnCheck()">간편 인증</button>
                    </div>
                </div>
            </div>
        </div>
    </div> 
    <div class="login_container container" id="div2" style="display: none;">
      <div class="tab-content">
        <form id="saveForm" name="saveForm">
          <div class="tab-pane fade show active" id="normal" role="tabpanel" aria-labelledby="normal-tab">    
              <h2 class="visually-hidden">일반회원</h2>       
              <div class="login_wrap">
                  <div class="login_section all">
                      <h3 class="text-center blue">비밀번호 변경</h3>
                      <div class="text-center"><img src="images/joinsuccess.png" alt=""></div>
                      <label for="USER_ID" class="form-label">아이디</label>
                       <input type="text" id="USER_ID" name="USER_ID" class="form-control" title="아이디 입력" disabled="">
                       <label for="ENPWD" class="form-label">비밀번호</label><br>
                       <span>영문,숫자,특수문자($@!%*#?&amp;^()-_=+~&lt;&gt;)<br>조합으로 입력해주세요.(9자리 이상, 20자리 이하)</span>
                       <input type="password" id="ENPWD" name="ENPWD" class="form-control" title="비밀번호 입력" maxlength="20" placeholder="비밀번호를 입력해주세요.">
                       <label for="ENPWD2" class="form-label">비밀번호확인</label>
                       <input type="password" id="ENPWD2" name="ENPWD2" class="form-control" title="비밀번호확인 입력" maxlength="20" placeholder="비밀번호를 입력해주세요.">
                      <button type="button" class="btn btn-primary btn-full" onclick="fnSave();">비밀번호 변경</button>
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