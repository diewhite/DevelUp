<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<style type="text/css">

/*쪽지 top*/
.notenew{position: absolute; transform: scale(.7);transform-origin: top right; right: 11px; margin-top: -0.20rem; color: #fff; 
		background-color: #dc3545; display: inline-block; padding: 0.25em 0.4em;font-size:85%; font-weight: 700; line-height: 1; border-radius: 0.35rem; }
</style>
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
		<!-- 규민님 쪽지소켓 <span class="badge rounded-pill bg-primary" id="unreadCheck"></span> -->
			<!-- c 콜론 이게 jstl 상단에 태그 달아줄것-->
			<c:choose>
			 <c:when test="${user==null}">
          	  <li><a href="/ongo/member/login.do"><i class="las la-unlock"></i> 로그인</a></li>
          	  <li><a href="/ongo/member/join1.do"><i class="las la-user"></i>회원가입</a></li>
          	 </c:when>
          	 <c:otherwise>
          	  <li><i class="las la-envelope"></i><span id="unreadCheck" class="notenew" hidden="hidden"></span></li>
          	  <li><i class="las la-user"></i><b>${user.member_name}</b>&nbsp;님</li>
              <li><a href="/ongo/member/logout.do">로그아웃</a></li>
             </c:otherwise>
            </c:choose>  
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
           <a id="siTitle" href="/ongo/auction/auctionBoard?auction_category=all" onmouseover="menuover(this);" ><span >경매</span></a>
          </li>

          <li>
            <a id="siTitle" href="/ongo/deal_listAll3.do?dealType=all" onmouseover="menuover(this);" ><span >중고거래</span></a>
            <!-- onclick="location.href='deal.html'" -->
            <div class="dep2_wrap">
              <div class="dep2_left">
                <span>중고거래</span>
              </div>
              <div class="dep2_right" onmouseleave="menuout();">
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" >중고</a></span>
                  <ul class="dep2_link">
                    <li><a href="#" onclick="location.href='/ongo/deal_listAll3.do?dealType=중고'">중고</a></li>
                    <li><a href="#" onclick="location.href='/ongo/deal_listAll3.do?dealType=나눔'">나눔</a></li>
                  </ul>
                </div>
                
              </div>
            </div>
          </li>
        <li>
   <a id="siTitle" href="/ongo/cooperation/list" ><span >협력업체</span></a>
          </li>
  <c:if test="${sessionScope.user!=null }">  
    <c:if test="${sessionScope.user.member_role=='1' }">  
          <li>
            <a id="siTitle" href="/ongo/history/myongo" onmouseover="menuover(this);"><span >나의온고</span></a>
            <div class="dep2_wrap">
              <div class="dep2_left">
                <span>나의온고</span>
              </div>
              <div class="dep2_right" onmouseleave="menuout();">
              
             <!-- 수정할부분 -->
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#">경매관리</a></span>
                  <ul class="dep2_link">
                    <li><a href="/ongo/detail/auctionsellList?member_id=${user.member_id}&auction_state=all">판매관리</a></li>
                    <li><a href="#">구매관리</a></li>
                  </ul>                 
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#">중고거래관리</a></span>
                  <ul class="dep2_link">
                    <li><a href="/ongo/history/dealsellList?member_id=${user.member_id}&product_state=all">판매관리</a></li>
                    <li><a href="/ongo/history/dealbuyList?member_id=${user.member_id}&product_state=all">구매관리</a></li> 
                  </ul>
                </div>
                 <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="/ongo/payment/paymentlist">결제내역</a></span>
                  <ul class="dep2_link">
                    <li><a href="/ongo/payment/paymentlist">결제내역조회</a></li>
                     <li ><a href="/ongo/payment2/PayParticulars" >결제내역상세</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="/ongo/member/usermypage" >마이페이지</a></span>
                  <ul class="dep2_link">
                    <li>
                    <a href="/ongo/member/usermypage?user_id=${user.member_id}">정보수정</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" >쪽지함</a></span>
                  <ul class="dep2_link">
                    <li><a href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#exampleModal">쪽지보내기</a></li>
                    <li><a href="#" onclick="location.href='/ongo/mypage/note/receivebox?id=${user.member_id}'">받은쪽지함</a></li>
                    <li><a href="#" onclick="location.href='/ongo/mypage/note/sendbox?id=${user.member_id}'">보낸쪽지함</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </li>
    <li>
    </c:if>
    <c:if test="${sessionScope.user.member_role=='2' }">  
          <li>
            <a id="siTitle" href="#" onmouseover="menuover(this);"><span >나의온고</span></a>
            <div class="dep2_wrap">
              <div class="dep2_left">
                <span>나의온고</span>
              </div>
              <div class="dep2_right" onmouseleave="menuout();">
              
             <!-- 수정할부분 -->
				<div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" >거래요청목록</a></span>
                  <ul class="dep2_link">
                    <li>
                    <a href="/ongo/recycle/list?receive_id=${user.member_id}">거래요청목록</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" >마이페이지</a></span>
                  <ul class="dep2_link">
                    <li>
                    <a href="/ongo/member/usermypage?user_id=${user.member_id}">정보수정</a></li>
                  </ul>
                </div>
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#" >쪽지함</a></span>
                  <ul class="dep2_link">
                    <li><a href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#exampleModal">쪽지보내기</a></li>
                    <li><a href="#" onclick="location.href='/ongo/mypage/note/receivebox?id=${user.member_id}'">받은쪽지함</a></li>
                    <li><a href="#" onclick="location.href='/ongo/mypage/note/sendbox?id=${user.member_id}'">보낸쪽지함</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </li>
    <li>
    </c:if>

<c:if test="${sessionScope.user.member_role=='99'  }">
  <li>
            <a id="siTitle" href="/ongo/member/memberboard.do" onmouseover="menuover(this);"><span >관리자</span></a>
            <div class="dep2_wrap">
              <div class="dep2_left">
                <span>관리자메뉴</span>
              </div>
              <div class="dep2_right" onmouseleave="menuout();">
               <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#">회원관리</a></span>
                  <ul class="dep2_link">
                    <li><a href="/ongo/member/memberboard.do">회원목록</a></li>
                  </ul>
                </div>
                <!-- 
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#">게시판관리</a></span>
                  <ul class="dep2_link">
                    <li ><a href="/ongo/member/memberserviceboard.do">게시물통합관리</a></li>
                  </ul>
                </div> -->
                <div class="dep2_right_li">
                  <span class="dep2_tit" ><a href="#">쪽지함</a></span>
                  <ul class="dep2_link">
                    <li ><a href="/ongo/mypage/note/sendbox?id=${user.member_id}">보낸쪽지함</a></li>
                  </ul>
                </div>
              </div>
            </div>
 </c:if>
 </c:if>
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
                    <a href="#" class="sitemap_depth2_tit" ><span onclick="pageMove(this, true)">경매</span></a>
                   
                  </div>
             
                </div>
              </div>
              <div class="sitemap_li d-flex">
                <h2>중고거래</h2>
                <div class="sitemap_depth2_wrap">
                  <div class="sitemap_depth2">
                    <a href="/ongo/deal_listAll3.do?dealType=중고" class="sitemap_depth2_tit" ><span onclick="">중고</span></a>
                    <!-- <ul class="sitemap_depth3 dot_list">
                     <li ><a href="#" >중고상품</a></li>
                    </ul> -->
                  </div>
                  <div class="sitemap_depth2">
                    <a href="/ongo/deal_listAll3.do?dealType=나눔" class="sitemap_depth2_tit" ><span onclick="">나눔</span></a>
                    <!-- <ul class="sitemap_depth3 dot_list">
                     <li ><a href="#" >새상품</a></li>
                    </ul> -->
                  </div>
                </div>
              </div>
              <div class="sitemap_li d-flex">
                <h2>협력업체</h2>
                <div class="sitemap_depth2_wrap">
                  <div class="sitemap_depth2">
                    <a href="/ongo/cooperation/list" class="sitemap_depth2_tit" ><span>협력업체</span></a>
                  </div>
              	</div>
              </div>

  <c:if test="${sessionScope.user!=null }">  
 <!-- 세션에 저장된 member_role 값이 '1' 이면일반 유저라면 메뉴에 '마이페이지'가 생성  --> 
    <c:if test="${sessionScope.user.member_role=='1' }">    
          <div class="sitemap_li d-flex">
                <h2>나의온고</h2>
                <div class="sitemap_depth2_wrap">
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">경매관리</span></a>
                    <ul class="sitemap_depth3 dot_list">
                        <li><a href="/ongo/history/dealsellList">판매관리</a></li>
                   	 	<li><a href="#">구매관리</a></li>   
                    </ul>
                  </div>
                  
                  <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">중고거래관리</span></a>
                    <ul class="sitemap_depth3 dot_list">
	                   <li><a href="/ongo/history/dealsellList?member_id=${user.member_id}&product_state=판매중">판매관리</a></li>
	                   <li><a href="#">구매관리</a></li> 
                    </ul>
                  </div>
                 <div class="sitemap_depth2">
                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">결제내역</span></a>
                    <ul class="sitemap_depth3 dot_list">
	                    <li><a href="/ongo/payment/paymentlist">결제내역조회</a></li>
                    	<li ><a href="/ongo/payment2/PayParticulars" >결제내역상세</a></li>
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
                      <li ><a href="/ongo/mypage/note/receivebox?id=${user.member_id}" >받은쪽지함</a></li>
                      <li ><a href="/ongo/mypage/note/sendbox?id=${user.member_id}" >보낸쪽지함</a></li>
                    </ul>
                  </div>
                </div>
                </div>
</c:if>
		<c:if test="${sessionScope.user.member_role=='99'  }">
		             <div class="sitemap_li d-flex">
		                <h2>관리자</h2>
		                <div class="sitemap_depth2_wrap">
		                  <div class="sitemap_depth2">
		                    <a href="#" class="sitemap_depth2_tit"><span onclick="/ongo/member/memberboard.do">회원관리</span></a>
		                    <ul class="sitemap_depth3 dot_list">
		                      <li ><a href="#" >회원목록</a></li>
		                    </ul>
		                  </div>
		                  <!-- 
		                  <div class="sitemap_depth2">
		                    <a href="/ongo/member/memberserviceboard.do" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">게시판관리</span></a>
		                    <ul class="sitemap_depth3 dot_list">
		                      <li ><a href="/ongo/member/memberserviceboard.do" >게시물통합관리</a></li>
		                    </ul>
		                  </div> -->
		                   <div class="sitemap_depth2">
		                    <a href="#" class="sitemap_depth2_tit"><span onclick="pageMove(this, true)">쪽지함</span></a>
		                    <ul class="sitemap_depth3 dot_list">
		                      <li ><a href="/ongo/mypage/note/sendbox?id=${user.member_id}" >보낸쪽지함</a></li>
		                    </ul>
		                  </div>
		                  
		                </div>
		              </div>
		       </c:if>
   </c:if>
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
<form name="valid_form" method="post" onsubmit="return validate_user_id()">
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
                            <span><textarea class="grid-input" role="textbox" id="receive_id" name="receive_id" title="수신자" maxlength="500" rows="1" required="required"></textarea></span>
                            <input type="text" hidden="true" id="send_id" name="send_id" value="${user.member_id}">
                        </div>
                    </div>
                    </div>
                    <div class="grid-item">
                        <label for="IUY_CLSS_CNTS">내용적기</label>
                        <div class="tbl-basic-td">
                        <div class="input-wrap w100">
                            <div class="input-wrap w100">
                            <textarea class="grid-input" role="textbox" id="content" name="content" title="쪽지내용 입력" maxlength="500" rows="5" required="required"></textarea>
                          </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn-area">
              <button type="submit" class="btn btn-warning text-white btn-large"  data-bs-dismiss="modal" aria-label="Close">전송</button>
            </div>
            <!-- 닫기버튼 -->
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                <i class="las la-times"></i>
            </button>
            <!-- //닫기버튼 -->
        </div>
    </div>
    </div>
    </form>
</div>
<!-- //modal -->
<script type="text/javascript">
	var socket = "";
	var receive_id = "";
	$(document).ready(function(){
		if(${sessionScope.user!=null }){
			receive_id = {"receive_id":"${user.member_id }"}
			connect();
			unreadCheck();
		}//end if
	})//end document.ready.function
	
	function connect(){
		var ws = new WebSocket("ws://localhost:8088/ongo/myHandler");
		socket = ws;
		ws.onopen = function(){
			console.log('Info : connection opened.!');
			sendNote();
		}
		
		ws.onmessage = function (event){
			unreadCheck();
		}//end on message

		ws.onclose = function (event) {console.log('Info : connection closed.!')}
		
		ws.onerror = function (err) {console.log('Error :',err)}
	}

	function validate_user_id(){
		var valid_id = $("#receive_id").val(); 
		if(valid_id.toLowerCase()=='admin'){
			alert("관리자는 발신 전용 입니다.");
			return false;
		} else {
			document.valid_form.action="/ongo/mypage/note/sendnote";
		}
	}//end validate_user_id
	
	function sendNote(){
		socket.send("new message");
	}
	
	function unreadCheck(){
		$.ajax({
			url : "/ongo/mypage/note/ajax_checkNewNote",
			type : "get",
			data : receive_id,
			success : function(data){
				if(data>0){
					$("#unreadCheck").removeAttr("hidden");
					$("#unreadCheck").html(data);
				} else {
					$("#unreadCheck").attr("hidden", "hidden");
					$("#unreadCheck").html("");
				}
			},//end success
			error : function(obj,msg,statusMsg){
				alert("오류발생"+statusMsg);
			}//end error
		})//end ajax
	}
</script>

</body>
</html>