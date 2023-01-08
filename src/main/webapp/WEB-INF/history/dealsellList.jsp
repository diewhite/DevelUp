<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css">
input {
	margin-left: -1px;
}

.search-filter {
	margin-right: 15px;
}

.dropdown-menu {
	width: 10%;
	border: 1px solid #000;
	padding: 0;
	box-shadow: 4px 4px 10px rgb(0 0 0/ 12%);
	border-radius: 0;
	margin-top: -3px !important;
	max-height: 300px;
	overflow: visible !important;
}

.id-link {
	padding: 0.5rem 1rem;
	color: #0d6efd !important;
	font-weight: 600;
	text-decoration: none;
	transition: color .15s ease-in-out, background-color .15s ease-in-out,
		border-color .15s ease-in-out;
}

.board .table td a {
	display: block;
	width: 100%;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: visible;
}

/* 탭메뉴 css 시작 */
.nav {
	flex-flow: row;
	padding-left: 10px;
}

.nav-tabs {
	border-bottom: 1px solid #fff;
}

.nav-tabs .nav-link.active, .nav-tabs .nav-item.show .nav-link {
	border-color: #fff;
	font-weight: 900;
	color: black;
	border-bottom: 3px solid #1B3C88 !important;
}

.nav .nav-item .nav-link {
	width: 100%;
	height: 51px;
	font-size: 18px;
	background: #fff;
	border-color: #fff;
	border-bottom-color: #fff;
}

.table th {
    font-size: 1.125rem;
}

.nav .nav-item .nav-link {
	
}

/* 탭메뉴 css 끝  */

/* 조회테이블 css */

.tableDefault > table {
    width: 100%;
    border-top: 1px solid #111 !important;
}

.tableDefault > table > tbody > tr > th {
    background: #f8f8f8;
    color: #444444;
    font-weight: bold;
    font-size: 15px;
    text-align: center;
    width: 200px;
}

.tableDefault > table > tbody > tr > td, .tableDefault > table > tbody > tr > th {
    padding: 7px 25px;
    vertical-align: middle;
    border-bottom: 1px solid #ddd;
    border-left: 1px solid #ddd;
    height: 45px;
}

.tableDefault > table > tbody > tr > th:first-child, .tableDefault > table > tbody > tr > td:first-child {
    border-left: 0;
}

</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<!-- content -->
	<div id="contents">
		<!-- title -->
		<div class="container">
			<div class="sub_top">
				<h1>판매관리</h1>
			</div>
			<!-- //title -->

			<!--======  <div class="container">  부분부터 복사해서 붙여넣기 하시면 됩니다.======  -->

		
			<!-- =======탭메뉴 시작======= -->

			<div class="topnav">
				<!-- 탭 메뉴 -->
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item" role="presentation">
						<button class="nav-link show active" id="first-tab"
							data-bs-toggle="tab" data-bs-target="#first" type="button"
							role="tab" aria-controls="first" aria-selected="true">판매중</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="second-tab" 
						data-bs-toggle="tab" data-bs-target="#second" type="button" 
						role="tab" aria-controls="second" aria-selected="false">구매종료</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="third-tab" 
						data-bs-toggle="tab" data-bs-target="#third" type="button" 
						role="tab" aria-controls="third" aria-selected="false">거래진행중</button>
					</li>
				</ul>
				<!-- 텝메뉴 -->
			</div>

			<!-- =======탭 메뉴 끝======= -->

				<!-- 조회 테이블 -->
		<div class="tableDefault table-vertical mb30 mt30">
			<table>
				<tbody>
					<tr>
						<th rowspan="3">기간별<br class="visible-xs"> 조회
						</th>
						<td>
							<!-- pc, tablet -->
							<div class="visible-lg visible-md">

								<label class="radio-inline"> <input type="radio"
									value="DA" name="datefield_radio" checked=""> 마감일
								</label> <label class="radio-inline"> <input type="radio"
									value="DB" name="datefield_radio"> 시작일
								</label>
							</div> <!--// pc, tablet --> <!-- 830px이하 mobile -->
							<div class="visible-xs">
								<select name="datefield_select" id="datefield_select"
									class="form-control">
									<option value="DD">낙찰/구매일</option>
									<option value="DA" selected="">마감일</option>
									<option value="DB">시작일</option>
								</select>
							</div> <!--// 830px이하 mobile -->
						</td>
					</tr>
					<tr>
						<td>
							<!-- pc, tablet -->
							<div class="visible-lg visible-md">
								<label class="radio-inline"> <input type="radio"
									name="type_radio" value="all" checked=""> 전체보기
								</label> <label class="radio-inline"> <input type="radio"
									name="type_radio" value="rangedate"> 기간검색
								</label> <label class="radio-inline"> <input type="radio"
									name="type_radio" value="day"> 일별보기
								</label> <label class="radio-inline"> <input type="radio"
									name="type_radio" value="month"> 월별보기
								</label> <label class="radio-inline"> <input type="radio"
									name="type_radio" value="range-7d"> 최근일주일
								</label> <label class="radio-inline"> <input type="radio"
									name="type_radio" value="range-1m"> 최근1개월
								</label> <label class="radio-inline"> <input type="radio"
									name="type_radio" value="range-3m"> 최근3개월
								</label> <label class="radio-inline"> <input type="radio"
									name="type_radio" value="range-6m"> 최근6개월
								</label>
							</div> <!--// pc, tablet --> <!-- 830px이하 mobile -->
							<div class="visible-xs">
								<select name="type_select" id="type_select" class="form-control">
									<option value="all" selected="">전체보기</option>
									<option value="rangedate">기간검색</option>
									<option value="day">일별보기</option>
									<option value="month">월별보기</option>
									<option value="range-7d">최근일주일</option>
									<option value="range-1m">최근1개월</option>
									<option value="range-3m">최근3개월</option>
									<option value="range-6m">최근6개월</option>
								</select>
							</div> <!--// 830px이하 mobile -->
						</td>
					</tr>
					<tr>
						<td>
							<div class="form-inline">
								<div class="input-group date">
									<input id="sdate" name="sdate" type="text"
										class="datepicker tx_c form-control hasDatepicker" value=""
										disabled="">
									<div class="input-group-btn">
										<button class="btn-ico-date"
											onclick="javascript:selDatePicker('sdate');"></button>
									</div>
								</div>
								<span>~</span>
								<div class="input-group date">
									<input id="edate" name="edate" type="text"
										class="datepicker tx_c form-control hasDatepicker" value=""
										disabled="">
									<div class="input-group-btn">
										<button class="btn-ico-date"
											onclick="javascript:selDatePicker('edate');"></button>
									</div>
								</div>
							</div>

						</td>
					</tr>
					<tr>
						<th>검색어</th>
						<td>
							<div class="form-inline">
								<div class="form-group">
									<select name="field" id="field" class="form-control dpInblock">
										<option value="SG" selected="">통합검색</option>
										<option value="SA">물품번호</option>
										<option value="SB">물품제목</option>
										<option value="SC">판매자ID</option>
										<option value="SH">물품내용</option>
									</select>
								</div>
								<p class="visible-xs mb5"></p>
								<div class="form-group">
									<input type="text" class="form-control" name="qry" id="qry"
										value="">
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!--// 조회 테이블 -->



			<!-- =======탭 내용 시작======= -->

			<div class="tab-content">

				<!-- ======= 전체 페이지 갯수 조회 ======= -->

				<div class="board_list">
					<div class="board_info d-flex">
						<div class="total">
							조회하신 조건에 대해 &nbsp; <strong class="blue" id="totalCount"> 9</strong> 건 조회되었습니다.
						</div>
					</div>
				</div>

				<!-- ======= 전체 페이지 갯수 조회 끝======= -->

				<!-- 판매중  -->

				<div class="tab-pane fade active show" id="first" role="tabpanel"
					aria-labelledby="first-tab">

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
											href="/ongo/history/dealDetail">판매중 탭메뉴 내용</a></span></td>
									<td><span class="blue-bold">15,000원</span></td>
									<td><span class="blue-bold"> <a
											class="id-link dropdown-toggle" href="#" role="button"
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

				<!-- 구매종료  -->
				<div class="tab-pane fade" id="second" role="tabpanel"
					aria-labelledby="second-tab">
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
										href="/ongo/history/dealDetail">구매종료 탭 내용</a></span></td>
								<td><span class="blue-bold">15,000원</span></td>
								<td><span class="blue-bold"> <a
										class="id-link dropdown-toggle" href="#" role="button"
										data-bs-toggle="dropdown" aria-expanded="false"> user_id </a>
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
				
				<!-- 거래진행중   -->
				<div class="tab-pane fade" id="third" role="tabpanel"
					aria-labelledby="third-tab">
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
										href="/ongo/history/dealDetail">거래진행중 탭 내용</a></span></td>
								<td><span class="blue-bold">15,000원</span></td>
								<td><span class="blue-bold"> <a
										class="id-link dropdown-toggle" href="#" role="button"
										data-bs-toggle="dropdown" aria-expanded="false"> user_id </a>
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
				
				
				
			</div>	<!-- tab-content 끝  -->
			
		</div>	<!-- 컨테이너 끝  -->
	</div>	<!-- 컨텐츠 끝 -->
	






	<!-- ======= 판매관리 게시판 테이블 시작 ======= -->
	<div class="container">
		<div class="board">
			<table class="table">
				<caption>게시판 목록</caption>
				<colgroup>
					<col width="7%">
					<col width="10%">
					<col width="30%">
					<col width="10">
					<col width="13">
					<col width="10%">
					<col width="10%">

				</colgroup>

				<thead>
					<tr>
						<th scope="col">구분</th>
						<th scope="col">상품사진</th>
						<th scope="col">제 목</th>
						<th scope="col">구매요청</th>
						<th scope="col">작성일</th>
						<th scope="col">거래상태</th>
						<th scope="col">결제여부</th>
					</tr>
				</thead>
				<tbody id="ksicList">
					<tr class="notice">
						<td data-before="구분">중고</td>
						<td data-before="상품사진"><img alt=""
							src="https://i.imgur.com/5Aqgz7o.jpg" width="50" height="50"></td>
						<td data-before="제목"><a href="/ongo/history/dealDetail">아이폰
								팝니다</a></td>
						<td data-before="구매요청"><a class="id-link dropdown-toggle"
							href="#" role="button" data-bs-toggle="dropdown"
							aria-expanded="false"> user_id </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">쪽지보내기</a></li>
								<li><a class="dropdown-item" href="#">회원정보보기</a></li>
							</ul></td>
						<td data-before="작성일">23-01-08</td>
						<td data-before="거래상태">판매중</td>
						<td data-before="결제여부">-</td>
					</tr>


				</tbody>
			</table>
			<!-- ======= 게시판 테이블 끝 ======= -->

			<!-- 페이지네이션 -->
			<div class="pagination">
				<input type="hidden" id="PAGE" name="PAGE" value="1"> <input
					type="hidden" id="CNT_PER_PAGE" name="CNT_PER_PAGE" value="10">
				<input type="hidden" id="START_INDEX" name="START_INDEX" value="">
				<input type="hidden" id="END_INDEX" name="END_INDEX" value="">
				<li class="page-item arr"><a class="page-link"
					href="javascript:fnMovePage(1, fnSearch, 'pagination');"
					aria-label="Previous"> <span class="visually-hidden">처음으로</span>
						<span aria-hidden="true"><i
							class="las la-angle-double-left"></i></span>
				</a></li>
				<li class="page-item active"><a class="page-link"
					href="javascript:fnMovePage(1, fnSearch, 'pagination');">1</a></li>
				<li class="page-item arr"><a class="page-link"
					href="javascript:fnMovePage(1, fnSearch, 'pagination');"
					aria-label="NextEnd"> <span class="visually-hidden">다음으로</span>
						<span aria-hidden="true"><i
							class="las la-angle-double-right"></i></span>
				</a></li>
			</div>
		</div>
	</div>
	<!-- //페이지네이션 -->
	</div>





	<!--====== // </div> container=====-->

	<!-- //contents -->

	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
</body>
</html>