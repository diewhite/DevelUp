<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
.tableDefault>table>tbody>tr>th {
	background: #f8f8f8;
	color: #444444;
	font-weight: bold;
	font-size: 15px;
	text-align: center;
	width: 200px;
}

.tableDefault>table>tbody>tr>td, .tableDefault>table>tbody>tr>th {
	padding: 7px 25px;
	vertical-align: middle;
	border-bottom: 1px solid #ddd;
	height: 45px;
}

.tableDefault>table {
	width: 100%;
	border-top: 1px solid #ddd !important;
}

.radio-inline {
	margin-right: 20px;
	vertical-align: middle;
}

.datepicker {
	flex: 0 0 auto !important;
	width: 15%;
}

.period {
	float: left;
	width: auto;
	margin-right: 10px;
	vertical-align: middle;
}

.dpInblock {
	width: 10%;
	float: left;
	margin-right: 20px;
}

.inputSearchText {
	width: 20%;
	float: left;
}

/* 조회테이블 css 끝 */

.showdata {
	color: #0d6efd;
}

</style>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
	/* 	$(".showdata").on("click",function(){
			//alert("ok")
			$(this).closest("tr").next().toggle()
			//보기버튼과 가장 가까운 tr태그를 찾아서 그 태그의 다음 태그를 선택    
			reqtr = $(this).closest("tr").next()
			num = reqtr.attr("id")//중고거래 게시글 번호 
			datanode = $(reqtr).children().find(".reqdata")
			//ajax요청결과를 datanode에 출력하기
			$(datanode).html("<h4>data</h4>")
			//alert(num)
			//ajax요청
			//거래신청한 사용자 보기 
			//요청패스, 파라미터 
		}) */
		
		$(".showdata").on("click", function () {
			$(this).closest("tr").next().toggle()	
			//this = 버튼이 있는 td 		toggle()=선택한 요소가 보이면 보이지않게, 보이지않으면 보이게 함 						
			// 버튼 클릭할 때마다 거래요청id tr 이 보이거나 닫힘  
			reqtr = $(this).closest("tr").next()
			//	= 거래요청 tr  
			num = reqtr.attr("id")
			//	= 거래요청 tr의 id의 속성 값 = 게시글 번호 
			datanode = $(reqtr).children().find(".reqdata")
												// = ajax를 통해 가져올 데이터가 출력될 부분  
			// 거래요청 tr의 자식 노드 중 reqdate 라는 클래스명을 가진 자식노드 찾음 
			$(datanode).html(num+"<span>번 게시글</span>")
			/* alert(num) */
			
			$.ajax({
				url:"/ongo/history/dealReq",	
				type: "get",
				date: num,
				success: function(data){
					alert(data)
					$(".reqdata").html("<li>data.req_id</li>") 
				},
				error: function (obj, msg, statusMSG) {
					alert("오류발생"+obj+msg+statusMSG)
				}
				
			})
			
			
		})
		
	})
	
	
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
						<button class="nav-link" id="second-tab" data-bs-toggle="tab"
							data-bs-target="#second" type="button" role="tab"
							aria-controls="second" aria-selected="false">판매종료</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="third-tab" data-bs-toggle="tab"
							data-bs-target="#third" type="button" role="tab"
							aria-controls="third" aria-selected="false">거래진행중</button>
					</li>
				</ul>
				<!-- 텝메뉴 -->
			</div>

			<!-- =======탭 메뉴 끝======= -->

			<!-- 조회 테이블 시작 -->
			<div class="tableDefault table-vertical mb-5 mt-5">
				<table class="filter-tb">
					<tbody>
						<tr>
							<th rowspan="3">기간별<br class="visible-xs"> 조회
							</th>
						</tr>
						<tr>
							<td>
								<div class="visible-lg visible-md">
									<label class="radio-inline"> <input type="radio"
										name="type_radio" value="all" checked=""> 전체보기
									</label> <label class="radio-inline"> <input type="radio"
										name="type_radio" value="month"> 월별보기
									</label> <label class="radio-inline"> <input type="radio"
										name="type_radio" value="range-7d"> 최근일주일
									</label> <label class="radio-inline"> <input type="radio"
										name="type_radio" value="range-1m"> 최근1개월
									</label> <label class="radio-inline"> <input type="radio"
										name="type_radio" value="range-3m"> 최근3개월
									</label>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="form-inline period">
									<label class="radio-inline"><input type="radio"
										name="type" value="rangedate"> 기간검색</label>
									<div class="input-group date period">
										<input id="sdate" name="sdate" type="text"
											class="datepicker tx_c form-control hasDatepicker" value=""
											disabled="">
									</div>
									<div class="period">
										<span>~</span>
									</div>
									<div class="input-group date period">
										<input id="edate" name="edate" type="text"
											class="datepicker tx_c form-control hasDatepicker" value=""
											disabled="">
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
											<option value="SC">구매요청ID</option>
											<option value="SH">물품내용</option>
										</select>
									</div>
									<p class="visible-xs mb5"></p>
									<div class="form-group">
										<input type="text" class="form-control inputSearchText"
											name="qry" id="qry" value="">
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 조회 테이블 끝 -->



			<!-- =======탭 내용 시작======= -->

			<div class="tab-content">

				<!-- ======= 전체 페이지 갯수 조회 ======= -->

				<div class="board_list">
					<div class="board_info d-flex">
						<div class="total">
							조회하신 조건에 대해 &nbsp; <strong class="blue" id="totalCount">
								9</strong> 건 조회되었습니다.
						</div>
					</div>
				</div>

				<!-- ======= 전체 페이지 갯수 조회 끝======= -->


				<!-- 판매중 시작 -->

				<div class="tab-pane fade active show" id="first" role="tabpanel"
					aria-labelledby="first-tab">
					<div class="table-responsive px-2">
						<table class="table table-borderless table-hover">
							<colgroup>
								<col width="5%">
								<!-- 구분 -->
								<col width="10%">
								<!-- 상품사진 -->
								<col width="30%">
								<!-- 제 목 -->
								<col width="10%">
								<!-- 가격 -->
								<col width="10%">
								<!-- 구매요청 -->
								<col width="*">
								<!-- 작성날짜 -->
								<col width="*">
								<!-- 거래상태 -->
								<col width="*">
								<!-- 결제여부 -->
							</colgroup>
							<thead>
								<tr>
									<th class="table-header" scope="col">구분</th>
									<th class="table-header" scope="col">상품사진</th>
									<th class="table-header-title" scope="col">제 목</th>
									<th class="table-header" scope="col">가격</th>
									<th class="table-header" scope="col">구매요청</th>
									<th class="table-header" scope="col">작성날짜</th>
									<th class="table-header" scope="col">거래상태</th>
									<th class="table-header" scope="col">결제여부</th>
								</tr>
							</thead>
							<tbody class="text-center">

								<c:forEach var="sellList" items="${sellList }">

									<tr>
										<td>${sellList.dealType }</td>
										<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
											width="50" height="50"></td>
										<td><a
											href="/ongo/dealRead.do?deal_number=${sellList.deal_number}&state=READ'"">${sellList.board_title}</a></td>
										<td><fmt:formatNumber value="${sellList.product_price}"
												pattern="#,###원" /></td>
										<td>
											<button class="showdata" >요청ID보기</button>											
										</td>
										<td>${sellList.write_date }</td>
										<td>${sellList.product_state }</td>
										<td>-</td>
									</tr>
									
									<tr id="${sellList.deal_number}" style="display: none;">
										<td colspan="8">	
											<table >
												<colgroup>
													<col width="10%">
													<!-- 번호 -->
													<col width="20%">
													<!-- 요청id -->
													<col width="20%">
													<!-- 요청날짜&시간 -->
													<col width="*">
													<!-- 쪽지보내기 버튼 -->
													<col width="*">
													<!-- 거래하기 버튼 -->
												</colgroup>
												<thead hidden="">
													<tr>
														<th scope="col">번호</th>
														<th scope="col">요청ID</th>
														<th scope="col">날짜</th>
														<th scope="col">쪽지</th>
														<th scope="col">거래하기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td colspan="5">
															<div class="reqdata"><!--Ajax를 통해 실제 가져온 데이터가 출력될 곳  --></div>
														</td>
													<%-- <c:forEach var="" items=""> --%>
														<!-- <td>1</td>
														<td>yoon</td>
														<td>2023-01-09 <br> 13:05:54
														</td>
														<td><button>쪽지보내기</button></td>
														<td><button>거래하기</button></td> -->
												<%-- 	</c:forEach> --%>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
				
								</c:forEach>
								<!-- sellList  -->



							</tbody>
						</table>



						<!-- 페이지네이션 시작 -->
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
						<!-- //페이지네이션  -->

					</div>
				</div>
				<!-- 판매중 끝   -->


				<!-- 아코디언 test 끝  -->

				<%-- 						<table class="table table-borderless">
							<colgroup>
								<col width="5%">	<!-- 구분 -->							
								<col width="10%">	<!-- 상품사진 -->						
								<col width="30%">	<!-- 제 목 -->						
								<col width="10%">	<!-- 가격 -->						
								<col width="10%">	<!-- 구매요청 -->						
								<col width="*">		<!-- 요청날짜 -->						
								<col width="*">		<!-- 작성날짜 -->							
								<col width="*">		<!-- 거래상태 -->							
								<col width="*">		<!-- 결제여부 -->
								

							</colgroup>
							<thead>
								<tr>
									<th class="table-header" scope="col">구분</th>
									<th class="table-header" scope="col">상품사진</th>
									<th class="table-header-title" scope="col">제 목</th>
									<th class="table-header" scope="col">가격</th>
									<th class="table-header" scope="col">구매요청</th>
									<th class="table-header" scope="col">요청날짜</th>
									<th class="table-header" scope="col">작성날짜</th>
									<th class="table-header" scope="col">거래상태</th>
									<th class="table-header" scope="col">결제여부</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="sellList" items="${sellList }">
									<tr>
										<td>${sellList.dealType }</td>
										<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
											width="50" height="50"></td>
										<td><a
												href="/ongo/dealRead.do?deal_number=${sellList.deal_number}&state=READ'"">${sellList.board_title}</a></td>
										<td><fmt:formatNumber value="${sellList.product_price}" pattern="#,###원"/></td>
										<td><a
												class="id-link dropdown-toggle" href="#" role="button"
												data-bs-toggle="dropdown" aria-expanded="false"> user_id
											</a>
												<ul class="dropdown-menu">
													<li><a class="dropdown-item" href="#">쪽지보내기</a></li>
													<li><a class="dropdown-item" href="#">회원정보보기</a></li>
												</ul>
										</td>
										<td>${sellList.write_date }</td>
										<td>${sellList.write_date }</td>
										<td>${sellList.product_state }</td>
										<td>-</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<!-- 페이지네이션 시작 -->
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
						<!-- //페이지네이션  -->

					</div>
				</div>
				<!-- 판매중 끝   -->
 --%>
				<!-- 판매종료 시작  -->

				<div class="tab-pane fade" id="second" role="tabpanel"
					aria-labelledby="second-tab">
					<table class="table table-borderless">
						<colgroup>
							<col width="5%">
							<!-- 구분 -->
							<col width="10%">
							<!-- 상품사진 -->
							<col width="35%">
							<!-- 제 목 -->
							<col width="10%">
							<!-- 가격 -->
							<col width="10%">
							<!-- 구매요청 -->
							<col width="*">
							<!-- 날짜 -->
							<col width="*">
							<!-- 거래상태 -->
							<col width="*">
							<!-- 결제여부 -->
						</colgroup>
						<thead>
							<tr>
								<th class="table-header" scope="col">구분</th>
								<th class="table-header" scope="col">상품사진</th>
								<th class="table-header-title" scope="col">제 목</th>
								<th class="table-header" scope="col">가격</th>
								<th class="table-header" scope="col">구매요청</th>
								<th class="table-header" scope="col">날짜</th>
								<th class="table-header" scope="col">거래상태</th>
								<th class="table-header" scope="col">결제여부</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><span class="gray-bold">1</span></td>
								<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
									width="50" height="50"></td>
								<td><span class="blue-bold"><a
										href="/ongo/history/dealDetail">판매종료 탭메뉴 내용</a></span></td>
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
								<td>-</td>
							</tr>

						</tbody>
					</table>

					<!-- 페이지네이션 시작 -->
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
					<!-- //페이지네이션  -->

				</div>
				<!-- 판매종료 끝 -->

				<!-- 거래진행중 시작  -->
				<div class="tab-pane fade" id="third" role="tabpanel"
					aria-labelledby="third-tab">
					<table class="table table-borderless">
						<colgroup>
							<col width="5%">
							<!-- 구분 -->
							<col width="10%">
							<!-- 상품사진 -->
							<col width="35%">
							<!-- 제 목 -->
							<col width="10%">
							<!-- 가격 -->
							<col width="10%">
							<!-- 구매요청 -->
							<col width="*">
							<!-- 날짜 -->
							<col width="*">
							<!-- 거래상태 -->
							<col width="*">
							<!-- 결제여부 -->
						</colgroup>
						<thead>
							<tr>
								<th class="table-header" scope="col">구분</th>
								<th class="table-header" scope="col">상품사진</th>
								<th class="table-header-title" scope="col">제 목</th>
								<th class="table-header" scope="col">가격</th>
								<th class="table-header" scope="col">구매요청</th>
								<th class="table-header" scope="col">날짜</th>
								<th class="table-header" scope="col">거래상태</th>
								<th class="table-header" scope="col">결제여부</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><span class="gray-bold">1</span></td>
								<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
									width="50" height="50"></td>
								<td><span class="blue-bold"><a
										href="/ongo/history/dealDetail">거래진행중 탭메뉴 내용</a></span></td>
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
								<td>-</td>
							</tr>

						</tbody>
					</table>

					<!-- 페이지네이션 시작 -->
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
					<!-- //페이지네이션  -->

				</div>
				<!-- 거래진행중 끝  -->


			</div>
			<!-- tab-content 끝  -->

		</div>
		<!-- 컨테이너 끝  -->
	</div>
	<!-- 컨텐츠 끝 -->















	<!--====== // </div> container=====-->

	<!-- //contents -->

	<!-- Footer -->
	<%-- 	<jsp:include page="../include/footer.jsp" /> --%>
	<!-- //Footer -->
</body>
</html>