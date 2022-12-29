<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>

<script>
fnIdCheck
function fnNext(){
  const agree1 = document.getElementById('agree1').checked;
  const agree2 = document.getElementById('agree2').checked;

  if(agree1 && agree2){
    location.href = '/ongo/member/join3.do';
  }else{
    toastr.warning("온고 회원약관 또는 개인정보 수집 이용약관이 동의되지 않았습니다.")
  }

}

function fnChk(){
  const chk = document.getElementById('remember');
  const is_checked = chk.checked;

  var checked = document.getElementById('remember').innerText = is_checked;

  if(checked){
    document.getElementById('agree1').checked = true;
    document.getElementById('agree2').checked = true;
  }else{
    document.getElementById('noagree1').checked = true;
    document.getElementById('noagree2').checked = true;
  }
}

function fnAgree(){
  const agree1 = document.getElementById('agree1').checked;
  const agree2 = document.getElementById('agree2').checked;

  const chk = document.getElementById('remember');
  const is_checked = chk.checked;

  if(agree1 && agree2){
    document.getElementById('remember').checked = true;
  }else{
    document.getElementById('remember').checked = false;
  }
  
}

</script>
 </head>
<body>
<!-- content -->
<div id="contents">
  <!-- title -->
  <div class="sub_top center">
      <div class="login_container container">
          <h1>회원가입</h1>
          <ul class="step join_step">
              <li class="on" title="선택됨">
                  <p class="stepicon"></p>
                  <p class="steptt">약관동의</p>
              </li>
              <li>
                  <p class="stepicon"></p>
                  <p class="steptt">인증서 확인</p>
              </li>
              <li>
                  <p class="stepicon"></p>
                  <p class="steptt">정보입력</p>
              </li>
              <li>
                  <p class="stepicon"></p>
                  <p class="steptt">가입완료</p>
              </li>
          </ul>
      </div>
  </div>
  <!-- //title -->

  <!-- 게시판 -->
  <div class="login_container container">
    <form id="radioForm" name="radioForm">
      <!-- 현재 탭 표시 -->
      <h2 class="visually-hidden">약관동의</h2>
      <!-- //현재 탭 표시 -->
      <div class="agree d-flex">
          <div class="form-check">
            <label class="form-check-label">
              <input type="checkbox" name="remember" id="remember" class="form-check-input" onclick="fnChk()">
              <span class="checkbox"></span><span class="h4">&nbsp;회원약관 및 개인정보 수집 이용약관에 전체 동의합니다.</span>
            </label>
          </div>
      </div>
      <div class="cont-box-inner">
          <div class="title">
              <h3 class="h4">회원약관</h3>
              <p class="highlight org-txt">* 필수입력사항</p>
          </div>
          <div class="overflow">
              제 1장 총칙<br>
              제 1 조 [목적]<br>
              이 약관은 온고(이하 "온라인 고물상")이 제공하는 중고거래 관련 제반 서비스의 이용과 관련하여 재단과 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.<br>
              <br>
             
              부칙<br>
                ① 이 약관은 2022년 12월 23부터 적용됩니다.<br>
                ② 종전의 약관은 본 약관으로 대체합니다.
          </div>
          <div class="form-group float-right">
              <div class="form-check">
                <label for="agree1" class="form-check-label">
                  <input type="radio" name="agree1" id="agree1" class="form-check-input" onclick="fnAgree()">
                  <span class="radio"></span>&nbsp;동의합니다.
                </label>
              </div>
              <div class="form-check">
                <label for="noagree1" class="form-check-label">
                  <input type="radio" name="agree1" id="noagree1" class="form-check-input" onclick="fnAgree()" checked="">
                  <span class="radio"></span>&nbsp;동의하지 않습니다.
                </label>
              </div>
          </div> 
      </div>
      <div class="cont-box-inner">
          <div class="title">
              <h3 class="h4">개인정보 수집 및 이용동의</h3>
              <p class="highlight org-txt">* 필수입력사항</p>
          </div>
          <div class="overflow">
            온고(이하 "온라인 고물상") 중고거래 업무와 관련하여, 신청인 들의 개인정보를 중요시하며, 개인정보보호법을 준수하고 있습니다.
            <br>
            <br>
            <p class="mb10"><strong>1. 수집 및 이용 목적</strong><br>
            온라인 고물상 회원가입 테스트 제반 서비스의 이용과 관련하여 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
            <p class="mb10"><strong>2. 수집 및 이용 항목</strong><br>
            (필수항목) 성명, 휴대전화번호, 전화번호, 이메일, 아이디, 비밀번호</p>
            <p class="mb10"><strong>3. 보유 및 이용 기간</strong><br>
            수집 및 이용 동의일로부터 탈퇴 시까지</p>
            - IP Address, 쿠키, 방문 일시, 서비스 이용기록, 시스템 로그 등</p>
            <br>
            <p>※ 만 14세미만 아동의 경우 회원가입을 하실 수 없습니다.</p>
          </div>
          <div class="form-group float-right">
              <div class="form-check">
                <label for="agree2" class="form-check-label">
                  <input type="radio" name="agree2" id="agree2" class="form-check-input" onclick="fnAgree()">
                  <span class="radio"></span>&nbsp;동의합니다.
                </label>
              </div>
              <div class="form-check">
                <label for="noagree2" class="form-check-label">
                  <input type="radio" name="agree2" id="noagree2" class="form-check-input" onclick="fnAgree()" checked="">
                  <span class="radio"></span>&nbsp;동의하지 않습니다.
                </label>
              </div>
          </div>
      </div>
      <div class="btn-area">
          <button class="btn btn-primary btn-large" type="button" onclick="fnNext()">동의합니다.</button>
          <button class="btn btn-outline-secondary btn-large" type="button" onclick="fnCancel()">동의하지 않습니다.</button>
      </div>
    </form>
  </div>
</div>
<!-- // contents -->

      <!-- Footer -->
  <jsp:include page="../include/footer.jsp"/>
      <!-- //Footer -->
 
  
</body>
</html>