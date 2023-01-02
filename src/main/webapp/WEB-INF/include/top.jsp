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
 
			
            <li><a href="/ongo/member/login.do"><i class="las la-unlock"></i> 로그인</a></li>
              <li><a href="/ongo/member/logout"><i class="las la-unlock"></i>로그아웃</a></li>
            <li><a href="/ongo/member/join1.do"><i class="las la-user"></i>회원가입</a></li>

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
            <a id="siTitle" href="/ongo/deal_listAll.do" onmouseover="menuover(this);" ><span >거래</span></a>
            <!-- onclick="location.href='deal.html'" -->
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
           <!--  원본 <a id="siTitle" href="#" onmouseover="menuover(this);" onclick="location.href='mypage.html'"><span >나의온고</span></a> -->
           <!-- test1 view-config = /myongopage  href="/myongopage" -->
           <!-- test2 view-config = /myongopage  href="/ongo/myongopage" --> 
            <a id="siTitle" href="/ongo/history/myongopage" onmouseover="menuover(this);"><span >나의온고</span></a>
            <div class="dep2_wrap">
              <div class="dep2_left">
                <span>나의온고</span>
              </div>
              <div class="dep2_right" onmouseleave="menuout();">
              
             <!-- 수정할부분 -->
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#">거래내역</a></span>
                  <ul class="dep2_link">
                    <li><a href="#">거래현황 </a></li>
                  </ul>
                   <ul class="dep2_link">
                    <li><a href="/ongo/history/historylist">경매내역</a></li>
                  </ul>
                   <ul class="dep2_link">
                    <li><a href="/ongo/history/historylist">중고거래내역</a></li>
                  </ul>                 
              
        
                </div>
                
              <!-- 원본 
                 <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="/ongo/history/historylist">거래내역</a></span>
                  <ul class="dep2_link">
                    <li><a href="#none" onclick="location.href='board.html'">거래현황</a></li>
                  </ul>
                </div> -->
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" >결제내역</a></span>
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
                    <li><a href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#exampleModal">쪽지보내기</a></li>
                    <li><a href="#" onclick="location.href='/ongo/mypage/note/receivebox?id=Yeona1231'">받은쪽지함</a></li>
                    <li><a href="#" onclick="location.href='/ongo/mypage/note/sendbox?id=Yeona1231'">보낸쪽지함</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </li>

          <li>
            <a id="siTitle" href="/ongo/member/memberboard.do" onmouseover="menuover(this);"><span >관리자</span></a>
            <div class="dep2_wrap">
              <div class="dep2_left">
                <span>관리자메뉴</span>
              </div>
              <div class="dep2_right" onmouseleave="menuout();">
               <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#">계정관리</a></span>
                  <ul class="dep2_link">
                    <li><a href="/ongo/member/memberboard.do">계정관리</a></li>
                  </ul>
                </div>
                
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#">서비스관리</a></span>
                  <ul class="dep2_link">
                    <li ><a href="/ongo/member/memberserviceboard.do">서비스관리</a></li>
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
                      <li ><a href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#exampleModal">쪽지보내기</a></li>
                      <li ><a href="/ongo/mypage/note/receivebox?id=Yeona1231" >받은쪽지함</a></li>
                      <li ><a href="/ongo/mypage/note/sendbox?id=Yeona1231" >보낸쪽지함</a></li>
                    </ul>
                  </div>
                </div>
              </div>
                <div class="sitemap_li d-flex">
                <h2>관리자</h2>
                <div class="sitemap_depth2_wrap">
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="/ongo/member/memberboard.do">계정관리</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="#" >계정관리</a></li>
                    </ul>
                  </div>
                  <!-- 
                  <div class="sitemap_depth2">
                    <a href="/ongo/member/memberserviceboard.do" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">서비스관리</span></a>
                    <ul class="sitemap_depth3 dot_list">
                      <li ><a href="/ongo/member/memberserviceboard.do" >서비스관리</a></li>
                    </ul>
                  </div> -->
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
<!-- modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="Modal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
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
                            <span id="IUY_CLSS_NM"><textarea class="grid-input" role="textbox" id="receive_id" name="HOFS_INTR_MTRL_CNTS" title="수신자" maxlength="500" rows="1"></textarea></span>
                        </div>
                    </div>
                    </div>
                    <div class="grid-item">
                        <label for="IUY_CLSS_CNTS">내용적기</label>
                        <div class="tbl-basic-td">
                        <div class="input-wrap w100">
                            <div class="input-wrap w100">
                            <textarea class="grid-input" role="textbox" id="send_id" name="HOFS_INTR_MTRL_CNTS" title="쪽지내용 입력" maxlength="500" rows="5"></textarea>
                          </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn-area">
              <button type="button" class="btn btn-warning text-white btn-large"  data-bs-dismiss="modal" aria-label="Close">전송</button>
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