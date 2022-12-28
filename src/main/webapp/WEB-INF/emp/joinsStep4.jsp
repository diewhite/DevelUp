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
              <p class="text-center"><img src="images/joinsuccess.png" alt=""></p>
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