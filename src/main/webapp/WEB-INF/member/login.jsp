<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>
<script type="text/javascript">
    /* 개인회원 로그인 */
    function checkUsrSubmit() {
      var ID = $('#frmUsr #USR_ID');
      var PW = $('#frmUsr #PW');
      if (!ID.val()) {
        alert('ID를 입력하세요.');
        ID.focus();
        return false;
      }

      if (!PW.val()) {
        alert('비밀번호를 입력하세요.');
        PW.focus();
        return false;
      }

      if ($("#remember").is(":checked")) {
        var userInputId = $("#USR_ID").val();
        setCookie("userInputId", userInputId, 60);
        setCookie("setCookieYN", "Y", 60);
      } else {
        deleteCookie("userInputId");
        deleteCookie("setCookieYN");
      }

      return true;
    }
    
    //아이디저장

    window.onload = function () {
      var userInputId = getCookie("userInputId");
      var setCookieYN = getCookie("setCookieYN");

      if (setCookieYN == 'Y') {
        $("#remember").prop("checked", true);
      } else {
        $("#remember").prop("checked", false);
      }

      $("#USR_ID").val(userInputId);


      var err = '';
      if (err) { //로그인 실패 메세지 발생
        if (err === 'user_not_found') {
          toastr.warning('사용자를 찾을 수 없습니다.');
        }
      }
    }
    
    //쿠키값 Set
    function setCookie(cookieName, value, exdays) {
      var exdate = new Date();
      exdate.setDate(exdate.getDate() + exdays);
      var cookieValue = escape(value) + ((exdays == null) ? "" : "; expires=" +
        exdate.toGMTString());
      document.cookie = cookieName + "=" + cookieValue;
    }

    //쿠키값 Delete
    function deleteCookie(cookieName) {
      var expireDate = new Date();
      expireDate.setDate(expireDate.getDate() - 1);
      document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
    }

    //쿠키값 가져오기
    function getCookie(cookie_name) {
      var x, y;
      var val = document.cookie.split(';');

      for (var i = 0; i < val.length; i++) {
        x = val[i].substr(0, val[i].indexOf('='));
        y = val[i].substr(val[i].indexOf('=') + 1);
        x = x.replace(/^\s+|\s+$/g, ''); // 앞과 뒤의 공백 제거하기

        if (x == cookie_name) {
          return unescape(y); // unescape로 디코딩 후 값 리턴
        }
      }
    }

    function removeCheck1(){
    	var remove;
    	remove =  toastr.warning("아이디 찾기 서비스를 제공하고 있지 않습니다.");
    }
    function removeCheck2(){
    	var remove;
    	remove =  toastr.warning("비밀번호 찾기 서비스를 제공하고 있지 않습니다.");
    }
</script>         
</head>
<body>
<!-- js쿠키아이디 저장 블로그참조 https://chobopark.tistory.com/203 -->

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
                <form id="frmUsr" action="/ongo/member/login.do" method="post" onsubmit="return checkUsrSubmit()">
              <input type="hidden" id="USR_TP" name="TP" value="USR" />
              <div class="input-group">
              <!--name="member_id"=> dto에서 정의한 멤버변수  VALUE값 쿠키값으로 설정-->
                <label for="USR_ID" class="form-label">아이디</label>
                <input type="text" class="form-control" id="USR_ID" name="member_id" placeholder="아이디를 입력해주세요." value="">
              </div>
              <div class="input-group">
                 <!-- name="member_pw" => dto에서 정의한 멤버변수  -->
                <label for="PW" class="form-label">비밀번호</label>
                <input type="password" class="form-control" id="PW" name="member_pw" placeholder="비밀번호를 입력해주세요."
                  value="">
              </div>
              <div class="form-check">
                <input type="checkbox" name="remember" id="remember" class="form-check-input">
                <label for="remember" class="form-check-label"><span class="checkbox"></span>아이디저장</label>
              </div>
              <button type="submit" class="btn btn-primary btn-full">로그인</button>
              <div class="text-center login_bottom">
                 <span><a href="#"  onclick="removeCheck1()">아이디찾기</a></span>
                <span><a href="#"  onclick="removeCheck2()">비밀번호찾기</a></span>
                <span><a href="/ongo/member/join1.do" class="blue" >회원가입</a></span>
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