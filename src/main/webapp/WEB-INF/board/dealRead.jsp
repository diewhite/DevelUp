<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<!DOCTYPE html>
<html lang="ko">
<head>
  <!-- meta -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,user-scalable=yes">
  <link rel="icon" type="image/x-icon" href="images/favicon.ico">
  
<!-- Bootstrap-->
<link type="text/css" rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="css/bootstrap-icons/font/bootstrap-icons.css">
<link type="text/css" rel="stylesheet" href="css/line-awesome.min.css">
<!-- common -->
<link type="text/css" rel="stylesheet" href="css/font.css">
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/cmpt.css">
<link type="text/css" rel="stylesheet" href="css/layout.css">
<link type="text/css" rel="stylesheet" href="css/sub.css">

<!--jquery -->
<script src="js/jquery/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
<!-- common -->
<script src="js/common.js"></script>

<title>온고-온라인 고물상</title>
</head>
<body>

<!-- header -->
<div id="header">

  <!-- top menu -->
  <div class="top_menu">
    <div class="container d-flex flex-row justify-content-between">
      <ul class="top_menu_left">
        <li> TEAM Devel-Up(김규민,김윤희,김태원,박소정,손성민,최경민)</li>
      </ul>
      <ul class="top_menu_right justify-content-end">
          
            <li><a href="#" onclick="location.href='login.html'"><i class="las la-unlock" ></i> 로그인</a></li>
            <li><a href="#" onclick="location.href='JoinsStep1.html'"><i class="las la-user"></i> 일반 회원가입</a></li>

          <li>
          <!-- 정렬 맞추기 위함 -->
          <button type="button" class="banner_close d-none"><i class="las la-angle-up"></i></button>
        </li>
      </ul>
    </div>
  </div>
  <!--// top menu -->

  <div class="head">
    <div class="container d-flex flex-row justify-content-between">
      <!--logo-wrap-->
      <div class="logo-wrap" >
        <h1 class="logo"><a href="index.html" ><img src="images/logo.png" alt="온라인 고물상"></a>
        </h1>
      </div>
      <!--// logo-wrap-->

      <!--nav-->
      <div id="gnb" class="d-flex justify-content-center">
        <ul class="dep1">
        
          <li>
            <a id="miTitle" href="#" onmouseover="menuover(this);" onclick="location.href='Auction.html'"><span>경매</span></a>
            <div class="dep2_wrap ">
              <div class="dep2_left">
                <span>경매</span>
              </div>
              <div class="dep2_right" onmouseleave="menuout();">
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" >중고</a></span>
                  <ul class="dep2_link">
                    <li ><a href="#" onclick="location.href='Auction.html'">중고상품</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit"><a href="#">일반</a></span>
                  <ul class="dep2_link">
                    <li ><a href="#" onclick="location.href='404.html'">새상품</a></li>
                  </ul>
                </div>
            </div>
          </li>

          <li>
            <a id="siTitle" href="#" onmouseover="menuover(this);" onclick="location.href='board.html'"><span >거래</span></a>
            <div class="dep2_wrap">
              <div class="dep2_left">
                <span>거래</span>
              </div>
              <div class="dep2_right" onmouseleave="menuout();">
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" >중고</a></span>
                  <ul class="dep2_link">
                    <li><a href="#" onclick="location.href='prepare.html'">중고상품</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" >거래</a></span>
                  <ul class="dep2_link">
                    <li><a href="#" onclick="location.href='404.html'">새상품</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" onclick="location.href='mypage.html'">업체리스트</a></span>
                  <ul class="dep2_link">
                    <li ><a href="#" onclick="location.href='companylist.html'">업체리스트</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </li>
       
          <li>
            <a id="siTitle" href="#" onmouseover="menuover(this);" onclick="location.href='mypage.html'"><span >나의온고</span></a>
            <div class="dep2_wrap">
              <div class="dep2_left">
                <span>나의온고</span>
              </div>
              <div class="dep2_right" onmouseleave="menuout();">
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#none" >거래조회</a></span>
                  <ul class="dep2_link">
                    <li><a href="#none" onclick="location.href='prepare.html'">거래조회</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" >구매내역</a></span>
                  <ul class="dep2_link">
                    <li><a href="#" onclick="location.href='prepare.html'">구매내역</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" >나의정보</a></span>
                  <ul class="dep2_link">
                    <li><a href="#none" onclick="location.href='404.html'">정보수정</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" >쪽지함</a></span>
                  <ul class="dep2_link">
                    <li><a href="#" onclick="location.href='prepare.html'">쪽지함</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </li>

          <li>
            <a id="siTitle" href="#" onmouseover="menuover(this);" onclick="location.href='prepare.html'"><span >관리자</span></a>
            <div class="dep2_wrap">
              <div class="dep2_left">
                <span>관리자메뉴</span>
              </div>
              <div class="dep2_right" onmouseleave="menuout();">
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" onclick="location.href='prepare.html'">업체현황</a></span>
                  <ul class="dep2_link">
                    <li ><a href="#" >업체현황목록</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" onclick="location.href='prepare.html'">고객현황</a></span>
                  <ul class="dep2_link">
                    <li><a href="#" >고객현황목록</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" onclick="location.href='prepare.html'">배달현황</a></span>
                  <ul class="dep2_link">
                    <li><a href="#" >배달현황</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" onclick="location.href='prepare.html'">거래현황</a></span>
                  <ul class="dep2_link">
                    <li><a href="#" >거래현황</a></li>
                    <li><a href="#">경매현황</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </li>

       
        </ul>
      </div>
      <div class="util d-flex justify-content-end">
        <button type="button" class="sitemap" data-bs-toggle="modal" data-bs-target="#sitemapModal">
          <span class="visually-hidden">사이트맵 바로가기</span>
          <span></span>
          <span></span>
          <span></span>
        </button>
      </div>
      <!--//nav-->
    </div>
    <!-- nav Modal -->
    <div class="modal fade" id="sitemapModal" >
      <div class="modal-dialog modal-fullscreen">
        <div class="modal-content">
          <div class="modal-body">
            <div class="head">
              <div class="container d-flex flex-row justify-content-between">
                <!--logo-wrap-->
                <div class="logo-wrap">
                  <h1 class="logo"><a href="#"><img src="images/logo.png" alt="온라인 고물상"></a></h1>
                </div>
                <!--// logo-wrap-->
              </div>
            </div>
            <div class="sitemap_cont container">
              
              <div class="sitemap_li d-flex">
                <h2>경매</h2>
                <div class="sitemap_depth2_wrap">
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit" ><span onclick="pageMove(this, true)">중고</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="#" >중고상품</a></li>
                    </ul>
                  </div>
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit" ><span onclick="pageMove(this, true)">일반</span></a>
                    <ul class="sitemap_depth3 dot_list">
                     <li ><a href="#" >새상품</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="sitemap_li d-flex">
                <h2>거래</h2>
                <div class="sitemap_depth2_wrap">
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit" ><span onclick="pageMove(this, true)">중고</span></a>
                    <ul class="sitemap_depth3 dot_list">
                     <li ><a href="#" >중고상품</a></li>
                    </ul>
                  </div>
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit" ><span onclick="pageMove(this, true)">일반</span></a>
                    <ul class="sitemap_depth3 dot_list">
                     <li ><a href="#" >새상품</a></li>
                    </ul>
                  </div>
                </div>
              </div>
             <div class="sitemap_li d-flex">
                <h2>나의온고</h2>
                <div class="sitemap_depth2_wrap">
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">거래조회</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="#" >거래조회</a></li>
                    </ul>
                  </div>
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">구매내역</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="#" >구매내역</a></li>
                    </ul>
                  </div>
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">정보수정</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="#" >정보수정</a></li>
                    </ul>
                  </div>
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">쪽지함</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="#" >쪽지함</a></li>
                    </ul>
                  </div>
                </div>
              </div>
                <div class="sitemap_li d-flex">
                <h2>관리자</h2>
                <div class="sitemap_depth2_wrap">
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">업체현황목록</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="#" >업체현황목록</a></li>
                    </ul>
                  </div>
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">고객현황목록</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="#" >고객현황목록</a></li>
                    </ul>
                  </div>
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">배달현황</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="#" >배달현황</a></li>
                    </ul>
                  </div>
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">거래현황</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="#" >거래현황</a></li>
                      <li ><a href="#" >경매현황</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
              <i class="las la-times"></i>
            </button>
          </div>
        </div>
      </div>
    </div>  <!-- // nav Modal -->
  </div>
</div>
<!-- // header -->

<!-- LNB -->
<div class="lnb_wrap">
  <div class="container">
      <div class="lnb_item" >
          <a href="index.html" class="home"><span class="visually-hidden">홈으로 가기</span><i class="las la-home"></i></a>
      </div>
        <div class="lnb_item">
            <div class="dropdown">
                      <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenu3" data-bs-toggle="dropdown" >
                          대메뉴
                      </a>
                      <ul class="dropdown-menu" aria-labelledby="dropdownMenu3">
                          <li><a class="dropdown-item" href="#">소메뉴</a></li>
                          <li><a class="dropdown-item" href="#">소메뉴</a></li>
                          <li><a class="dropdown-item" href="#">소메뉴</a></li>
                      </ul>
            </div>
          </div>
        <div class="lnb_item">
            <div class="dropdown">
                      <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenu3" data-bs-toggle="dropdown" >
                          대메뉴
                      </a>
                      <ul class="dropdown-menu" aria-labelledby="dropdownMenu3">
                          <li><a class="dropdown-item" href="#">소메뉴</a></li>
                          <li><a class="dropdown-item" href="#">소메뉴</a></li>
                          <li><a class="dropdown-item" href="#">소메뉴</a></li>
                      </ul>
            </div>
          </div>
        
    
  </div>
</div>
<!-- //LNB-->
<!-- content -->
<div id="contents">
        <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h1>중고거래</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- container -->
        <div class="container">
    <form id="ef610102">
      <!-- 현재 탭 표시 -->
      <h2 class="visually-hidden">중고거래</h2>
      <!-- //현재 탭 표시 -->

      <div class="board_view">
        <div class="board">
          <div class="board_view_head">
            <h3 class="board_view_tit" title="제목">타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀</h3>
            <dl>
              <dt>작성일</dt>
              <dd id="FRST_REGT_DTM" name="FRST_REGT_DTM">2022-11-15</dd>
              <dt>조회</dt>
              <dd id="INQR_NUM" name="INQR_NUM">191</dd>
            </dl>
          </div>
          <div class="board_view_file">
            <div class="file_left">판매상태</div>
            <ul class="file_list">
              <li >판매중</li>
            </ul>
          </div>
          <div class="board_view_file">
            <div class="file_left">판매가격</div>
            <ul class="file_list d-flex align-items-center">
              <li class="me-4"><sapn>1,0333300</sapn>원</li>
              <li>
                <div class="form-check">
                <input type="checkbox" name="remember" id="remember" class="form-check-input">
                <label for="remember" class="form-check-label"><span class="checkbox"></span>나눔</label>
              </div></li>
            </ul>
          </div>
          </div>
          <div class="board_view_cont">
            <img  src="https://i.imgur.com/oLXMXVW.jpg">
            <p >내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음
              내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음내용들어가
              내용들어가고있음내용들어가고있음내용들어가고있음고있음내용들어가고있음내용들어가고있음</p>

          </div>
          <nav class="board_view_bottom">
            <div class="board_pager prev">
              <span class="board_pager_left"><i class="las la-angle-up"></i>이전글</span>
              <span class="board_pager_center"><a href="#" title="이전글로 이동" id="PREV_SUBJECT" name="PREV_SUBJECT">참고사항</a></span>
              <span class="board_pager_right" id="PREV_DATE" name="PREV_DATE">2022-11-09</span>
            </div>

            <div class="board_pager next empty">
              <span class="board_pager_left"><i class="las la-angle-down"></i>다음글</span>
              <span class="board_pager_center"><a href="#" title="다음글로 이동" id="NEXT_SUBJECT" name="NEXT_SUBJECT">다음글이 없습니다.</a></span>
              <span class="board_pager_right" id="NEXT_DATE" name="NEXT_DATE">2022-11-16</span>
            </div>
          </nav>
        </div>
      </div>
      <div class="btn-area flex-row">
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='deal.html'">목록</button>
        <button class="btn btn-success btn-large text-white" type="button" onclick="location.href='board.html'">수정</button>
        <button class="btn btn-danger  btn-large" type="button" onclick="location.href='board.html'">삭제</button>
      </div>
    </form>
  </div>
        <!-- // container-->
    </div><!-- // contents -->

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