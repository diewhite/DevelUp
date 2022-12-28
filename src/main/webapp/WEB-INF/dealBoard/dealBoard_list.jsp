<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=Edge">
 <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,user-scalable=yes">
 <link rel="icon" type="image/x-icon" href="/ongo/images/favicon.ico">
 
<!-- Bootstrap-->
<link type="text/css" rel="stylesheet" href="/ongo/common/css/bootstrap/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="/ongo/common/css/bootstrap-icons/font/bootstrap-icons.css">
<link type="text/css" rel="stylesheet" href="/ongo/common/css/line-awesome.min.css">
<!-- common -->
<link type="text/css" rel="stylesheet" href="/ongo/common/css/font.css">
<link type="text/css" rel="stylesheet" href="/ongo/common/css/common.css">
<link type="text/css" rel="stylesheet" href="/ongo/common/css/cmpt.css">
<link type="text/css" rel="stylesheet" href="/ongo/common/css/layout.css">

<!--jquery -->
<script src="/ongo/common/js/jquery/jquery-3.3.1.min.js"></script>
<script src="/ongo/common/js/bootstrap/bootstrap.bundle.min.js"></script>
<!-- common -->
<script src="/ongo/common/js/common.js"></script>


<head> 

<link type="text/css" rel="stylesheet" href="/ongo/common/css/main.css">
</head>
<body>

<!-- content -->
<div id="contents" class="main">
<div >
    <section class="visual section active">
     
      <div class="stepinfo">
        <div class="stepinfo_box">
          <div class="title_box white">
            <h2>중고거래 리스트</h2>
            <p class="gray_tt">온고의 서비스를 확인 하세요!</p>
          </div>
          <ul>
            <li>
              <a href="#">
                <p class="icon stepicon2"></p>
                <p>중고거래</p>
              </a>
            </li>
            <li>
              <a href="#">
                <p class="icon stepicon3"></p>
                <p>나눔</p>
              </a>
            </li>

            
          </ul>
        </div>
      </div>
      <!-- //  -->
    
    </section>






<div>
		<table class="table">
			<thead>
				<tr>
					<th>구분</th>
					<th>번호</th>
					<th>상태</th>
					<th>제목</th>
					<th>조회수</th>
					<th>작성일</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<%-- <c:forEach var = "member" items="${listall}">
						<tr>
							<td>${member.no }</td>
							<td><a href="/ongo/idRead.do?id=${member.id}&state=READ">${member.id}</a></td>
							<td>${member.pass }</td>
							<td>${member.name }</td>
							<td>${member.tel }</td>
							<td>${member.addr }</td>
							<td>${member.email }</td>
							<td>${member.sort }</td>
							<td>${member.regdate}</td>
							<td><a href="/ongo/idRead.do?state=UPDATE&id=${member.id}">수정</a></td>
							<td><a href="/ongo/idDelete.do?id=${member.id}">삭제</a></td>
						
						</tr>
					</c:forEach> --%>
					<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<tr>
			</tbody>
		</table>
	</div>
  
  
  
  
  
  
  
  <div class="btn-area">
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='board.html'">글쓰기</button>
      </div>
    </div>
    <br/>































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
<!-- //modal -->
  
</body>
</html>