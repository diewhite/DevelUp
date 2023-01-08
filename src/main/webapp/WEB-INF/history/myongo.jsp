<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap')
	;

#contents {
	min-height: 600px;
	margin: auto;
}

}
.topnav {
	background-color: #ffff;
	overflow: hidden
}

.topnav a {
	float: left;
	display: block;
	color: #8d8b8b;
	font-weight: 800;
	font-size: 18px;
	text-transform: uppercase;
	padding: 10px;
	text-decoration: none;
	border-bottom: 3px solid transparent;
}

.topnav a:hover {
	color: black;
	border-bottom: 3px solid #1B3C88;
}

.topnav .active {
	color: black;
	border-bottom: 3px solid #1B3C88;
}

.navbar-toggler:focus {
	box-shadow: none;
	outline: none;
	border: none
}

::placeholder {
	font-size: 10px
}

.container .table-responsive {
	margin: 20px auto;
	overflow-x: auto
}

.container .table-responsive::-webkit-scrollbar {
	height: 5px
}

.container .table-responsive::-webkit-scrollbar-thumb {
	border-radius: 5px;
	background-image: linear-gradient(to right, #5D7ECD, #0C91E6)
}

.table thead tr th {
	height: 40px;
	font-size: 20px;
	color: #868585;
	padding: 10px 10px
}

.table tbody tr td {
	height: 40px;
	font-size: 17px;
	padding: 10px 10px
}

#navbar {
	width: 20%;
	background-color: #21214e !important;
	height: 50px;
	border: none
}

.gray-bold .title {
	color: #6E6E6E;
	font-weight: 600;
}

.blue-bold {
	color: #4c4c96;
	font-weight: 600
}

#navbar a {
	color: white
}

#navbar2 {
	width: 80%
}

#navbar-items {
	width: 20%;
	height: 500px;
	background-color: #4f4f8a
}

#topnavbar {
	width: 80%
}

.list_button {
	padding-left: 10px;
}

.table-header-title {
	width: 35%;
}

.table-header {
	width: 16%;
}

.btndiv {
	float: right;
}

.btn {
	-webkit-border-radius: 3;
	-moz-border-radius: 3;
	border-radius: 3px;
	color: #7a7a7a;
	font-size: 15px;
	background: #ffffff;
	padding: 5px 10px 5px 10px;
	text-decoration: none;
}

.btn:hover {
	background: #e0e0e0;
	text-decoration: none;
}

.dropdown-menu {
	width: 10%;
	border: 1px solid #000;
	padding: 0;
	box-shadow: 4px 4px 10px rgb(0 0 0/ 12%);
	border-radius: 0;
	margin-top: -3px !important;
	max-height: 300px;
	overflow-y: auto;
}

	/* 소정님 css */

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
.nav .nav-item .nav-link {
 
}

/* //소정님 css */

</style>
<script type="text/javascript">
	
</script>
</head>
<body>

	<!-- content -->
	<div id="contents">
		<!-- title -->
		<div class="sub_top">
			<div class="container">
				<h1>반갑습니다. user_id님!</h1>
				<h5>user_id님의 회원 등급은 일반회원입니다.</h5>
			</div>
		</div>
		<!-- //title -->

		<!--======  <div class="container">  부분부터 복사해서 붙여넣기 하시면 됩니다.======  -->

		<!-- 거래현황 -->

		<div class="container">
			<div class="cont-box-inner board_list">
				<div class="board_info d-flex">
					<div class="align-items-end">
						<h2 class="h4 verticalM">경매거래현황</h2>
					</div>
					<div class="d-grid d-md-flex justify-content-md-end">
						<button class="btn btn-primary btn-small" onclick="fnExcel();"
							type="button">경매구매내역</button>

						<button class="btn btn-primary btn-small" onclick="fnExcel();"
							type="button">경매판매내역</button>
					</div>
				</div>
				<div class="table-responsive">
					<table class="table bg-table">
						<caption>경매거래현황</caption>
						<colgroup>

						</colgroup>
						<thead>
							<tr>
								<th class="blue-bg border-bottom " colspan="5">경매판매</th>
								<th class="border-bottom" colspan="5">경매구매</th>
							</tr>
							<tr>
								<th class="blue-bg board ">구분</th>
								<th class="blue-bg board">구분</th>
								<th class="blue-bg board">구분</th>
								<th class="blue-bg board">구분</th>
								<th class="blue-bg board">구분</th>
								<th class="board">구분</th>
								<th class="board">구분</th>
								<th class="board">구분</th>
								<th class="board">구분</th>
								<th class="board">구분</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>
			<!--//cont-box-inner-->



			<div class="cont-box-inner board_list">
				<div class="board_info d-flex">
					<div class="align-items-end">
						<h2 class="h4 verticalM">일반거래현황</h2>
					</div>
					<div class="d-grid d-md-flex justify-content-md-end">
						<button class="btn btn-primary btn-small" onclick="fnExcel();"
							type="button">일반판매내역</button>
						<button class="btn btn-primary btn-small" onclick="fnExcel();"
							type="button">일반구매내역</button>
					</div>
				</div>
				<div class="table-responsive">
					<table class="table bg-table">
						<caption>일반거래현황</caption>
						<colgroup>

						</colgroup>
						<thead>
							<tr>
								<th class="blue-bg border-bottom " colspan="5">판매현황</th>
								<th class="border-bottom" colspan="5">구매현황</th>
							</tr>
							<tr>
								<th class="blue-bg board ">구분</th>
								<th class="blue-bg board">구분</th>
								<th class="blue-bg board">구분</th>
								<th class="blue-bg board">구분</th>
								<th class="blue-bg board">구분</th>
								<th class="board">구분</th>
								<th class="board">구분</th>
								<th class="board">구분</th>
								<th class="board">구분</th>
								<th class="board">구분</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>


			<!-- =========경매내역list========= -->

			<div class="auction_history">
				<div class="topnav d-flex  mb-2">
					<div class="me-auto ">
						<!-- 탭메뉴 -->
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item" role="presentation">
								<button class="nav-link show active" id="normal-tab"
									data-bs-toggle="tab" data-bs-target="#normal" type="button"
									role="tab" aria-controls="normal" aria-selected="true">판매</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="corp-tab" data-bs-toggle="tab"
									data-bs-target="#corp" type="button" role="tab"
									aria-controls="corp" aria-selected="false">구매</button>
							</li>
						</ul>
						<!-- 텝메뉴 -->
					</div>
					<div class="btndiv">
						<button class="btn" d-flex="" justify-content-end=""
							onclick="location.href='/ongo/history/historylist' ">+
							더보기</button>
					</div>
				</div>
				<!--텝메뉴 내용 들어갑니다~~ -->
				<div class="tab-content">
					<!--판매 -->
					<div class="tab-pane fade active show" id="normal" role="tabpanel"
						aria-labelledby="normal-tab">

						<div class="table-responsive px-2">
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
										<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
											width="50" height="50"></td>
										<td><span class="blue-bold"><a
												href="/ongo/history/dealDetail">상태 좋은 아이폰14pro 팝니다</a></span></td>
										<td><span class="blue-bold">15,000원</span></td>
										<td><span class="blue-bold"> <a
												class="nav-link dropdown-toggle" href="#" role="button"
												data-bs-toggle="dropdown" aria-expanded="false"> user_id
											</a>
												<ul class="dropdown-menu">
													<li><a class="dropdown-item" href="#">쪽지보내기</a></li>
													<li><a class="dropdown-item" href="#">회원정보보기</a></li>
												</ul>
										</span></td>
										<td>2023년 1월 3일</td>
										<td>판매중</td>
									</tr>
									<tr>
										<td><span class="gray-bold">1</span></td>
										<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
											width="50" height="50"></td>
										<td><span class="blue-bold"><a
												href="/ongo/history/dealDetail">상태 좋은 아이폰14pro 팝니다</a></span></td>
										<td><span class="blue-bold">15,000원</span></td>
										<td><span class="blue-bold"> <a
												class="nav-link dropdown-toggle" href="#" role="button"
												data-bs-toggle="dropdown" aria-expanded="false"> user_id
											</a>
												<ul class="dropdown-menu">
													<li><a class="dropdown-item" href="#">쪽지보내기</a></li>
													<li><a class="dropdown-item" href="#">회원정보보기</a></li>
												</ul>
										</span></td>
										<td>2023년 1월 3일</td>
										<td>판매중</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- 구매 -->
						<div class="tab-pane fade" id="corp" role="tabpanel"
							aria-labelledby="corp-tab">
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
										<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
											width="50" height="50"></td>
										<td><span class="blue-bold"><a
												href="/ongo/history/dealDetail">상태 좋은 아이폰14pro 팝니다</a></span></td>
										<td><span class="blue-bold">15,000원</span></td>
										<td><span class="blue-bold"> 
										<a class="nav-link dropdown-toggle" href="#" role="button"
												data-bs-toggle="dropdown" aria-expanded="false"> user_id
											</a>
												<ul class="dropdown-menu">
													<li><a class="dropdown-item" href="#">쪽지보내기</a></li>
													<li><a class="dropdown-item" href="#">회원정보보기</a></li>
												</ul>
										</span></td>
										<td>2023년 1월 3일</td>
										<td>판매중</td>
									</tr>
									<tr>
										<td><span class="gray-bold">1</span></td>
										<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
											width="50" height="50"></td>
										<td><span class="blue-bold"><a
												href="/ongo/history/dealDetail">상태 좋은 아이폰14pro 팝니다</a></span></td>
										<td><span class="blue-bold">15,000원</span></td>
										<td><span class="blue-bold"> <a
												class="nav-link dropdown-toggle" href="#" role="button"
												data-bs-toggle="dropdown" aria-expanded="false"> user_id
											</a>
												<ul class="dropdown-menu">
													<li><a class="dropdown-item" href="#">쪽지보내기</a></li>
													<li><a class="dropdown-item" href="#">회원정보보기</a></li>
												</ul>
										</span></td>
										<td>2023년 1월 3일</td>
										<td>판매중</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- //탭메뉴 끝 -->

				<!-- =========중고거래내역list========= -->

				<div class="deal_history">
					<div class="topnav d-flex  mb-2">
						<div class="me-auto ">
							<h3>중고거래내역</h3>
							<div class="list_button">
								<a href="#home" class="active">판매</a> <a href="#news">구매</a>
							</div>
						</div>
						<div class="btndiv">
							<button class="btn" d-flex="" justify-content-end=""
								onclick="location.href='/ongo/history/historylist' ">+
								더보기</button>
						</div>
					</div>
					<div class="table-responsive px-2">
						<table class="table table-borderless">
							<colgroup>
								<col width="10%">
								<!-- 제품사진 -->
								<col width="10%">
								<!-- 상품명 -->
								<col width="33%">
								<!-- 제목 -->
								<col width="10%">
								<!-- 가격 -->
								<col width="*">
								<!-- 구매자 -->
								<col width="13%">
								<!-- 작성일 -->
								<col width="*%">
								<!-- 거래상태 -->

							</colgroup>

							<thead>
								<tr>
									<th class="table-header" scope="col">상품 사진</th>
									<th class="table-header" scope="col">상품명</th>
									<th class="table-header-title" scope="col">제목</th>
									<th class="table-header" scope="col">가격</th>
									<th class="table-header" scope="col">판매자</th>
									<th class="table-header" scope="col">작성일</th>
									<th class="table-header" scope="col">거래상태</th>
								</tr>
							</thead>
							<tbody>
								<tr>

									<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
										width="50" height="50"></td>
									<td><span class="gray-bold">아이폰</span></td>
									<td><span class="blue-bold"><a
											href="/ongo/history/dealDetail">상태 좋은 아이폰14pro 팝니다</a></span></td>
									<td><span class="blue-bold">15,000원</span></td>
									<td><span class="blue-bold"> <a
											class="nav-link dropdown-toggle" href="#" role="button"
											data-bs-toggle="dropdown" aria-expanded="false"> user_id
										</a>
											<ul class="dropdown-menu">
												<li><a class="dropdown-item" href="#">쪽지보내기</a></li>
												<li><a class="dropdown-item" href="#">회원정보보기</a></li>
											</ul>
									</span></td>

									<td>2023-01-06</td>
									<td>판매중</td>
								</tr>
								<tr>

									<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
										width="50" height="50"></td>
									<td><span class="gray-bold">아이폰</span></td>
									<td><span class="blue-bold"><a
											href="/ongo/history/dealDetail">상태 좋은 아이폰14pro 팝니다</a></span></td>
									<td><span class="blue-bold">15,000원</span></td>
									<td><span class="blue-bold"> <a
											class="nav-link dropdown-toggle" href="#" role="button"
											data-bs-toggle="dropdown" aria-expanded="false"> user_id
										</a>
											<ul class="dropdown-menu">
												<li><a class="dropdown-item" href="#">쪽지보내기</a></li>
												<li><a class="dropdown-item" href="#">회원정보보기</a></li>
											</ul>
									</span></td>
									<td>2023-01-06</td>
									<td>판매중</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<!-- ========= 중고거래내역list끝 ========= -->

			</div>
		</div>


		<!--====== // </div> container=====-->


		<!-- //contents -->



	<!-- Footer -->


	<jsp:include page="../include/footer.jsp" />
	//Footer -->
</body>
</html>