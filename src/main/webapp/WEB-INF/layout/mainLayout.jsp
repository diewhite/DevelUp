<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=nfflwtq6kn"></script>
<link type="text/css" rel="stylesheet" href="/ongo/common/css/main.css">
</head>
<body>
<!-- content -->
<div id="contents" class="main">
<div >
    <section class="visual section active">
      <!-- 온고소개 -->
      <div class="introduce">
        <div class="title_box">
          <h2>
            <span class="blue">보다 더 · 당신의 일상과 가깝게</span>
            <span class="h1">온라인 고물상</span>
          </h2>
          <p class="gray_tt">재활용 되지 않는 대형 쓰레기
          생활 페기물이 버려지지 않고 다시 쓰일 수 있도록, 온고의 서비스를 이용해 보세요.
          </p>
        </div>
        <ul class="nav nav-tabs" id="introTab" role="tablist">
          <li class="nav-item" role="presentation">
            <button class="nav-link active" id="intro1-tab" data-bs-toggle="tab" data-bs-target="#intro1" type="button"
              role="tab" aria-controls="intro1" aria-selected="true">협력업체</button>
          </li>
           <li class="nav-item" role="presentation">
            <button class="nav-link" id="intro_auction" data-bs-toggle="tab" data-bs-target="#intro2" type="button"
              role="tab" aria-controls="intro1" aria-selected="true">경매</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="intro2-tab" data-bs-toggle="tab" data-bs-target="#intro3" type="button"
              role="tab" aria-controls="intro2" aria-selected="false">중고거래</button>
          </li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane fade show  active" id="intro1" aria-labelledby="intro1-tab">
            <div id="intro1slider" class="carousel carousel-dark introslider" data-bs-ride="carousel"
              data-bs-interval="10000000">
              <div class="carousel-inner">
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#intro1slider" data-bs-slide="prev" onclick="markerChg()">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#intro1slider" data-bs-slide="next" onclick="markerChg()">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
            <!-- <div class="map map1">
              <ul>
                <li class="seoul"><button type="button" class="btn active">소정자원</button></li>
                <li class="daeduck"><button type="button" class="btn">태원강철</button></li>
                <li class="gyeonggi"><button type="button" class="btn ">윤희자원</button></li>
                <li class="yongin"><button type="button" class="btn">규민강철</button></li>
                <li class="busan"><button type="button" class="btn">경민강철</button></li>
                <li class="jeju"><button type="button" class="btn">성민자원</button></li>
              </ul> -->
            <div id="map" class = "map map1" style="position: absolute;">
            </div>
          </div>
          <div class="tab-pane fade" id="intro2" aria-labelledby="intro2-tab">
            <div id="intro2slider" class="carousel carousel-dark introslider" data-bs-ride="carousel"
              data-bs-interval="10000000">
              <div class="carousel-inner" id="carousel-inner_auction">
              
              
              
              
              
              
              
<!--경매  _______________________________________________________________________________________________-->
              <script type="text/javascript">
              	$(document).ready(function () {
              		$("#intro_auction").click(function () {
						/* dealType = "all"; */
						/* $(this).attr("class", "active"); //클래스속성에 active속성부여  */
					$.ajax({
						url: "/ongo/auction/mainlayout",
						type: "get",
						data:{
							/* "dealType": dealType, */
						},
						success: function(ajaxlist) {
							mydata = "";
							for (var i = 0; i < ajaxlist.length; i++) {
								// active가 안되어있어서 결과가 안나왔었음!!
							 if(i==0){
								 data = 
									
									 "<div class='carousel-item active' >"+
									 "<h3> "+
										"<a href='/ongo/auction/auctionRead?auction_no="+ ajaxlist[i].auction_number + "'class='btn btn-small'"+
					                      "title='새창'>상세보기<i class='las la-external-link-alt'></i></a>"+
					                  "</h3>"+
						                  
						                  
						                  "<h3>제목 : " + ajaxlist[i].auction_title +  "</h3>"+
						                  "<ul class='introlist'>"+
						                  "<li><span class='introlist_tit'>시작가격</span><span class='introlist_txt'>" + ajaxlist[i].start_price + "원</span></li>"+
						                  "<li><span class='introlist_tit'>현재가격</span><span class='introlist_txt'>" + ajaxlist[i].current_price + "원</span></li>"+
						                  "<li><span class='introlist_tit'>종료시간</span><span class='introlist_txt'>" + ajaxlist[i].end_date + "</span></li>"+
						                  "</ul>"+
						                  "<div class='introlink'>"+
						                  "<span><a href='#'>거래요청</a></span>"+
						                  "<span><a href='#'>쪽지보내기</a></span>"+
						                  "</div>"+
						                "</div>"
							 }else{
								data =  
									"<div class='carousel-item' >"+
									"<h3> "+
										"<a href='/ongo/auction/auctionRead?auction_no="+ ajaxlist[i].auction_number + "'class='btn btn-small'"+
					                      "title='새창'>상세보기<i class='las la-external-link-alt'></i></a>"+
					                  "</h3>"+
					                  "<h3>제목 : " + ajaxlist[i].auction_title +  "</h3>"+
					                  "<ul class='introlist'>"+
					                  "<li><span class='introlist_tit'>시작가격</span><span class='introlist_txt'>" + ajaxlist[i].start_price + "원</span></li>"+
					                  "<li><span class='introlist_tit'>현재가격</span><span class='introlist_txt'>" + ajaxlist[i].current_price + "원</span></li>"+
					                  "<li><span class='introlist_tit'>종료시간</span><span class='introlist_txt'>" + ajaxlist[i].end_date + "</span></li>"+
					                  "</ul>"+
					                  "<div class='introlink'>"+
					                  "<span><a href='#'>거래요청</a></span>"+
					                  "<span><a href='#'>쪽지보내기</a></span>"+
					                  "</div>"+
					                "</div>"
							 }
							 mydata = mydata +data;
							}
							
							$("#carousel-inner_auction").html(mydata); 
							
							
						},
							error: function (a,b,c) {
								alert(c)
							}
						})//end ajax
					})//end clcick
              	}) //end ready
              		/* $("#deal-item"). */
              
              </script>
              
              
              
              
              
              
              <!--__________________________________________________ -->
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
                <div class="carousel-item active">
                  <h3>
                    냉장고128L
                    <a href="#" class="btn btn-small"
                      target="_blank" title="새창">상세보기<i class="las la-external-link-alt"></i></a>
                  </h3>
                  <ul class="introlist">
                    <li><span class="introlist_tit">주소</span><span class="introlist_txt">서울특별시 강남구</span></li>
                    <li><span class="introlist_tit">크기</span><span class="introlist_txt">총 49.684㎢</span></li>
                    <li><span class="introlist_tit">시작가</span><span class="introlist_txt">50,000원</span></li>
                  </ul>
                  <div class="introlink">
                    <span><a href="#">현재입찰가</a></span>
                    <span><a href="#">입찰참여</a></span>
                  </div>
                </div>
                <div class="carousel-item ">
                  <h3>
                    컴퓨터
                    <a href="#" class="btn btn-small"
                      target="_blank" title="새창">상세보기<i class="las la-external-link-alt"></i></a>
                  </h3>
                  <ul class="introlist">
                    <li><span class="introlist_tit">주소</span><span class="introlist_txt">서울특별시 강남구</span></li>
                    <li><span class="introlist_tit">크기</span><span class="introlist_txt">총 49.684㎢</span></li>
                    <li><span class="introlist_tit">시작가</span><span class="introlist_txt">50,000원</span></li>
                  </ul>
                  <div class="introlink">
                    <span><a href="#">현재입찰가</a></span>
                  </div>
                </div>
              </div>

              <button class="carousel-control-prev" type="button" data-bs-target="#intro2slider" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#intro2slider" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
            <div class="map map1">
           
            </div>
          </div>
          
          
          
          
          <div class="tab-pane fade" id="intro3" aria-labelledby="intro3-tab">
            <div id="intro3slider" class="carousel carousel-dark introslider" data-bs-ride="carousel"
              data-bs-interval="10000000">
              <div class="carousel-inner" id="carousel-inner">
              
              
    <!--중고거래  _______________________________________________________________________________________________-->
              <script type="text/javascript">
              	$(document).ready(function () {
              		$("#intro2-tab").click(function () {
						dealType = "all";
						/* $(this).attr("class", "active"); //클래스속성에 active속성부여  */
					$.ajax({
						url: "/ongo/dealType_main.do",
						type: "get",
						data:{
							"dealType": dealType,
						},
						success: function(ajaxlist) {
							mydata = "";
							for (var i = 0; i < ajaxlist.length; i++) {
								// active가 안되어있어서 결과가 안나왔었음!!
							 if(i==0){
								 data = 
									
									 "<div class='carousel-item active'  id='deal-item'>"+
										"<h3> "+
						                  
						                    "<a href='/ongo/dealRead.do?deal_number="+ ajaxlist[i].deal_number +"&state=READ' class='btn btn-small' target='_blank'"+
						                      "title='새창'>상세보기<i class='las la-external-link-alt'></i></a>"+
						                  "</h3>"+
						                  "<h3>제목 : " + ajaxlist[i].board_title +  "</h3>"+
						                  "<ul class='introlist'>"+
						                  "<li><span class='introlist_tit'>금액</span><span class='introlist_txt'>" + ajaxlist[i].product_price + "원</span></li>"+
						                  "</ul>"+
						                  "<div class='introlink'>"+
						                  "<span><a href='#'>거래요청</a></span>"+
						                  "<span><a href='#'>쪽지보내기</a></span>"+
						                  "</div>"+
						                "</div>"
							 }else{
								data =  
									"<div class='carousel-item'  id='deal-item'>"+
									"<h3> "+
					                  
					                    "<a href='/ongo/dealRead.do?deal_number="+ ajaxlist[i].deal_number +"&state=READ' class='btn btn-small' target='_blank'"+
					                      "title='새창'>상세보기<i class='las la-external-link-alt'></i></a>"+
					                  "</h3>"+
					                  "<h3>제목 : " + ajaxlist[i].board_title +  "</h3>"+
					                  "<ul class='introlist'>"+
					                  "<li><span class='introlist_tit'>금액</span><span class='introlist_txt'>" + ajaxlist[i].product_price + "원</span></li>"+
					                  "</ul>"+
					                  "<div class='introlink'>"+
					                  "<span><a href='#'>거래요청</a></span>"+
					                  "<span><a href='#'>쪽지보내기</a></span>"+
					                  "</div>"+
					                "</div>"
							 }
							 mydata = mydata +data;
							}
							
							$("#carousel-inner").html(mydata); 
							
							
						},
							error: function (a,b,c) {
								alert(c)
							}
						})//end ajax
					})//end clcick
              	}) //end ready
              		/* $("#deal-item"). */
              
              </script>
              
              
              
              
              
              
              <!--__________________________________________________ -->
                <div class="carousel-item active" id="deal-item">
                  <h3 id="main_board_title">에어컨
                    <a href=# class="btn btn-small" target="_blank"  title="새창">상세보기<i class="las la-external-link-alt"></i></a>
                  </h3>
                  <ul class="introlist">
                    <li><span id="" class="introlist_tit">사진</span><span class="introlist_txt">경기도 안산시 상록구</span></li>
                  </ul>
                  <ul class="introlist">
                    <li><span id="product_price" class="introlist_tit">가격</span><span class="introlist_txt">경기도 안산시 상록구</span></li>
                    <li><span id="board_content" class="introlist_tit">내용</span><span class="introlist_txt">경기도 안산시 상록구</span></li>
                  </ul>
                  <div class="introlink">
                    <span><a href="#">거래요청</a></span>
                    <span><a href="#">쪽지보내기</a></span>
                  </div>
                </div>
              
            
              
                            
              <!--__________________________________________________ -->
                <div class="carousel-item" id="deal-item">
                  <h3>
                    토스터기 나눔
                    <a href=# class="btn btn-small" target="_blank"
                      title="새창">상세보기<i class="las la-external-link-alt"></i></a>
                  </h3>
                  <ul class="introlist">
                    <li><span class="introlist_tit">주소</span><span class="introlist_txt">경기도 안산시 상록구</span></li>
                    <li><span class="introlist_tit">크기</span><span class="introlist_txt">10평</span></li>
                  </ul>
                  <div class="introlink">
                    <span><a href="#">거래요청</a></span>
                    <span><a href="#">쪽지보내기</a></span>
                  </div>
                </div>
                <!--__________________________________________________ -->
                
                
                
                
                
                
                
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#intro3slider" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#intro3slider" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
            <div class="map map2">
            
            </div>
          </div>
           
         
        </div>
      </div>
      <!-- //온고소개 -->

      <!-- 처음이용자 안내 -->
      <div class="guide">
        <div class="title_box white">
          <h2>결제안내</h2>
          <p class="gray_tt">온고결제가 아닌 개인 거래시<br/>발생하는 금융사기 조심하세요.</p>
        </div>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item" role="presentation">
            <button class="nav-link active" id="add-tab" data-bs-toggle="tab" data-bs-target="#add" type="button"
              role="tab" aria-controls="add" aria-selected="true">경매물품 검색</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="allow-tab" data-bs-toggle="tab" data-bs-target="#allow" type="button"
              role="tab" aria-controls="allow" aria-selected="false">중고거래 검색</button>
          </li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane fade show active" id="add" >
            <h2 class="visually-hidden">경매물품 검색</h2>
            <div class="input-group">
              <label for="srchWord1" class="form-label visually-hidden">경매물품 검색</label>
              <input type="text" class="form-control service_sch" name="srchWord" id="srchWord1"
                title="'경매물품' 또는 '상품' 입력" placeholder="'경매물품' 또는 '상품' 입력">
              <button type="button" class="btn btn-search" onclick="fnSearchAddr();"><span
                  class="visually-hidden">검색</span></button>
            </div>
          </div>
          <div class="tab-pane fade" id="allow">
            <h2 class="visually-hidden">중고거래 검색</h2>
            <div class="input-group">
              <label for="srchWord2" class="form-label visually-hidden">중고거래 검색</label>
              <input type="text" class="form-control service_sch" name="srchWord" id="srchWord2" title="단어 입력"
                placeholder="단어 입력">
              <button id="srchWord2-btn" type="button" class="btn btn-search" onclick="fnSearchKsic();"><span
                  class="visually-hidden">검색</span></button>
            </div>
          </div>
        </div>
      </div>
      <!-- //처음이용자안내 -->
      <!-- 로그인 -->
      <div class="login">
        
          
            <div class="title_box white">
              <h2>폐가전 무료 수거 방법</h2>
              <ul class="nav-tabs" >
              </ul>
              <div class="mt-3 text-white">
              <p>한국전자제품 <a href="www.15990903.or.kr" target="_blank" class="text-white">자원순환공제조합 </a>에서 <br/>
              운영하는 폐가전 무상방문수거 서비스를 이용할 수 있습니다.<br/><br/>
               폐가전 무료배출은 먼저 인터넷과 모바일, 콜센터
               <br/>(전국 1599-0903)를 통해서 폐가전제품 배출 예약은 간단히 할 수 있습니다.<br/><br/>
               콜센터 운영시간은 평일 8시부터 18시이고 휴무일은 매주 토일요일 근로자의날, 설 추석 연휴, 신정, 공휴일 처리불가
               </p>
              </div>
            </div>
          
          
        
      </div>
      <!-- //로그인 -->

      <!-- 배달중계 -->
      <div class="stepinfo">
        <div class="stepinfo_box">
          <div class="title_box white">
            <h2>온고안내</h2>
            <p class="gray_tt">온고의 서비스를 확인 하세요!</p>
          </div>
          <ul>
            <li>
              <a href="#">
                <p class="icon stepicon2"></p>
                <p>흥정을 위한 경매 시스템</p>
              </a>
            </li>
            <li>
              <a href="#">
                <p class="icon stepicon3"></p>
                <p>환경도 지키고 돈도 버는 '고테크'</p>
              </a>
            </li>

            <li>
              <a href="#">
                <p class="icon stepicon1"></p>
                <p>공정거래를 위한 협력업체</p>
              </a>
            </li>
            
          </ul>
        </div>
      </div>
      <!-- //  -->
    
    
    </section>

   <section class="foot section fp-auto-height">
      <!-- 관련사이트 -->
      <div class="relate">
        <div class="main_container">
          <h2>온고 협력업체</h2>
          <ul>
            <li><a href="https://igmyd.co.kr/" target="_blank">고물연대</a></li>
            <li><a href="http://www.porart.com" target="_blank">포털아트</a></li>
            <li><a href="https://www.kobay.co.kr" target="_blank">코베이옥션</a></li>
            <li><a href="https://cafe.naver.com/joonggonara" target="_blank">중고나라</a></li>
            <li><a href="https://thecheat.co.kr/" target="_blank">더치트</a></li>
            <li><a href="https://www.police.go.kr/www/security/cyber/cyber04.jsp" target="_blank">사이버 경찰청</a></li>
          </ul>
        </div>
      </div>
      <!-- //관련사이트 -->

      <!-- Footer -->
      <div class="footer section">
        <nav class="fnb d-flex">
          <div class="main_container">
            <ul>
              <li class="on"><strong><a href="#">개인정보처리방침</a></strong></li>
              <li><a href="#">이용약관</a></li>
            </ul>
          </div>
        </nav>
        <div class="addr d-flex">
          <div class="main_container">
            <div class="logo-wrap">
              <div class="logo"><a href="/"><img src="/ongo/images/f-logo.png" alt="온라인 고물상"></a></div>
            </div>
            <span>서울특별시 강남구 삼성로111길
              ⓒ TEAM Devel-Up. All Rights Reserved.</span>
            <span><em class="blk">대표전화</em> : 02-000-0000</span>
            <span><em class="blk">FAX</em> : 02-000-0000</span>
            <div id="GoTop" class="gotop">
              <button type="button" class="btn" onclick="$(window).scrollTop(0);"><span class="visually-hidden">맨위로 가기</span>
                <span><i class="las la-arrow-up"></i></span>
              </button>
            </div>
          </div>
        </div>
      </div>
      <!-- //Footer -->
    </section>
		
		

  </div>

</div>
<!-- // content -->
 <body>
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
<script type="text/javascript">
	$(document).ready(function () {
		$("#srchWord2-btn").on("click", function () {
			location.href="serarchData.do?tag=board_title&searchData="+$("#srchWord2").val();
		})//end #srchWord2-btn event
		
		$.ajax({
			url : '/ongo/cooperation/ajax_list',
			type : 'get',
			success : function(data){
				var pagelist="";
				for(var i=0;i<data.length;i++){
					var page = "";
					if(i==0){
						page = '<div class="carousel-item active"><h3>'+data[i].name
					} else {
						page = '<div class="carousel-item"><h3>'+data[i].name 
					}
					page = page +'</h3><ul class="introlist">'+
					   			 '<li><span class="introlist_tit">주소</span><span class="introlist_txt">'+data[i].addr+'</span></li>'+
					   			 '<li><span class="introlist_tit">거래품목</span><span class="introlist_txt">'+data[i].content+'</span></li>'+
					   			 '<li><span class="introlist_tit">문의</span><span class="introlist_txt">'+data[i].tel+'</span></li>'+
					   			 '<li><span class="introlist_tit">견적</span><span class="introlist_txt">'+data[i].email+'</span></li></ul>'
					if(${user.member_id!=null && user.member_role!=2}){
						page = page + '<div class="introlink"><span><a href="/ongo/recycle/writepage?receive_id='+data[i].name+'">거래요청</a></span></div></div>' 
					} else {
						page = page + '</div>'
					}
					pagelist = pagelist + page;
				}
				document.getElementById("intro1slider").childNodes[1].innerHTML = pagelist;
				itemlist = document.getElementById("intro1slider").childNodes[1].childNodes
			},
			error : function(obj,msg,statusMsg){
				alert("오류:"+statusMsg);
			}
		})//end ajax
		
		markerChg();
		makeMap();
		
	})//end document ready
	var itemlist;
	var activeNo = 0;
	function markerChg(){
		itemlist = document.getElementById("intro1slider").childNodes[1].childNodes
		for(var i=0; i<itemlist.length; i++){
			if(itemlist[i].className=="carousel-item active"){
				activeNo = i;
			}
		}
		makeMap();
	}
	
	function makeMap(){
		var locations = [
			{place:"소정자원", lat:37.5135381, lng:127.0520362},
			{place:"규민강철", lat:37.23444, lng:127.201346},
			{place:"태원강철", lat:35.8460881, lng:128.6385098},
			{place:"경민강철", lat:35.1861875, lng:129.1226139},
			{place:"성민자원", lat:33.4896229, lng:126.4600159},
			{place:"윤희자원", lat:35.8795273, lng:127.1109433}
		]		
		
		var mapOptions = {
			    center: new naver.maps.LatLng(35.9819689, 128.094434),
			    zoom: 7
			};

			var map = new naver.maps.Map('map', mapOptions);
		
		var marker = new naver.maps.Marker({
			map : map,
			title : locations[activeNo].place,
			position : new naver.maps.LatLng(locations[activeNo].lat,locations[activeNo].lng)
		})
	}
</script>
<!-- //modal -->
  
</body>
</html>