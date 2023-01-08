<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css">



.mb-3 {
	font-size: 14px;
}

.mt-50 {
	margin-top: 50px;
}

.mb-50 {
	margin-bottom: 50px;
}

.bg-teal-400 {
	background-color: #26a69a;
}

a {
	text-decoration: none !important;
}

hr {
	opacity: .20;
}

.product_img {
	width: 150px;
	height: 150px;
}

.card {
	margin: 0 auto;
}



.board_view_file {
	display: table;
	width: 100%;
	border-top: 1px solid var(- -line-color);
	border-bottom: 1px solid var(- -line-color);
}


.board_view_file .file_left {
	display: table-cell;
	color: #000;
	font-weight: 600;
	font-size: 1.125rem;
	width: 15%;
	padding: 0 20px;
	background: #f6f6f6;
	height: 100%;
	vertical-align: middle;
}

.file_list {
	display: flex;
	flex-wrap: wrap;
	flex-direction: column;
	padding: 20px 30px;
	width: 85%;
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
			<div class="container">
				<h1>결제내역조회</h1>
			</div>
		</div>
		<!-- //title -->

		<!--======  <div class="container">  부분부터 복사해서 붙여넣기 하시면 됩니다.======  -->
		<!-- 결제내역 필터링 -->
		<div class="container">
			<div class="board_view_file" id="fileList">
				<div class="file_left">조회기간</div>
				<ul class="file_list" id="fileListArea">
					<li>
						<button type="button">일주일</button>
						<button type="button">1개월</button>
						<button type="button">3개월</button>
						<button type="button">6개월</button>
					</li>
				</ul>
			</div>
			<div class="board_view_file" id="fileList">
				<div class="file_left">진행상태</div>
				<ul class="file_list" id="fileListArea">
					<li>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="flexCheckDefault"> <label class="form-check-label"
								for="flexCheckDefault"> 결제대기 </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="flexCheckChecked" checked> <label
								class="form-check-label" for="flexCheckChecked"> 결제완료 </label>
						</div>
					</li>
				</ul>
			</div>
			<div class="board_view_file" id="fileList">
				<div class="file_left">상품명 검색</div>
				<ul class="file_list" id="fileListArea">
					<input type="text">
				</ul>
			</div>
	 	</div>

		<!-- //필터링 끝 -->
		<div class="justify-content-center mt-50 mb-50">
			<div class="container">
				<div class="board_info d-flex mb-3">
					<div class="total">
						전체 <strong class="blue" id="totalCount"> 9</strong> 건
					</div>
				</div>
				<div class="col-md-12">
					<div class="card card-body">
						<div
							class="media align-items-center align-items-lg-start text-center text-lg-left flex-column flex-lg-row">
							<div class="col-2 mt-3" style="float: left;">
								<img class="product_img" src="https://i.imgur.com/5Aqgz7o.jpg"
									alt="">
							</div>
							<div class="col-5 ms-4 mt-3 text-start" style="float: left;">
								<h5 class="media-title font-weight-semibold">
									<a href="#" data-abc="true">아이폰 14프로 팝니다</a>
								</h5>
								<ul class="list-inline list-inline-dotted mt-2 mb-3 mb-lg-2">
									<li class="list-inline-item">중고거래</li>
									<li class="list-inline-item">|</li>
									<li class="list-inline-item">2023년 1월 6일</li>
								</ul>
								<div>
									<h5>
										<a href="#"> user_id </a>
									</h5>
								</div>
								<hr>
								<p class="mb-3">
									결제가 완료되었습니다. <br> 구매확정 이후 상품에 관해 궁금한 점과 배송에 대한 문의는 판매자에게
									문의해주세요.
								</p>
							</div>
							<div class="col-2 mt-5 text-center" style="float: left;">
								<div class="mt-4 ms-5">
									<h4>결제완료</h4>
								</div>
							</div>

							<div class="col-2 ms-5 mt-5 text-center" style="float: left;">
								<h3 class="mb-0 font-weight-semibold">700,000원</h3>
								<button type="button" class="btn btn-warning mt-2 text-white">
									<i class="icon-cart-add mr-2"></i> 구매확정
								</button>
								<button type="button" class="btn btn-warning mt-2 text-white">
									<i class="icon-cart-add mr-2"></i> 후기쓰기
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="justify-content-center mt-50 mb-50">
			<div class="container">
				<div class="col-md-12">
					<div class="card card-body">
						<div
							class="media align-items-center align-items-lg-start text-center text-lg-left flex-column flex-lg-row">
							<div class="col-2 mt-3" style="float: left;">
								<img class="product_img" src="https://i.imgur.com/5Aqgz7o.jpg"
									alt="">
							</div>
							<div class="col-5 ms-4 mt-3 text-start" style="float: left;">
								<h5 class="media-title font-weight-semibold">
									<a href="#" data-abc="true">아이폰 14프로 팝니다</a>
								</h5>
								<ul class="list-inline list-inline-dotted mt-2 mb-3 mb-lg-2">
									<li class="list-inline-item">중고거래</li>
									<li class="list-inline-item">|</li>
									<li class="list-inline-item">2023년 1월 6일</li>
								</ul>
								<div>
									<h5>
										<a href="#"> user_id </a>
									</h5>
								</div>
								<hr>
								<p class="mb-3">
									결제가 완료되었습니다. <br> 구매확정 이후 상품에 관해 궁금한 점과 배송에 대한 문의는 판매자에게
									문의해주세요.
								</p>
							</div>
							<div class="col-2 mt-5 text-center" style="float: left;">
								<div class="mt-4 ms-5">
									<h4>결제대기</h4>
								</div>
							</div>

							<div class="col-2 ms-5 mt-5 text-center" style="float: left;">
								<h3 class="mb-0 font-weight-semibold">700,000원</h3>
								<button type="button" class="btn btn-warning mt-2 text-white">
									<i class="icon-cart-add mr-2"></i> 구매확정
								</button>
								<button type="button" class="btn btn-warning mt-2 text-white">
									<i class="icon-cart-add mr-2"></i> 후기쓰기
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>


		<!--====== // </div> container=====-->

<!-- 	</div> -->
	<!-- //contents -->

	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" /> 
	<!-- //Footer -->
</body>
</html>