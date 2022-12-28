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
            <h1>중고거래</h1>
        </div>
    </div>
    <!-- //title -->

    <!-- 게시판 -->
    <div class="container">
        <form id="searchForm" name="searchForm" onsubmit="return false;">
            <input type="hidden" name="countPerPage" id="countPerPage" value="10">
            <input type="hidden" name="zon" id="zon" value="">
            <input type="hidden" name="dstr" id="dstr" value="">
            <div class="board_list allow">
                <div class="form_box filter">
                   <fieldset>
                    <legend class="visually-hidden">검색</legend>
                    <div class="input-group">
                      <div class="select">
                        <i class="las la-list-alt"></i>
                        <label class="visually-hidden" for="DSTR_SEQ">마감임박순</label>
                        <select class="form-select" name="DSTR_SEQ" id="DSTR_SEQ" title="마감임박순">
                          <option value="">전체</option>
                            <option value=" ">조회많은순</option>
                            <option value=" ">조회적은순</option>
                        </select>
                      </div>
                      <input type="text" class="form-control" name="SRCH_WORD" id="SRCH_WORD" title="검색어 입력" placeholder="검색어 입력하세요.">
                      <button type="button" class="btn btn-search" onclick="javascript:fnSearch();"><i class="las la-search"></i> 검색</button>
                    </div>
                  </fieldset>
                </div>
                
          <div class="board_list">
            <div class="board_info d-flex">
                <div class="total">전체 <strong class="blue" id="totalCount">6</strong>건 (페이지 <strong class="blue" id="nowPage">1</strong>/<span id="totalPage">1</span>)</div>
                <div class="d-grid d-md-flex justify-content-md-end">
                   <div class="select">
                      <select class="form-select" title="50개 보기">
                        <option value="">30개 보기</option>
                        <option value=" " selected>50개 보기</option>
                        <option value=" ">100개 보기</option>
                        <option value=" ">150개 보기</option>
                      </select>
                  </div>
                </div>
            </div>
            <div >
                <div class="row g-4">
                  <div class="col-lg-3 col-md-4"><!--col -->
                      <div class="deal-card">
                        <span class="deal-label">판매완료</span>
                        <div class="deal-img-main ">
                          <ul>
                            <li >
                              <a href="#" onclick="location.href='dealRead.html'"><img id="deal-image" src="https://i.imgur.com/oLXMXVW.jpg" ></li></a> 
                          </ul>
                        </div>
                        <div class="mt-3">
                          <ul class="company_list">
                            <li><strong>판매상품</strong><span>선글라스</span></li>
                          </ul>
                        </div>
                        <div class="cart-button mt-3 px-2 text-center">
                          <button class="btn btn-outline-secondary ">쪽지보내기</button>
                        </div>
                      </div><!-- // deal-card -->
                  </div><!-- // col -->
                   <div class="col-lg-3 col-md-4"><!--col -->
                      <div class="deal-card">
                         <span class="deal-label2">나눔</span>
                        <div class="deal-img-main ">
                          <ul>
                            <li >
                              <a href="#" onclick="location.href='dealRead.html'"><img id="deal-image" src="https://mdbcdn.b-cdn.net/img/new/standard/city/042.webp" ></li></a> 
                          </ul>
                        </div>
                        <div class="mt-3">
                          <ul class="company_list">
                            <li><strong>판매상품</strong><span>선글라스</span></li>
                          </ul>
                        </div>
                        <div class="cart-button mt-3 px-2 text-center">
                          <button class="btn btn-outline-secondary ">쪽지보내기</button>
                        </div>
                      </div><!-- // deal-card -->
                  </div><!-- // col -->

                  <div class="col-lg-3 col-md-4"><!--col -->
                      <div class="deal-card">
                         <span class="deal-label2">나눔</span>
                        <div class="deal-img-main ">
                          <ul>
                            <li >
                              <a href="#" onclick="location.href='dealRead.html'"><img id="deal-image" src="https://mdbcdn.b-cdn.net/img/new/standard/city/042.webp" ></li></a> 
                          </ul>
                        </div>
                        <div class="mt-3">
                          <ul class="company_list">
                            <li><strong>판매상품</strong><span>선글라스</span></li>
                          </ul>
                        </div>
                        <div class="cart-button mt-3 px-2 text-center">
                          <button class="btn btn-outline-secondary ">쪽지보내기</button>
                        </div>
                      </div><!-- // deal-card -->
                  </div><!-- // col -->

                  <div class="col-lg-3 col-md-4"><!--col -->
                      <div class="deal-card">
                         <span class="deal-label2">나눔</span>
                        <div class="deal-img-main ">
                          <ul>
                            <li >
                              <a href="#" onclick="location.href='dealRead.html'"><img id="deal-image" src="https://mdbcdn.b-cdn.net/img/new/standard/city/042.webp" ></li></a> 
                          </ul>
                        </div>
                        <div class="mt-3">
                          <ul class="company_list">
                            <li><strong>판매상품</strong><span>선글라스</span></li>
                          </ul>
                        </div>
                        <div class="cart-button mt-3 px-2 text-center">
                          <button class="btn btn-outline-secondary ">쪽지보내기</button>
                        </div>
                      </div><!-- // deal-card -->
                  </div><!-- // col -->

                   <div class="col-lg-3 col-md-4"><!--col -->
                      <div class="deal-card">
                        <div class="deal-img-main ">
                          <ul>
                            <li >
                              <a href="#"><img id="deal-image" src="https://mdbcdn.b-cdn.net/img/new/standard/city/043.webp" ></li></a> 
                          </ul>
                        </div>
                        <div class="mt-3">
                          <ul class="company_list">
                            <li><strong>판매상품</strong><span>선글라스</span></li>
                          </ul>
                        </div>
                        <div class="cart-button mt-3 px-2 text-center">
                          <button class="btn btn-outline-secondary ">쪽지보내기</button>
                        </div>
                      </div><!-- // deal-card -->
                  </div><!-- // col -->


                </div><!-- //row-->

                <div class="text-right">
                    <button type="button" class="btn btn-primary btn-large" onclick="location.href='dealWrite.html'">글쓰기</button>
                </div>
                <!-- 페이지네이션 -->
                <nav aria-label="Page navigation" id="pageNav">
                    <ul class="pagination">
                      <input type="hidden" id="PAGE" name="PAGE" value="1">
                      <input type="hidden" id="CNT_PER_PAGE" name="CNT_PER_PAGE" value="10">
                      <input type="hidden" id="START_INDEX" name="START_INDEX" value="">
                      <input type="hidden" id="END_INDEX" name="END_INDEX" value="">
                      <li class="page-item arr"><a class="page-link" href="javascript:fnMovePage(1, fnSearch, 'pagination');" aria-label="Previous">
                         <span class="visually-hidden">처음으로</span><span aria-hidden="true"><i class="las la-angle-double-left"></i></span></a>
                      </li>
                      <li class="page-item active"><a class="page-link" href="javascript:fnMovePage(1, fnSearch, 'pagination');">1</a></li>
                      <li class="page-item"><a class="page-link" href="javascript:fnMovePage(2, fnSearch, 'pagination');">2</a></li>
                      <li class="page-item"><a class="page-link" href="javascript:fnMovePage(3, fnSearch, 'pagination');">3</a></li>
                      <li class="page-item arr"><a class="page-link" href="javascript:fnMovePage(11, fnSearch, 'pagination');" aria-label="Next">
                        <span class="visually-hidden">마지막으로</span><span aria-hidden="true"><i class="las la-angle-right"></i></span></a>
                      </li>
                      <li class="page-item arr"><a class="page-link" href="javascript:fnMovePage(552, fnSearch, 'pagination');" aria-label="NextEnd">
                        <span class="visually-hidden">다음으로</span><span aria-hidden="true"><i class="las la-angle-double-right"></i></span></a>
                      </li>
                    </ul>
                </nav>
                <!-- //페이지네이션 -->
            </div>
            </div>
        </form>
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
 
  
</body>
</html>