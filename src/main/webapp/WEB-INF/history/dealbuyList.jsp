<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link type="text/css" rel="stylesheet" href="/ongo/common/css/dealhistory.css">

<style type="text/css">
#invoice {
	
}

.invoice {
	position: relative;
	background-color: #FFF;
	padding: 15px
}

.invoice header {
	padding: 10px 0;
	margin-bottom: 20px;
	border-bottom: 1px solid #3989c6
}

.invoice .company-details {
	text-align: right
}

.invoice .company-details .name {
	margin-top: 0;
	margin-bottom: 0
}

.invoice .contacts {
	margin-bottom: 20px
}

.invoice .invoice-to {
	text-align: left
}

.invoice .invoice-to .to {
	margin-top: 0;
	margin-bottom: 0
}

.invoice .invoice-details {
	text-align: right
}

.invoice .invoice-details .invoice-id {
	margin-top: 0;
	color: #3989c6
}

.invoice main .thanks {
	margin-top: -100px;
	font-size: 2em;
	margin-bottom: 50px
}

.invoice main .notices {
	padding-left: 6px;
	border-left: 6px solid #3989c6
}

.invoice main .notices .notice {
	font-size: 1.2em
}

.invoice table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0;
	margin-bottom: 20px
}

.invoice table td, .invoice table th {
	padding: 15px;
}

.invoice table th {
	white-space: nowrap;
	font-weight: 400;
	font-size: 16px
}

.invoice table td h3 {
	margin: 0;
	font-weight: 400;
	color: #3989c6;
	font-size: 1.2em
}

.invoice table .qty, .invoice table .total, .invoice table .unit {
	text-align: center;
}

.product id {
	text-align: center;
}

.invoice table .no {
	color: #fff;
	font-size: 1.6em;
	background: #3989c6
}

.invoice table .unit {
	background: #ddd
}

.invoice table .total {
	background: #3989c6;
	color: #fff
}

.invoice table tbody tr:last-child td {
	border: none
}

.invoice table tfoot td {
	background: 0 0;
	border-bottom: none;
	white-space: nowrap;
	text-align: right;
	padding: 10px 20px;
	font-size: 1.2em;
	border-top: 1px solid #aaa
}

.invoice table tfoot tr:first-child td {
	border-top: none
}

.invoice table tfoot tr:last-child td {
	color: #3989c6;
	font-size: 1.4em;
	border-top: 1px solid #3989c6
}

.invoice table tfoot tr td:first-child {
	border: none
}

.invoice footer {
	width: 100%;
	text-align: center;
	color: #777;
	border-top: 1px solid #aaa;
	padding: 8px 0
}

@media print {
	.invoice {
		font-size: 11px !important;
		overflow: hidden !important
	}
	.invoice footer {
		position: absolute;
		bottom: 10px;
		page-break-after: always
	}
	.invoice>div:last-child {
		page-break-before: always
	}
}
}
</style>

<script type="text/javascript"> 

/* 거래상태별 게시글 조회  */
var type = "${product_state}" 
$(document).ready(function () {
	$("#product_state").val(type).attr("selected","selected");
	$("#product_state").change(function () {
		location.href="/ongo/history/dealbuyList?member_id=${user.member_id}&product_state="+encodeURI($(this).val());
	})
})

	function fnHome() {
		location.href = '/ongo/index.do';
	}

	function fnLogin() {
		location.href = '/ongo/payment/paymentlist';
	}

</script>
</head>
<body>

		<!-- content -->
	<div id="contents">
		<!-- title -->
		<div class="container">
			<div class="sub_top">
				<h1>구매관리</h1><span>거래요청한 게시글과 거래진행중 및 구매완료 된 게시글을 조회할 수 있습니다.</span>
			</div>
			<!-- //title -->

		<!-- 조회 테이블 시작 -->
			<div class="tableDefault table-vertical mb-5 mt-5">
				<table class="filter-tb">
					<tbody>
						 <tr>
							<th>게시글 조회
							</th>
							<td>
								<div class="form-inline">
									<div class="select ">
										<select class="form-select" id="product_state"
											name="product_state" title="거래상태 조회">
											<option value="all"  >전체</option>
											<option value="판매중">거래요청</option>
											<option value="거래진행중" >거래진행중</option>
											<option value="판매완료" >구매완료</option>
										</select>
									</div>
								</div>
							</td>
						</tr> 
					<!-- 	<tr>
							<th rowspan="2">기간별<br class="visible-xs"> 조회
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
							<th>키워드 검색</th>
							<td>
								<div class="form-inline">
									<div class="form-group">
										<select name="field" id="field" class="form-control dpInblock">
											<option value="SG" selected="">통합검색</option>
											<option value="SA">물품번호</option>
											<option value="SB">물품제목</option>
											<option value="SC">판매자</option>
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
						</tr> -->
					</tbody>
				</table>
			</div>
			<!-- 조회 테이블 끝 -->

				<!-- list 시작 -->

				<div class="table-responsive px-2">
					<div class="sellList">
						<table class="table table-borderless table-hover">
							<thead>
								<tr>
									<th class="table-header" width="5%" scope="col">번호</th>
									<th class="table-header" width="5%" scope="col">구분</th>
									<!-- <th class="table-header" width="10%" scope="col">상품사진</th> -->
									<th class="table-header-title" width="28%" scope="col">제 목</th>
									<th class="table-header" width="*%" scope="col">가격</th>
									<th class="table-header" width="*%" scope="col">판매자</th>
									<th class="table-header" width="*%" scope="col">작성일</th>
									<th class="table-header" width="*%" scope="col">거래상태</th>
									<th class="table-header" width="*%" scope="col">결제상태</th>
								</tr>
							</thead>
							<tbody class="text-center">
							
							<c:forEach var="buylist" items="${buylist }">
							
									<tr>
										<td>${buylist.deal_number }</td>
										<td>${buylist.dealType }</td>
									<!-- 	<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
											width="50" height="50"></td> -->
										<td>${buylist.board_title }</td>
										<td><fmt:formatNumber value="${buylist.product_price }"
												pattern="#,###원" /></td>
										
										<td>${buylist.member_id }</td>
										<td>${buylist.write_date }</td>
										<c:choose>
											<c:when test="${buylist.product_state=='판매중' }">
												<td>거래요청중</td>
											</c:when>
											<c:when test="${buylist.product_state=='거래진행중' }">
												<td>거래진행중</td>
											</c:when>
												<c:when test="${buylist.product_state=='판매완료' }">
												<td>구매완료</td>
											</c:when>
										</c:choose>
										<!-- payment의 board_number와 buylist의 deal_number가 같을 경우 -->
										<!-- ${pay.pay_state} == '결제대기' -->
										<c:choose>
										<c:when test="${buylist.product_state=='거래진행중' }">
											<td><a
												href="/ongo/payment/payInfoList?member_id=${user.member_id}&board_number=${buylist.deal_number }">
													<button type='button'
														class="btn btn-info paybtn text-white">결제하기</button>
											</a></td>
										</c:when>
										<c:when test="${buylist.product_state=='판매완료' }">
											<td>결제완료</td>
										</c:when>
										<c:otherwise>
												<td> - </td>
											</c:otherwise>
										</c:choose>
									</tr>
								
							</c:forEach>
							
							</tbody>
						</table>



						<!-- 페이지네이션 시작 -->
						<!-- <div class="pagination">
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
						</div> -->
						<!-- //페이지네이션 끝  -->

					</div>
				</div>
				
				<!-- list 끝   -->

		</div>
		<!-- 컨테이너 끝  -->
	</div>
	<!-- 컨텐츠 끝 -->

<!-- <!-- 
payment modal
	<div class="modal fade" id="paymentModal" tabindex="-1"
		aria-labelledby="Modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="modal-tit">
						<h2 class="h3 ms-4">결제창</h2>
					</div>
					<div class="login_container container">
			현재 탭 표시
			<h2 class="visually-hidden">결제</h2>
			//현재 탭 표시
			<div class="payment_wrap">
				<div id="invoice">
					<div class="invoice overflow-auto">
						<div style="">
							<header>
								<div class="row">
									<div class="col-md-9">
										<div>주문번호 :2042-122123</div>
										<div>거래일자 :23.01.06</div>

									</div>
									<div class="col-md-3"></div>
								</div>
							</header>
							<main>
								<div class="row">
									<div class="col-md-2">
										<img
											src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR6NbjHprfrQQnPnli8KD6Twz0f83FurA6s2trUKBBnwEfcci59kOrPEV2tGgAG1T0Qr879b6pPOw&amp;usqp=CAc"
											width="auto," height="100px/">
									</div>
									<div class="col-md-7">
										<h3 class="invoice-id">A급 아이폰팝니다.</h3>
									</div>

									<table border="0" cellspacing="0" cellpadding="0"
										class="table table-borderless table-hover">
										<thead>
											<tr>

												<th class="table-header" scope="col">구분</th>
												<th class="table-header-title" scope="col">제 목</th>
												<th class="table-header" scope="col">판매가격</th>
												<th class="table-header" scope="col">판매자</th>
												<th class="table-header" scope="col">작성일</th>


											</tr>
										</thead>
										<tbody class="text-center">

											<tr>
												<td>나눔</td>

												<td>강아지 목줄 나눔해요</td>
												<td>0원</td>

												<td>id</td>
												<td>2022-01-01</td>
											</tr>

										</tbody>
										<tfoot>

											<tr>
												<td></td>
											</tr>
											<tr>
												<td colspan="3"></td>
												<td colspan="">결제금액</td>
												<td>30,000원</td>

											</tr>
										</tfoot>
									</table>

								</div>
							</main>

						</div>
						DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom
						<div></div>
					</div>
				</div>

			</div>
			<div class="btn-area">
				<button type="button" class="btn btn-primary btn-large me-md-2"
					onclick="fnLogin()">결제</button>
				<button type="button" class="btn btn-outline-secondary btn-large"
					onclick="fnHome()">취소</button>
			</div>
		</div>
					닫기버튼
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<i class="las la-times"></i>
					</button>
					//닫기버튼
				</div>
			</div>
		</div>
	</div>
	//user info modal

 --> 

		
		
		

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>