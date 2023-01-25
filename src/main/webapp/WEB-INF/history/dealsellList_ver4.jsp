<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

<link type="text/css" rel="stylesheet"
	href="/ongo/common/css/dealhistory.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">
	mystate = "";
	/* 1. 거래상태별 게시글 조회  */
	var type = "${product_state}"
	console.log(mystate)
	var trobj;
	$(document)
			.ready(
					function() {
						$("#product_state").val(type).attr("selected",
								"selected");
						$("#product_state")
								.change(
										function() {

											location.href = "/ongo/history/dealsellList?member_id=${user.member_id}&product_state="
													+ encodeURI($(this).val());
										})

						/* 2. 판매중 list > 거래요청한 유저 정보보기 - ajax로 통신  */
						$(".showReqID")
								.on(
										"click",
										function() {
											trobj = $(this).closest("tr")
													.next()

											//버튼과 가장 가까운 tr 태그의 다음 tr 태그를 선택 
											// => 버튼 클릭할 때마다 거래요청id tr 이 보이거나 닫힘  
											reqtr = $(this).closest("tr")
													.next()
											//	= 거래요청 tr  
											num = reqtr.attr("id")
											//	= 거래요청 tr의 id의 속성 값 = 게시글 번호 
											datanode = $(reqtr).children()
													.find(".reqdata")
											// 거래요청 tr의 자식 노드 중 reqdate 라는 클래스명을 가진 자식노드 찾음 
											// = ajax를 통해 가져올 데이터가 출력될 부분  
											// $(datanode).html(num+"<span>번 게시글/////</span>") 
											//ajax요청결과를 datanode에 출력하기

											state = $(this).closest("tr");
											mystate = state.attr("id");

											$
													.ajax({
														url : "/ongo/history/dealReqinfo",
														type : "get",
														data : {
															"deal_number" : num
														},
														success : function(data) {

															if (data.length != 0) {
																trobj.toggle()

																$(".reqdata")
																		.empty();
																/* 3. 구매요청 list > 구매요청한 유저 정보 출력   */
																for (i = 0; i < data.length; i++) {

																	/* (1) 거래상태가 '거래진행중'일 경우 */
																	if (mystate == '거래진행중') {

																		/* (1) - 1 ) 구매요청한 사람 = 구매자인 경우 */
																		if (data[i].req_id == data[i].buyer_id) {

																			dealreqinfo = "";

																			var dealcancle = "/ongo//history/dealcancle?&deal_number="
																					+ data[i].deal_number

																			dealreqinfo = "<tr ><td id='no'>"
																					+ data[i].deal_number
																					+ "</td><td id='date'>"
																					+ data[i].req_time
																					+ "</td><td id='id'>"
																					+ data[i].req_id
																					+ "</td><td id='deal-btn'><a class='dealcancle' href='"+dealcancle+"'><button type='button' class='btn btn-warning'"
																					+ ">거래취소</button></a></td></tr>"

																			$(".dealcancle").on("click",function() {
																				alert("거래가 취소되었습니다.")})

																			/* (1) - 2 ) 구매요청한 사람 =/= 구매자인 경우 */
																		} else {

																			dealreqinfo = "";

																			dealreqinfo = "<tr ><td id='no'>"
																					+ data[i].deal_number
																					+ "</td><td id='date'>"
																					+ data[i].req_time
																					+ "</td><td id='id'>"
																					+ data[i].req_id
																					+ "</td><td id='deal-btn'><button type='button' class='btn btn-outline-secondary'"
																					+">선택불가</button></td></tr>"

																		}

																		/* (2) 거래상태가 '판매중'일 경우 */
																	} else if (mystate == '판매중') {

																		dealreqinfo = "";

																		var url_string = "/ongo/history/choicebuyer?dealreq_no="
																				+ data[i].dealreq_no
																				+ "&req_id="
																				+ data[i].req_id
																				+ "&deal_number="
																				+ data[i].deal_number
																				+ "&member_id=${user.member_id}"

																		dealreqinfo = "<tr ><td id='no'>"
																				+ data[i].deal_number
																				+ "</td><td id='date'>"
																				+ data[i].req_time
																				+ "</td><td id='id'>"
																				+ data[i].req_id
																				+ "</td><td id='deal-btn'><a href='"+ url_string +"'><button type='button' class='btn btn-info dealbtn text-white'"
																				+ ">거래하기</button></a></td></tr>"

																		/* (3) 거래상태가 '판매종료'일 경우 */
																	} else {

																		dealreqinfo = "";

																		dealreqinfo = "<tr ><td></td><td></td><td rowspan='2'><span>거래가 완료된 게시물입니다.</span></td></tr>"

																	}

																	$(".reqdata").append(
																		dealreqinfo);
																} //for문 end

															} else { //=(data.length == 0)  
																alert("거래요청 내역이 존재하지 않습니다.")

															} // 제일 바깥 if문 end

														},//success의 end
														error : function(a, b,
																c) {
															alert("오류발생" + a
																	+ b + c)
														} //end error			
													}) //end ajax					
										}) //end click

					}) //end ready
</script>
</head>
<body>
	<!-- content -->
	<div id="contents">
		<!-- title -->
		<div class="container">
			<div class="sub_top">
				<h1>판매관리</h1>
				<span> 내가 게시한 판매글을 조회할 수 있습니다.</span>
			</div>
			<!-- //title -->

			<!-- 조회 테이블 시작 -->
			<div class="tableDefault table-vertical mb-5 mt-5">
				<table class="filter-tb">
					<tbody>
						<tr>
							<th>게시글 조회</th>
							<td>
								<div class="form-inline">
									<div class="select ">
										<select class="form-select" id="product_state"
											name="product_state" title="거래상태 조회">
											<option value="all">전체</option>
											<option value="판매중">판매중</option>
											<option value="거래진행중">거래진행중</option>
											<option value="판매완료">판매완료</option>
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
								<th class="table-header" scope="col" width="5%">번호</th>
								<th class="table-header" scope="col" width="5%">구분</th>
							<!-- 	<th class="table-header" scope="col" width="10%">상품사진</th> -->
								<th class="table-header-title" scope="col" width="28%">제 목</th>
								<th class="table-header" scope="col" width="8%">가격</th>
								<th class="table-header" scope="col" width="10%">구매요청</th>
								<th class="table-header" scope="col" width="8%">구매자</th>
								<th class="table-header" scope="col" width="*">작성일</th>
								<th class="table-header" scope="col" width="*">거래상태</th>
								<!-- <th class="table-header" scope="col" width="*">결제상태</th>  -->
							</tr>
						</thead>
						<tbody class="text-center">

							<c:forEach var="sellList" items="${sellList }">

								<tr id="${sellList.product_state}">
									<td>${sellList.deal_number }</td>
									<td>${sellList.dealType }</td>
								<!-- 	<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
										width="50" height="50"></td> -->
									<td><a
										href="/ongo/dealRead.do?deal_number=${sellList.deal_number}&state=READ">${sellList.board_title}</a></td>
									<td><fmt:formatNumber value="${sellList.product_price}"
											pattern="#,###원" /></td>
									<td>
										<button class="showReqID">요청ID보기</button>
									</td>
									<c:choose>
										<c:when test="${sellList.product_state=='판매중' }">
											<td>-</td>

										</c:when>
										<c:otherwise>
											<td><span class="blue-bold"> <a
													class="id-link dropdown-toggle" href="#" role="button"
													data-bs-toggle="dropdown" aria-expanded="false">
														${sellList.buyer_id } </a> 
													<c:choose>
														<c:when test="${sellList.product_state=='판매완료' }">
															<!-- <ul class="dropdown-menu">
																<li><a class="dropdown-item" href="#">쪽지보내기</a></li> 
																</li>
															</ul> -->
														</c:when>
														<c:when test="${sellList.product_state=='거래진행중' }">
														<ul class="dropdown-menu">
															<li><a class="dropdown-item"
																href="/ongo/payment/payRequest?seller_id=${user.member_id}&buyer_id=${sellList.buyer_id }&board_number=${sellList.deal_number}&product_price=${sellList.product_price}">결제요청하기</a>
															</li>
														<!-- 	<li><a class="dropdown-item" href="#">쪽지보내기</a></li>  -->
														</ul>
													</c:when>
													</c:choose> 
													
											</span></td>
										</c:otherwise>
									</c:choose>
									<td>${sellList.write_date }</td>
									<td>${sellList.product_state }</td>
									<%-- <td>${sellList.pay_state }</td> --%>


								</tr>


								<!-- 거래요청 tr = reqtr -->
								<tr id="${sellList.deal_number}" style="display: none;">
									<td colspan="8">
										<table>
											<thead>
												<tr>
													<th scope="col" width="10%">글번호</th>
													<th scope="col" width="20%">날짜</th>
													<th scope="col" width="30%">요청ID</th>
													<th scope="col" width="*">거래하기</th>
												</tr>
											</thead>

											<tbody class="reqdata">
												<!-- ajax 데이터가 출력될 부분 -->

											</tbody>
										</table>
									</td>
								</tr>


							</c:forEach>
							<!-- sellList  -->



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



	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
</body>
</html>


