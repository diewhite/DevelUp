<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link type="text/css" rel="stylesheet" href="/ongo/common/css/dealhistory.css">

<script type="text/javascript"> 

/* 거래상태별 게시글 조회  */
var type = "${product_state}" 
$(document).ready(function () {
	$("#product_state").val(type).attr("selected","selected");
	$("#product_state").change(function () {
		location.href="/ongo/history/dealbuyList?member_id=${user.member_id}&product_state="+encodeURI($(this).val());
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
									<th class="table-header" width="10%" scope="col">상품사진</th>
									<th class="table-header-title" width="28%" scope="col">제 목</th>
									<th class="table-header" width="*%" scope="col">가격</th>
									<th class="table-header" width="*%" scope="col">판매자</th>
									<th class="table-header" width="*%" scope="col">작성일</th>
									<th class="table-header" width="*%" scope="col">거래상태</th>
									<th class="table-header" width="*%" scope="col">결제여부</th>
								</tr>
							</thead>
							<tbody class="text-center">
							
							<c:forEach var="buylist" items="${buylist }">
							
									<tr>
										<td>${buylist.deal_number }</td>
										<td>${buylist.dealType }</td>
										<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
											width="50" height="50"></td>
										<td>${buylist.board_title }</td>
										<td><fmt:formatNumber value="${buylist.product_price }"
												pattern="#,###원" /></td>
										
										<td>${buylist.member_id }</td>
										<td>${buylist.write_date }</td>
										<td>${buylist.product_state }</td>
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
						<!-- //페이지네이션 끝  -->

					</div>
				</div>
				
				<!-- list 끝   -->

		</div>
		<!-- 컨테이너 끝  -->
	</div>
	<!-- 컨텐츠 끝 -->














		
		
		

    <!--====== // </div> container=====-->
<!-- //contents -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>