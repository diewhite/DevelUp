<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
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
<script>

	

	function paycomplete() {
		confirm("결제하시겠습니까?")
		          
	}

	function paycancle() {
		alert("결제가 취소되었습니다.")
		location.href = "/ongo/history/dealbuyList?member_id=${user.member_id}&product_state=all";
	}
</script>
</head>
<body>
	<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->
<c:forEach var="payInfoList" items="${payInfoList }">
	<!-- content -->
	<div id="contents">
		<!-- title -->
		<div class="sub_top center">
			<div class="login_container container">
				<h1>결제창</h1>
			</div>
		</div>
		<!-- //title -->

		<!-- 게시판 -->
		<div class="login_container container">
			
				<!-- 현재 탭 표시 -->
				<h2 class="visually-hidden">결제</h2>
				<!-- //현재 탭 표시 -->
				<div class="login_wrap">
					<div id="invoice">
						<div class="invoice overflow-auto">
							<div style="">
								<header>
									<div class="row">
										<div class="col-md-9">
											<div>주문번호 : ${payInfoList.pay_number}</div>
											<div>거래일자 : ${payInfoList.pay_date }</div>
										</div>
										<div class="col-md-3"></div>
									</div>
								</header>
								<main>

									<div class="row">
										<%-- <div class="col-md-2">
											<img
												src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR6NbjHprfrQQnPnli8KD6Twz0f83FurA6s2trUKBBnwEfcci59kOrPEV2tGgAG1T0Qr879b6pPOw&amp;usqp=CAc"
												width="auto," height="100px/"> 
										</div>
										<div class="col-md-7 mb-3">
											<h3 class="invoice-id">${payInfoList.board_title }</h3>
										</div> --%>

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
													<td>${payInfoList.dealType }</td>

													<td>${payInfoList.board_title }</td>
													<td><fmt:formatNumber value="${payInfoList.product_price }"
												pattern="#,###원" /></td>

													<td>${payInfoList.seller_id}</td>
													<td>${payInfoList.write_date }</td>
												</tr>

											</tbody>
											<tfoot>

												<tr>
													<td></td>
												</tr>
												<tr>
													<td colspan="3"></td>
													<td colspan="">결제금액</td>
													<td><fmt:formatNumber value="${payInfoList.product_price }"
												pattern="#,###원" /></td>

												</tr>
											</tfoot>
										</table>

									</div>

								</main>
							</div>
						</div>
					</div>
				</div>

			
		</div>
		<!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->
		<div></div>
	</div>

	<div class="btn-area">
		<button type="button" class="btn btn-primary btn-large me-md-2"
			onclick="location.href = '/ongo/payment/PayComplete?board_number=${payInfoList.board_number}'  ">결제</button>
		<button type="button" class="btn btn-outline-secondary btn-large"
			onclick="paycancle()">취소</button>
	</div>
</c:forEach>

	<!-- // contents -->


	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->



</body>
</html>