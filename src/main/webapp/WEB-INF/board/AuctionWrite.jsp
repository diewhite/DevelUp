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
                  <span class="dep2_tit" ><a href="#" >나눔</a></span>
                  <ul class="dep2_link">
                    <li><a href="#" onclick="location.href='404.html'">나눔상품</a></li>
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
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit" ><span onclick="pageMove(this, true)">나눔</span></a>
                    <ul class="sitemap_depth3 dot_list">
                     <li ><a href="#" >나눔</a></li>
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
                <h1>경매등록</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
       <div class="container">
    <form id="saveForm" name="saveForm">
      <input type="hidden" value="">
      <input type="hidden">
      <div class="cont-box-inner">
        
        <div class="tbl grid-layout grid2">
          <div class="grid-item colspan2">
            <label for="select_target_1">게시판 선택</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w20">
                <select class="form-select grid-input"title="게시판">
                 <option value="01">중고상품</option>
                 <option value="02">새상품</option>
                </select>
              </div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="select_target_1">상태</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w20">
                <select class="form-select grid-input"title="상태">
                 <option value="01">판매중</option>
                 <option value="02">판매완료</option>
                </select>
              </div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR">제목</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <input class="grid-input" type="text"  maxlength="50" title="타이틀">
              </div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR">금액</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w30 me-4">
                <input class="grid-input" type="text"  maxlength="50" title="금액"> 
              </div>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" value=" ">
                <label class="form-check-label"><span class="radio"></span>나눔</label>
              </div>
            </div>
          </div>
         
        
          <div class="grid-item colspan2">
            <label for="HOFS_INTR_MTRL_CNTS">내용</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <textarea class="grid-input" role="textbox" id="HOFS_INTR_MTRL_CNTS" name="HOFS_INTR_MTRL_CNTS" title="본사 소개자료내용 입력" maxlength="500" rows="5"></textarea>
              </div>
            </div>
          </div>
        
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR">첨부파일</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                  <input type="file" class="form-control" id="customFile" />
              </div>
            </div>
          </div>
        
        </div>
      </div>
    </form>
  </div><div class="btn-area">
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='board.html'">글쓰기</button>
      </div>
    </div>
<!-- // content -->

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
 <!-- modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="Modal" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-body">
            <div class="modal-tit">
                <h2 class="h3">쪽지</h2>
            </div>
            <div class="modal-con">
                <div class="tbl grid-layout grid1">
                    <div class="grid-item">
                    <label for="IUY_CLSS_NM">수신자</label>
                    <div class="tbl-basic-td">
                        <div class="input-wrap w100">
                            <span id="IUY_CLSS_NM">닉네임</span>
                        </div>
                    </div>
                    </div>
                    <div class="grid-item">
                        <label for="IUY_CLSS_CNTS">내용적기</label>
                        <div class="tbl-basic-td">
                        <div class="input-wrap w100">
                            <div class="input-wrap w100">
                            <textarea class="grid-input" role="textbox" id="HOFS_INTR_MTRL_CNTS" name="HOFS_INTR_MTRL_CNTS" title="쪽지내용 입력" maxlength="500" rows="5"></textarea>
                          </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn-area">
              <button type="button" class="btn btn-outline-primary"  data-bs-dismiss="modal" aria-label="Close">전송</button>
            </div>
            <!-- 닫기버튼 -->
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                <i class="las la-times"></i>
            </button>
            <!-- //닫기버튼 -->
        </div>
    </div>
    </div>
</div>
<!-- //modal -->

</body>
</html>