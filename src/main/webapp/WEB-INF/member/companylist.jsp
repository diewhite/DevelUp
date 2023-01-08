<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
</head>
<body>

<!-- content -->
<div id="contents">
    <!-- title -->
    <div class="sub_top">
        <div class="container">
            <h1>협력업체</h1>
        </div>
    </div>
    <!-- //title -->

    <!-- 게시판 -->
    <div class="container">
        <form id="searchForm" name="searchForm" onsubmit="return false;">
            <input type="hidden" name="countPerPage" id="countPerPage" value="10">
            <input type="hidden" name="zon" id="zon" value="">
            <input type="hidden" name="dstr" id="dstr" value="">
          
          <div class="board_list">
            <div class="board_info d-flex">
                <div class="total">전체 <strong class="blue" id="totalCount">6</strong>건 (페이지 <strong class="blue" id="nowPage">1</strong>/<span id="totalPage">1</span>)</div>
             
            </div>
            <div class="board" id="boardList">
             <div class="card">
                <div class="card-body">
                  <div class="card-wrap">
                    <h3 class="card-title">규민강철</h3>
                    <div class="card-text">
                      <ul class="company_list">
                        <li><strong>주소</strong><span>경기도 용인시 처인구 명인로1길</span></li>
                        <li><strong>문의</strong><span>031-123-1234</span></li>
                        <li><strong>거래품목</strong><span>#고철#비철#구리#폐전선#철거구</span></li>
                        <li><strong>견적</strong><span>diewhite9095@gmail.com</span></li>
                      </ul>
                    </div>
                  </div>
                  <div class="companylogo">
                    <img src="/images/company.png" alt="">
                  </div>
                  <span class="plus"><i class="las la-plus"></i></span>
                </div>
              </div>
              <div class="card">
                <div class="card-body">
                  <div class="card-wrap">
                    <h3 class="card-title">윤희자원</h3>
                    <div class="card-text">
                      <ul class="company_list">
                        <li><strong>주소</strong><span>전라북도 전주시 송천동 33길</span></li>
                        <li><strong>문의</strong><span>031-123-1234</span></li>
                        <li><strong>거래품목</strong><span>#고철#고철#비철#파지#헌옷</span></li>
                        <li><strong>견적</strong><span>yoonhee010@gmail.com</span></li>
                      </ul>
                    </div>
                  </div>
                  <div class="companylogo">
                    <img src="/images/company.png" alt="">
                  </div>
                  <span class="plus"><i class="las la-plus"></i></span>
                </div>
              </div>
             <div class="card">
                <div class="card-body">
                  <div class="card-wrap">
                    <h3 class="card-title">태원강철</h3>
                    <div class="card-text">
                      <ul class="company_list">
                        <li><strong>주소</strong><span>대구 수성구 황금동 70길</span></li>
                        <li><strong>문의</strong><span>031-123-1234</span></li>
                        <li><strong>거래품목</strong><span>#비철#철거#해체#고철#고물상</span></li>
                        <li><strong>견적</strong><span>gavykim1124@gamil.com</span></li>
                      </ul>
                    </div>
                  </div>
                  <div class="companylogo">
                    <img src="/images/company.png" alt="">
                  </div>
                  <span class="plus"><i class="las la-plus"></i></span>
                </div>
              </div>
              <div class="card">
                <div class="card-body">
                  <div class="card-wrap">
                    <h3 class="card-title">소정자원</h3>
                    <div class="card-text">
                      <ul class="company_list">
                        <li><strong>주소</strong><span>서울특별시 강남구 삼성로111길</span></li>
                        <li><strong>문의</strong><span>010-9963-996</span></li>
                        <li><strong>거래품목</strong><span>#폐가전#가구#플라스틱</span></li>
                        <li><strong>견적</strong><span>psjjava@gmail.com</span></li>
                      </ul>
                    </div>
                  </div>
                  <div class="companylogo">
                    <img src="/images/company.png" alt="">
                  </div>
                  <span class="plus"><i class="las la-plus"></i></span>
                </div>
              </div>
              <div class="card">
                <div class="card-body">
                  <div class="card-wrap">
                    <h3 class="card-title">성민강철</h3>
                    <div class="card-text">
                      <ul class="company_list">
                        <li><strong>주소</strong><span>제주 오도11길</span></li>
                        <li><strong>문의</strong><span>031-123-1234</span></li>
                        <li><strong>거래품목</strong><span>#고철#폐지#비철#기타재활용품</span></li>
                        <li><strong>견적</strong><span>sadlzn77@gmail.com</span></li>
                      </ul>
                    </div>
                  </div>
                  <div class="companylogo">
                    <img src="/images/company.png" alt="">
                  </div>
                  <span class="plus"><i class="las la-plus"></i></span>
                </div>
              </div>
              <div class="card">
                <div class="card-body">
                  <div class="card-wrap">
                    <h3 class="card-title">경민강철</h3>
                    <div class="card-text">
                      <ul class="company_list">
                        <li><strong>주소</strong><span>부산광역시 해운대로 123</span></li>
                        <li><strong>문의</strong><span>031-123-1234</span></li>
                        <li><strong>거래품목</strong><span>#철거#고가매입#고물상#고철</span></li>
                        <li><strong>견적</strong><span>chjk3200620@gmail.com</span></li>
                      </ul>
                    </div>
                  </div>
                  <div class="companylogo">
                    <img src="/images/company.png" alt="">
                  </div>
                  <span class="plus"><i class="las la-plus"></i></span>
                </div>
              </div>
              
            </div>
            </div>
        </form>
    </div>
</div>
<!-- // content -->

<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
</body>
</html>