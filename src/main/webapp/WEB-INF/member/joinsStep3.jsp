<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>

<script>
function fnSave(){
	location.href = '/ongo/member/join4.do';
}

function selectChange(){
  const target = arguments[0];
  
  const emadr = document.getElementById('USR_EMADR_2');
   
  const selectValue = target.options[target.selectedIndex].value
  const selectText = target.options[target.selectedIndex].text;
  
  if(selectValue == 99){
    emadr.value = '';
    emadr.disabled = false;
  }else{
    emadr.value = selectText;
    emadr.disabled = true;
  }
}
  //이메일
  const emadr1 = document.getElementById('USR_EMADR_1').value;
  const emadr2 = document.getElementById('USR_EMADR_2').value;
  document.getElementById('USR_EMADR').value = emadr1 +'@'+emadr2;

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
            <li>
                <p class="stepicon"></p>
                <h2 class="steptt">약관동의</h2>
            </li>
           	<li>
                  <p class="stepicon"></p>
                  <p class="steptt">인증서 확인</p>
              </li>
            <li class="on" title="선택됨">
                <p class="stepicon"></p>
                <h2 class="steptt">정보입력</h2>
            </li>
            <li>
                <p class="stepicon"></p>
                <h2 class="steptt">가입완료</h2>
            </li>
        </ul>
    </div>
  </div>
  <!-- //title -->
  <div class="container">
    <form id="saveForm" name="saveForm">
      <input type="hidden" value=" ">
      <div class="cont-box-inner">
        <div class="title">
          <h3 class="h4">개인정보</h3>
          <p class="highlight org-txt">* 필수입력사항</p>
        </div>
        <div class="tbl grid-layout grid2">
          <div class="grid-item">
            <label for="USR_NM">성명<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                 <input class="grid-input" type="text"title="이름">
              </div>
            </div>
          </div>
          <div class="grid-item">
            <label for="USR_MBTN">휴대전화번호</label>
            <input type="hidden" name=" ">
            <div class="tbl-basic-td">
              <div class="input-wrap w30" id="select_target_1">
              <select class="form-select grid-input" title="휴대전화번호" >
              <option value="">선택</option>
              <option value="010">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option></select></div>
              -
              <div class="input-wrap w30">
                <input class="grid-input" type="text" name=" " maxlength="4" title="휴대전화번호 앞자리 입력" >
              </div>
              -
              <div class="input-wrap w30">
                <input class="grid-input" type="text" name="" maxlength="4" title="휴대전화번호 뒷자리 입력">
              </div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="HOFS_ADDR">아이디<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="text" maxlength="12" title="아이디 입력">
              </div>
              <button type="button" class="btn btn-light" onclick="fnIdCheck();"><i class="las la-search"></i>중복확인</button>
            </div>
          </div>
       
          <div class="grid-item colspan2">
            <label for="ENPWD">비밀번호<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="password" role="textbox" id="ENPWD" name="ENPWD" maxlength="20" title="비밀번호 입력">
              </div>
              <span>영문,숫자,특수문자($@!%*#?&amp;^()-_=+~&lt;&gt;) 조합으로 입력해주세요.(9자리 이상, 20자리 이하)<span></span>
            </span></div>
          </div>
          <div class="grid-item colspan2">
            <label for="ENPWD2">비밀번호확인<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="password" role="textbox" id="ENPWD2" name="ENPWD2" maxlength="20" title="비밀번호확인 입력">
              </div>
              <span>비밀번호 확인을 위해 한번 더 입력해 주세요.</span>
            </div>
          </div>
           <div class="grid-item colspan2">
            <label for="HOFS_ADDR">주소</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w10">
                <input class="grid-input" type="text" title="우편번호">
              </div>
              <button type="button" class="btn btn-light" >우편번호 검색</button>
               <div class="input-wrap">
               <br>
              </div>
              <div class="">
              <div class="input-wrap ">
                <input class="grid-input" type="text" name=" " title="주소">
              </div>
              <div class="input-wrap">
                <input class="grid-input" type="text" name=" " placeholder="상세주소를 입력해주세요.">
              </div>
               </div>
             
            </div>
            
          </div>
          <div class="grid-item colspan2">
            <label for="USR_EMADR">이메일주소</label>
            <input type="hidden" id="USR_EMADR" name="USR_EMADR">
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="text" role="textbox" id="USR_EMADR_1" name="USR_EMADR_1" maxlength="10" title="이메일주소 입력">
              </div>
              @
              <div class="input-wrap">
                <input class="grid-input" type="text" role="textbox" id="USR_EMADR_2" name="USR_EMADR_2" title="이메일주소 입력" disabled="">
              </div>
              <div class="input-wrap w20" id="select_target_3">
              <select class="form-select grid-input" id="" name="" data-col="" title="이메일" onchange="selectChange(this);">
              <option value="01">이메일선택</option><option value="02">naver.com</option><option value="03">hanmail.net</option>
              <option value="04">gmail.com</option><option value="05">nate.com</option><option value="99">직접입력하기</option>
              </select></div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="radio_target2">이메일 수신여부</label>
            <div class="tbl-basic-td">
              <div class="input-wrap " id="radio_target1">
              <div class="form-check">
              <input type="radio" class="form-check-input" checked="" value="Y" title="예" >
              <label class="form-check-label"><span class="radio"></span>예</label></div>
              <div class="form-check"><input type="radio" class="form-check-input" value="N" title="아니요" onchange="(this);">
              <label for=" " class="form-check-label"><span class="radio"></span>아니요</label>
              </div></div>
            </div>
          </div>
        </div>
    
    </form>
  </div>  
  <div class="btn-area">
  <button class="btn btn-outline-primary btn-large" type="button" onclick="fnSave();">등록하기</button>
  </div>
</div>
<!-- // contents -->


<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer --> 
  
</body>
</html>