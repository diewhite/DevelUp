<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<style type="text/css">
.nav {  margin-bottom: 0px;padding-left: 10px;}
.nav-tabs {
    border-bottom: 1px solid #fff;
}
.nav-tabs .nav-link.active, .nav-tabs .nav-item.show .nav-link {

    border-color:#fff;
    font-weight: 900;

    color: black;
    border-bottom: 3px solid #1B3C88  !important;
}

    .nav .nav-item .nav-link {
    width: 100%;
    height: 51px;
       font-size: 18px;
       
    background: #fff;
    border-color: #fff;
    border-bottom-color: #fff;
 
}

</style>
<script type="text/javascript">
	
</script>
</head>
<body>

	<!-- content -->
	<div id="contents">
		<!-- title -->
		<div class="sub_top">
				<h3>반갑습니다.  ${user.member_name} 님!</h3>
				<h5> ${user.member_name} 님의 회원 등급은 일반회원입니다.</h5>
			</div>
		<!-- //title -->
		
		<!-- 상단 5개 -->
		<div class="row">
				<!--카드 시작-->
				<div class="col-xl-3 col-md-6">
					<div class="card card-stats ">
						
						<div class="card-body">
							<div class="row">
								<div class="icon-big text-center">
									<div class="numbers">
										<div>
											<p class="card-category"><span class=" my_01">경매</span>(판매)</p>
											<h4 class="card-title">1건</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card-footer text-center"> 입찰중</div>
					</div>
				</div>
				<!--//카드 시작-->
				<!--카드 시작-->
				<div class="col-xl-3 col-md-6">
					<div class="card card-stats ">
						
						<div class="card-body">
							<div class="row">
								<div class="icon-big text-center">
									<div class="numbers">
										<div>
											<p class="card-category"><span class=" my_01">경매</span>(구매)</p>
											<h4 class="card-title">2건</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card-footer text-center">거래승인중</div>
					</div>
				</div>
				<!--//카드 시작-->
				<!--카드 시작-->
				<div class="col-xl-3 col-md-6">
					<div class="card card-stats ">
						
						<div class="card-body">
							<div class="row">
								<div class="icon-big text-center">
									<div class="numbers">
										<div>
											<p class="card-category"><span class=" my_01">중고거래</span>(판매)</p>
											<h4 class="card-title">1건</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card-footer text-center">판매중</div>
					</div>
				</div>
				<!--//카드 시작-->
			<!--카드 시작-->
				<div class="col-xl-3 col-md-6">
					<div class="card card-stats ">
						
						<div class="card-body">
							<div class="row">
								<div class="icon-big text-center">
									<div class="numbers">
										<div>
											<p class="card-category"><span class=" my_01">중고거래</span>(구매)</p>
											<h4 class="card-title">7건</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card-footer text-center">거래승인중</div>
					</div>
				</div>
				<!--//카드 시작-->

				</div>
		<!-- // 상단 5개 -->
		
		<!-- 성민님 중고거래 탭메뉴 -->	
		<div>
		<div class="nav d-flex  mb-2 mt-5">
			<div class="me-auto ">
				<h3>경매 내역</h3>
				<ul class="nav nav-tabs" id="myTab" role="tablist">
			      <li class="nav-item" role="presentation">
			        <button class="nav-link show active" id="normal-tab" data-bs-toggle="tab" data-bs-target="#normal" type="button" role="tab" 
			        aria-controls="normal" aria-selected="true">판매</button>
			      </li>
			      <li class="nav-item" role="presentation">
			        <button class="nav-link" id="corp-tab" data-bs-toggle="tab" data-bs-target="#corp" type="button" role="tab" aria-controls="corp" 
			        aria-selected="false">구매</button>
			      </li>
			    </ul>
								
			</div>
			<div class="btndiv">
				<button class="btn" d-flex="" justify-content-end="" onclick="location.href='/ongo/history/historylist' ">+
					더보기</button>
			</div>
		</div>
			<!-- 내용 -->
			<div class="tab-content">
			  	<!--판매 -->
			      <div class="tab-pane fade active show" id="normal" role="tabpanel" aria-labelledby="normal-tab">
			        	<table class="table table-borderless">
									<colgroup>
										<col width="5%">
										<!-- 번호 -->
										<col width="10%">
										<!-- 제품사진 -->
										<col width="35%">
										<!-- 제목 -->
										<col width="10%">
										<!-- 가격 -->
										<col width="10%">
										<!-- 구매자 -->
										<col width="*">
										<!-- 날짜 -->
										<col width="*">
										<!-- 거래상태 -->
									</colgroup>
									<thead>
										<tr>
											<th class="table-header" scope="col">번호</th>
											<th class="table-header" scope="col">제품 사진</th>
											<th class="table-header-title" scope="col">제목</th>
											<th class="table-header" scope="col">가격</th>
											<th class="table-header" scope="col">구매자</th>
											<th class="table-header" scope="col">날짜</th>
											<th class="table-header" scope="col">거래상태</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><span class="gray-bold">1</span></td>
											<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg" width="50" height="50"></td>
											<td><span><a href="/ongo/history/joongodetail">상태 좋은 아이폰14pro 팝니다</a></span></td>
											<td><span >15,000원</span></td>
											<td>
											<span class="blue-bold">
											<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
									          lee
									        </a>
									        <ul class="dropdown-menu" style="width: 100px;">
									            <li><a class="dropdown-item" href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#sendNoteModal" id=sendnote>쪽지보내기</a></li>
									            <li><a class="dropdown-item" href="#" title="회원정보 팝업" data-bs-toggle="modal" data-bs-target="#userInfoModal" id=userinfo>회원정보보기</a></li>
									            <li><a class="dropdown-item" href="#">거래내역보기</a></li>
									        </ul>
											</td>
											<td>2023년 1월 3일</td>
											<td>거래완료</td>
										</tr>
										<tr>
											<td><span class="gray-bold">1</span></td>
											<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg" width="50" height="50"></td>
											<td><span class="blue-bold"><a href="/ongo/history/joongodetail">르네상스시절같은 조각상팔아요</a></span></td>
											<td><span class="blue-bold">4,000원</span></td>
											<td>
											<span class="blue-bold">
											<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
									          song
									        </a>
									        <ul class="dropdown-menu" style="width: 100px;">
									            <li><a class="dropdown-item" href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#sendNoteModal" id=sendnote>쪽지보내기</a></li>
									            <li><a class="dropdown-item" href="#" title="회원정보 팝업" data-bs-toggle="modal" data-bs-target="#userInfoModal" id=userinfo>회원정보보기</a></li>
									            <li><a class="dropdown-item" href="#">거래내역보기</a></li>
									        </ul>
											</td>
											<td>2023년 1월 3일</td>
											<td>판매중</td>
										</tr>
									</tbody>
								</table>
			      </div>
			      <!-- 구매 -->
			      <div class="tab-pane fade" id="corp" role="tabpanel" aria-labelledby="corp-tab">
			       	<table class="table table-borderless">
									<colgroup>
										<col width="5%">
										<!-- 번호 -->
										<col width="10%">
										<!-- 제품사진 -->
										<col width="35%">
										<!-- 제목 -->
										<col width="10%">
										<!-- 가격 -->
										<col width="10%">
										<!-- 구매자 -->
										<col width="*">
										<!-- 날짜 -->
										<col width="*">
										<!-- 거래상태 -->
									</colgroup>
									<thead>
										<tr>
											<th class="table-header" scope="col">번호</th>
											<th class="table-header" scope="col">제품 사진</th>
											<th class="table-header-title" scope="col">제목</th>
											<th class="table-header" scope="col">가격</th>
											<th class="table-header" scope="col">구매자</th>
											<th class="table-header" scope="col">날짜</th>
											<th class="table-header" scope="col">거래상태</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><span class="gray-bold">1</span></td>
											<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg" width="50" height="50"></td>
											<td><span class="blue-bold"><a href="/ongo/history/joongodetail">아기모빌 팔아요</a></span></td>
											<td><span class="blue-bold">15,000원</span></td>
											<td>
											<span class="blue-bold">
											<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
									          ${user.member_id}
									        </a>
									        <ul class="dropdown-menu" style="width: 100px;">
									            <li><a class="dropdown-item" href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#sendNoteModal" id=sendnote>쪽지보내기</a></li>
									            <li><a class="dropdown-item" href="#" title="회원정보 팝업" data-bs-toggle="modal" data-bs-target="#userInfoModal" id=userinfo>회원정보보기</a></li>
									            <li><a class="dropdown-item" href="#">거래내역보기</a></li>
									        </ul>
											</td>
											<td>2023년 1월 3일</td>
											<td>판매중</td>
										</tr>
										<tr>
											<td><span class="gray-bold">1</span></td>
											<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg" width="50" height="50"></td>
											<td><span class="blue-bold"><a href="/ongo/history/joongodetail">상태 좋은 아이폰14pro 팝니다</a></span></td>
											<td><span class="blue-bold">15,000원</span></td>
											<td>
											<span class="blue-bold">
											<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
									         park
									        </a>
									        <ul class="dropdown-menu" style="width: 100px;">
									            <li><a class="dropdown-item" href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#sendNoteModal" id=sendnote>쪽지보내기</a></li>
									            <li><a class="dropdown-item" href="#" title="회원정보 팝업" data-bs-toggle="modal" data-bs-target="#userInfoModal" id=userinfo>회원정보보기</a></li>
									            <li><a class="dropdown-item" href="#">거래내역보기</a></li>
									        </ul>
											</td>
											<td>2023년 1월 3일</td>
											<td>판매중</td>
										</tr>
									</tbody>
								</table>
			      </div>
			    </div> 		
		</div><!-- // 성민님 경매 탭메뉴 -->		
		
		<!-- 윤희님 중고거래 탭메뉴 -->	
		<div>
		<div class="nav d-flex  mb-2 mt-5">
			<div class="me-auto ">
				<h3>중고거래 내역</h3>
				<ul class="nav nav-tabs" role="tablist">
			      <li class="nav-item" role="presentation">
			        <button class="nav-link show active" id="normal-tab2" data-bs-toggle="tab" data-bs-target="#normal2" type="button" role="tab" 
			        aria-controls="normal2" aria-selected="true">판매</button>
			      </li>
			      <li class="nav-item" role="presentation">
			        <button class="nav-link" id="corp-tab2" data-bs-toggle="tab" data-bs-target="#corp2" type="button" role="tab" aria-controls="corp2" 
			        aria-selected="false">구매</button>
			      </li>
			    </ul>
								
			</div>
			<div class="btndiv">
				<button class="btn" d-flex="" justify-content-end="" onclick="location.href='/ongo/history/historylist' ">+
					더보기</button>
			</div>
		</div>
			<!-- 내용 -->
			<div class="tab-content">
			  	<!--판매 -->
			      <div class="tab-pane fade active show" id="normal2" role="tabpanel" aria-labelledby="normal-tab2">
			        	<table class="table table-borderless">
									<colgroup>
										<col width="5%">
										<!-- 번호 -->
										<col width="10%">
										<!-- 제품사진 -->
										<col width="35%">
										<!-- 제목 -->
										<col width="10%">
										<!-- 가격 -->
										<col width="10%">
										<!-- 구매자 -->
										<col width="*">
										<!-- 날짜 -->
										<col width="*">
										<!-- 거래상태 -->
									</colgroup>
									<thead>
										<tr>
											<th class="table-header" scope="col">번호</th>
											<th class="table-header" scope="col">제품 사진</th>
											<th class="table-header-title" scope="col">제목</th>
											<th class="table-header" scope="col">가격</th>
											<th class="table-header" scope="col">구매자</th>
											<th class="table-header" scope="col">날짜</th>
											<th class="table-header" scope="col">거래상태</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><span class="gray-bold">1</span></td>
											<td><img alt="" src="/ongo/static/images/dealboard/deal10.jpg" width="50" height="50"></td>
											<td><span class="blue-bold"><a href="/ongo/history/joongodetail">아기모빌 팝니다</a></span></td>
											<td><span class="blue-bold">13,000원</span></td>
											<td>
											<span class="blue-bold">
											<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
									          kim
									        </a>
									        <ul class="dropdown-menu" style="width: 100px;">
									            <li><a class="dropdown-item" href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#sendNoteModal" id=sendnote>쪽지보내기</a></li>
									            <li><a class="dropdown-item" href="#" title="회원정보 팝업" data-bs-toggle="modal" data-bs-target="#userInfoModal" id=userinfo>회원정보보기</a></li>
									            <li><a class="dropdown-item" href="#">거래내역보기</a></li>
									        </ul>
											</td>
											<td>2023년 1월 3일</td>
											<td>판매중</td>
										</tr>
										<tr>
											<td><span class="gray-bold">1</span></td>
											<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg" width="50" height="50"></td>
											<td><span class="blue-bold"><a href="/ongo/history/joongodetail">아기 유모차 나눔해요</a></span></td>
											<td><span class="blue-bold">0원</span></td>
										<td>
											<span class="blue-bold">
											<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
									          ${user.member_id}
									        </a>
									        <ul class="dropdown-menu" style="width: 100px;">
									            <li><a class="dropdown-item" href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#sendNoteModal" id=sendnote>쪽지보내기</a></li>
									            <li><a class="dropdown-item" href="#" title="회원정보 팝업" data-bs-toggle="modal" data-bs-target="#userInfoModal" id=userinfo>회원정보보기</a></li>
									            <li><a class="dropdown-item" href="#">거래내역보기</a></li>
									        </ul>
											</td>
											<td>2023년 1월 3일</td>
											<td>판매중</td>
										</tr>
									</tbody>
								</table>
			      </div>
			      <!-- 구매 -->
			      <div class="tab-pane fade" id="corp2" role="tabpanel" aria-labelledby="corp-tab2">
			       	<table class="table table-borderless">
									<colgroup>
										<col width="5%">
										<!-- 번호 -->
										<col width="10%">
										<!-- 제품사진 -->
										<col width="35%">
										<!-- 제목 -->
										<col width="10%">
										<!-- 가격 -->
										<col width="10%">
										<!-- 구매자 -->
										<col width="*">
										<!-- 날짜 -->
										<col width="*">
										<!-- 거래상태 -->
									</colgroup>
									<thead>
										<tr>
											<th class="table-header" scope="col">번호</th>
											<th class="table-header" scope="col">제품 사진</th>
											<th class="table-header-title" scope="col">제목</th>
											<th class="table-header" scope="col">가격</th>
											<th class="table-header" scope="col">구매자</th>
											<th class="table-header" scope="col">날짜</th>
											<th class="table-header" scope="col">거래상태</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><span class="gray-bold">1</span></td>
											<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg" width="50" height="50"></td>
											<td><span class="blue-bold"><a href="/ongo/history/joongodetail">디스커버리 흰색 롱 패딩</a></span></td>
											<td><span class="blue-bold">3,000원</span></td>
											<td>
											<span class="blue-bold">
											<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
									          kim
									        </a>
									        <ul class="dropdown-menu" style="width: 100px;">
									            <li><a class="dropdown-item" href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#sendNoteModal" id=sendnote>쪽지보내기</a></li>
									            <li><a class="dropdown-item" href="#" title="회원정보 팝업" data-bs-toggle="modal" data-bs-target="#userInfoModal" id=userinfo>회원정보보기</a></li>
									            <li><a class="dropdown-item" href="#">거래내역보기</a></li>
									        </ul>
											</td>
											<td>2023년 1월 3일</td>
											<td>판매중</td>
										</tr>
										<tr>
											<td><span class="gray-bold">1</span></td>
											<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg" width="50" height="50"></td>
											<td><span class="blue-bold"><a href="/ongo/history/joongodetail">미개봉 구찌 스니커즈</a></span></td>
											<td><span class="blue-bold">100,000원</span></td>
											<td>
											<span class="blue-bold">
											<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
									         new
									        </a>
									        <ul class="dropdown-menu" style="width: 100px;">
									            <li><a class="dropdown-item" href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#sendNoteModal" id=sendnote>쪽지보내기</a></li>
									            <li><a class="dropdown-item" href="#" title="회원정보 팝업" data-bs-toggle="modal" data-bs-target="#userInfoModal" id=userinfo>회원정보보기</a></li>
									            <li><a class="dropdown-item" href="#">거래내역보기</a></li>
									        </ul>
											</td>
											<td>2023년 1월 3일</td>
											<td>판매중</td>
										</tr>
									</tbody>
								</table>
			      </div>
			    </div> 		
		</div><!-- //중고거래 탭메뉴 -->			
						
</div><!-- //컨텐츠  -->		


<!-- send note modal -->
	<div class="modal fade" id="sendNoteModal" tabindex="-1"
		aria-labelledby="Modal" aria-hidden="true">
		<form action="/ongo/mypage/note/sendnote" method="post">
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
											<span><textarea class="grid-input" role="textbox" id="reply_receive_id" name="receive_id" title="수신자" maxlength="500" rows="1" ></textarea></span>
											<input type="text" hidden="true" id="send_id" name="send_id">
										</div>
									</div>
								</div>
								<div class="grid-item">
									<label for="IUY_CLSS_CNTS">내용적기</label>
									<div class="tbl-basic-td">
										<div class="input-wrap w100">
											<div class="input-wrap w100">
												<textarea class="grid-input" role="textbox"
													id="content" name="content"
													title="쪽지내용 입력" maxlength="500" rows="5" required="required"></textarea>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="btn-area">
							<button type="submit" class="btn btn-warning text-white btn-large"
								data-bs-dismiss="modal" aria-label="Close" onclick="sendNote()">전송</button>
						</div>
						<!-- 닫기버튼 -->
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close">
							<i class="las la-times"></i>
						</button>
						<!-- //닫기버튼 -->
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- //send note modal -->

	<!-- user info modal -->
	<div class="modal fade" id="userInfoModal" tabindex="-1"
		aria-labelledby="Modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="modal-tit">
						<h2 class="h3">회원정보</h2>
					</div>
					<div class="modal-con">
						<div class="tbl grid-layout grid1">
							<div class="grid-item">
								<label for="IUY_CLSS_NM">ID</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<span id="member_id"></span>
									</div>
								</div>
							</div>
							<div class="grid-item">
								<label for="IUY_CLSS_CNTS">E-mail</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<span id="member_email"></span>
									</div>
								</div>
							</div>
							<div class="grid-item">
								<label for="IUY_CLSS_CNTS">가입날짜</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<span id="member_date"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 닫기버튼 -->
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<i class="las la-times"></i>
					</button>
					<!-- //닫기버튼 -->
				</div>
			</div>
		</div>
	</div>
	<!-- //user info modal -->
	
					
</body>
</html>