<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="ko">

<!-- head 공통 타일즈 연결 -->
<head>
<tiles:insertAttribute name="top"></tiles:insertAttribute>
</head>
<!-- //head 공통 타일즈 연결 -->

<body>

<!-- 메뉴 tiles 연결 -->
<tiles:insertAttribute name="lnb"></tiles:insertAttribute>
<!-- //메뉴 tiles 연결 -->

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
                <h2 class="steptt">인증서 확인</h2>
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
      <input type="hidden" id="PSLF_AHTN_INFO_KEYV" name="PSLF_AHTN_INFO_KEYV" value=" ">
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
                <input class="grid-input" type="text" role="textbox" id="USR_NM" name="USR_NM" maxlength="50" title="박소정" disabled="">
              </div>
            </div>
          </div>
          <div class="grid-item">
            <label for="USR_MBTN">휴대전화번호<em class="org-txt asterisk" title="필수">*</em></label>
            <input type="hidden" id="USR_MBTN" name="USR_MBTN">
            <div class="tbl-basic-td">
              <div class="input-wrap w30" id="select_target_1"><select class="form-select grid-input" id="USR_MBTN_1" name="USR_MBTN_1" data-col="USR_MBTN_1" title="휴대전화번호" disabled=""><option value="">선택</option><option value="010">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option></select></div>
              -
              <div class="input-wrap w30">
                <input class="grid-input" type="text" role="textbox" id="USR_MBTN_2" name="USR_MBTN_2" maxlength="4" title="휴대전화번호 앞자리 입력" disabled="">
              </div>
              -
              <div class="input-wrap w30">
                <input class="grid-input" type="text" role="textbox" id="USR_MBTN_3" name="USR_MBTN_3" maxlength="4" title="휴대전화번호 뒷자리 입력" disabled="">
              </div>
            </div>
          </div>
          <div class="grid-item">
            <label for="HOFS_ADDR">아이디<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="text" role="textbox" id="USER_ID" name="USER_ID" maxlength="12" title="아이디 입력">
              </div>
              <button type="button" class="btn btn-light" onclick="fnIdCheck();"><i class="las la-search"></i>중복확인</button>
            </div>
          </div>
          <div class="grid-item">
            <label for="USR_TLNO">전화번호</label>
            <input type="hidden" id="USR_TLNO" name="USR_TLNO">
            <div class="tbl-basic-td">
              <div class="input-wrap w30" id="select_target_2"><select class="form-select grid-input" id="USR_TLNO_1" name="USR_TLNO_1" data-col="USR_TLNO_1" title="전화번호"><option value="">선택</option><option value="02">02</option><option value="031">031</option><option value="032">032</option><option value="033">033</option><option value="041">041</option><option value="042">042</option><option value="043">043</option><option value="044">044</option><option value="051">051</option><option value="052">052</option><option value="053">053</option><option value="054">054</option><option value="055">055</option><option value="061">061</option><option value="062">062</option><option value="063">063</option><option value="064">064</option><option value="070">070</option><option value="050">050</option><option value="010">010</option></select></div>
              -
              <div class="input-wrap w30">
                <input class="grid-input" type="text" role="textbox" id="USR_TLNO_2" name="USR_TLNO_2" maxlength="4" title="전화번호 앞자리 입력" onkeydown="inNumber(this)">
              </div>
              -
              <div class="input-wrap w30">
                <input class="grid-input" type="text" role="textbox" id="USR_TLNO_3" name="USR_TLNO_3" maxlength="4" title="전화번호 뒷자리 입력" onkeydown="inNumber(this)">
              </div>
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
            <label for="USR_EMADR">이메일주소<em class="org-txt asterisk" title="필수">*</em></label>
            <input type="hidden" id="USR_EMADR" name="USR_EMADR">
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="text" role="textbox" id="USR_EMADR_1" name="USR_EMADR_1" maxlength="10" title="이메일주소 입력">
              </div>
              @
              <div class="input-wrap">
                <input class="grid-input" type="text" role="textbox" id="USR_EMADR_2" name="USR_EMADR_2" title="이메일주소 입력" disabled="">
              </div>
              <div class="input-wrap w20" id="select_target_3"><select class="form-select grid-input" id="" name="" data-col="" title="이메일" onchange="selectChange(this);"><option value="01">이메일선택</option><option value="02">naver.com</option><option value="03">hanmail.net</option><option value="04">gmail.com</option><option value="05">nate.com</option><option value="99">직접입력하기</option></select></div>
            </div>
          </div>
          <div class="grid-item">
            <label for="radio_target2">이메일 수신여부<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100" id="radio_target1"><div class="form-check"><input type="radio" id="EMAL_RCIV_AGRE_YN_1" name="EMAL_RCIV_AGRE_YN" data-col="EMAL_RCIV_AGRE_YN" class="form-check-input" checked="" value="Y" title="예" onchange="(this);"><label for="EMAL_RCIV_AGRE_YN_1" class="form-check-label"><span class="radio"></span>예</label></div><div class="form-check"><input type="radio" id="EMAL_RCIV_AGRE_YN_2" name="EMAL_RCIV_AGRE_YN" data-col="EMAL_RCIV_AGRE_YN" class="form-check-input" value="N" title="아니요" onchange="(this);"><label for="EMAL_RCIV_AGRE_YN_2" class="form-check-label"><span class="radio"></span>아니요</label></div></div>
            </div>
          </div>
          <div class="grid-item">
            <label for="radio_target3">카카오톡 수신여부<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100" id="radio_target2"><div class="form-check"><input type="radio" id="SMS_RCIV_AGRE_YN_1" name="SMS_RCIV_AGRE_YN" data-col="SMS_RCIV_AGRE_YN" class="form-check-input" checked="" value="Y" title="예" onchange="undefined(this);"><label for="SMS_RCIV_AGRE_YN_1" class="form-check-label"><span class="radio"></span>예</label></div><div class="form-check"><input type="radio" id="SMS_RCIV_AGRE_YN_2" name="SMS_RCIV_AGRE_YN" data-col="SMS_RCIV_AGRE_YN" class="form-check-input" value="N" title="아니요" onchange="undefined(this);"><label for="SMS_RCIV_AGRE_YN_2" class="form-check-label"><span class="radio"></span>아니요</label></div></div>
            </div>
          </div>
        </div>
        <div class="cont-box-inner">
          <div class="title">
            <h3 class="h4">개인정보</h3>
            <p class="highlight org-txt">* 필수입력사항</p>
          </div>
          <div class="tbl grid-layout grid2">
            <div class="grid-item colspan2">
              <label for="ENPR_NM">기업명<em class="org-txt asterisk" title="필수">*</em></label>
              <div class="tbl-basic-td">
                <div class="input-wrap">
                  <input class="grid-input" type="text" role="textbox" id="ENPR_NM" name="ENPR_NM" maxlength="50" title="기업명 입력" disabled="">
                  <input class="grid-input" type="hidden" role="textbox" id="ENPR_SEQ" name="ENPR_SEQ" maxlength="50" title="기업명 입력">
                </div>
                <button type="button" class="btn btn-light" onclick="fnEnpr(this);"><i class="las la-search"></i>등록기업찾기</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>  
  <div class="btn-area">
    <button class="btn btn-outline-primary btn-large" type="button" onclick="location.href='JoinsStep4.html'">등록하기</button>
  </div>
</div>
<!-- // contents -->

      <!-- Footer -->
      <div class="footer">
  <nav class="fnb d-flex">
      <div class="container">
          <ul>
               <li class="on"><strong><a href="#">개인정보처리방침</a></strong></li>
              <li><a href="#">이용약관</a></li>
          </ul>
      </div>
  </nav>  
  <div class="addr d-flex">
      <div class="container">
          <div class="logo-wrap">
             <div class="logo"><a href="/"><img src="images/f-logo.png" alt="온라인 고물상"></a></div>
          </div>
          <span>서울특별시 강남구 삼성로111길
              ⓒ TEAM Devel-Up. All Rights Reserved.</span>
            <span><em class="blk">대표전화</em> : 02-000-0000</span>
            <span><em class="blk">FAX</em> : 02-000-0000</span>
          <div id="GoTop" class="gotop">
              <button type="button" class="btn" onclick="$(window).scrollTop(0);"><span class="visually-hidden">맨위로 가기</span><span><i class="las la-arrow-up"></i></span></button>
          </div>
      </div>
  </div>   
</div>
      <!-- //Footer -->
 
  
</body>
</html>