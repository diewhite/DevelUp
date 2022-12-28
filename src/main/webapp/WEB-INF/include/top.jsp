<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head></head>
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
          
            <li><a href="/ongo/emp/login.do"><i class="las la-unlock"></i> 로그인</a></li>
            <li><a href="/ongo/emp/join1.do"><i class="las la-user"></i>회원가입</a></li>

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
        <h1 class="logo"><a href="/ongo/index.do" ><img src="/ongo/images/logo.png" alt="온라인 고물상"></a>
        </h1>
      </div>
      <!--// logo-wrap-->

      <!--nav-->
      <div id="gnb" class="d-flex justify-content-center">
        <ul class="dep1">
        
          <li>
          
             <a id="siTitle" href="/ongo/board/Auction.do" onmouseover="menuover(this);" ><span >경매</span></a>
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
            <a id="siTitle" href="#" onmouseover="menuover(this);" onclick="location.href='deal.html'"><span >거래</span></a>
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
                  <span class="dep2_tit" ><a href="#" >업체리스트</a></span>
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
                    <li><a href="#none" onclick="location.href='board.html'">거래조회</a></li>
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
            <a id="siTitle" href="emp/empserviceboard" onmouseover="menuover(this);"><span >관리자</span></a>
            <div class="dep2_wrap">
              <div class="dep2_left">
                <span>관리자메뉴</span>
              </div>
              <div class="dep2_right" onmouseleave="menuout();">
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#">서비스관리</a></span>
                  <ul class="dep2_link">
                    <li ><a href="emp/empserviceboard">서비스관리</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#">계정관리</a></span>
                  <ul class="dep2_link">
                    <li><a href="#" onclick="location.href='prepare.html'">계정관리</a></li>
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
                  <h1 class="logo"><a href="#"><img src="/ongo/images/logo.png" alt="온라인 고물상"></a></h1>
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
                    <a href="emp/empserviceboard" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">서비스관리</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="emp/empserviceboard" >서비스관리</a></li>
                    </ul>
                  </div>
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">계정관리</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="#" >계정관리</a></li>
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



</body>
</html>