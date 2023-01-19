<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

<link type="text/css" rel="stylesheet" href="/ongo/common/css/dealhistory.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">
	
	/* 거래상태별 게시글 조회  */
	var type = "${auction_state}" 
	$(document).ready(function () {
		$("#auction_state").val(type).attr("selected","selected");
		$("#auction_state").change(function () {

			location.href="/ongo/history/auctionsellList?member_id=${user.member_id}&auction_state="+encodeURI($(this).val());
		})
	})
	
	
	
	/* 판매중 게시글 list > 거래요청한 유저 정보보기 - ajax로호 통신  */
	$(document).ready(function() {

		$(".showdata").on("click", function() {
			$(this).closest("tr").next().toggle()
			//버튼과 가장 가까운 tr 태그의 다음 tr 태그를 선택 
			// => 버튼 클릭할 때마다 거래요청id tr 이 보이거나 닫힘  
			reqtr = $(this).closest("tr").next()
			//	= 거래요청 tr  
			num = reqtr.attr("id")
			//	= 거래요청 tr의 id의 속성 값 = 게시글 번호 
			 datanode = $(reqtr).children().find(".reqdata")
			// 거래요청 tr의 자식 노드 중 reqdate 라는 클래스명을 가진 자식노드 찾음 
				// = ajax를 통해 가져올 데이터가 출력될 부분  
			// $(datanode).html(num+"<span>번 게시글/////</span>") 
			//ajax요청결과를 datanode에 출력하기
			

			$.ajax({
				url : "/ongo/history/dealReqinfo",
				type : "get",
				data : {
					"deal_number" : num
				},
				success : function(data) {
					 
					console.log("ajax success//////:",data)
					
				  userinfo = "";
				for(i=0; i<data.length; i++){
				
					/* userinfo=userinfo+"<li>"+data[i]+"</li>"	 */
					
				console.log("ajax success/2/:",data[i].req_id)
				
				userinfo = userinfo +
				"<tr ><td id='no'>"+data[i].aut_number
					+"</td><td id='date'>"+data[i].req_time
					+"</td><td id='id'>"+data[i].req_id
					+"</td><td id='chat-btn'><button type='button' class='btn btn-primary'"
					+"onclick='#'>쪽지보내기</button></td>"
					+"<td id='deal-btn'><button type='button' id='"+data[i].req_id+"' class='btn btn-info dealbtn text-white'"
					+">거래하기</button></td></tr>"
					
					console.log("ajax success///33:",data[i].req_id)
					
					var req_id = data[i].req_id
					var test ="test"
					
					 $(document).on("click","button[id='test']",function() {
						//console.log(data[i].req_id, data[i].deal_number)
						/* location.href="/ongo/history/choicebuyer?req_id="+data[i].req_id+"&deal_number="+data[i].deal_number */	
						//var string = "/ongo/history/choicebuyer?req_id="+data[i].req_id+"&deal_number="+data[i].deal_number
						console.log(test)
								
				})
					
				} 
					 $(".reqdata").empty();
					$(".reqdata").append(userinfo); 
					
					
					
				},
				error : function(a, b, c) {
					alert("오류발생" + a + b + c)
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
				<h1>경매관리</h1>
			</div>
			<!-- //title -->

	<button onclick="location.href='/ongo/history/choicebuyer' ">구매하기 버튼 클릭하면?</button>


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
										<select class="form-select" id="auction_state"
											name="auction_state" title="거래상태 조회">
											<option value="all"  >전체</option>
											<option value="경매중">경매중</option>
											<option value="경매종료" >경매종료</option>
											<option value="거래진행중"  >거래진행중</option>
										</select>
									</div>
								</div>
							</td>
						</tr> 
						<tr>
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
											<option value="SC">입찰ID</option>
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


				<!-- list 시작 -->

				<div class="table-responsive px-2">
					<div class="sellList">
						<table class="table table-borderless table-hover">
							<colgroup>
								<col width="5%">
								<!-- 번호 -->
								<col width="5%">
								<!-- 구분 -->
								<col width="10%">
								<!-- 상품사진 -->
								<col width="28%">
								<!-- 제 목 -->
								<col width="8%">
								<!-- 가격 -->
								<col width="10%">
								<!-- 구매요청 -->
								<col width="8%">
								<!-- 구매자 -->
								<col width="*">
								<!-- 작성일 -->
								<col width="*">
								<!-- 거래상태 -->
								<col width="*">
								<!-- 결제여부 -->
							</colgroup>
							<thead >
								<tr >
									<th class="table-header" scope="col">번호</th>
									<th class="table-header" scope="col">구분</th>
									<th class="table-header" scope="col">상품사진</th>
									<th class="table-header-title" scope="col">제 목</th>
									<th class="table-header" scope="col">시작가</th>
									<th class="table-header" scope="col">입찰내역</th>
									<th class="table-header" scope="col">작성일</th>
									<th class="table-header" scope="col">거래상태</th>
									<th class="table-header" scope="col">낙찰</th>
									<th class="table-header" scope="col">결제여부</th>
								</tr>
							</thead>
							<tbody class="text-center">

								<c:forEach var="sellList" items="${sellList }">

									<tr>
										<td>${sellList.deal_number }</td>
										<td>${sellList.dealType }</td>
										<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg"
											width="50" height="50"></td>
										<td><a
											href="/ongo/dealRead.do?deal_number=${auctsell_List.auction_number}&state=READ'">${auctsell_List.auction_title}</a></td>
										<td><fmt:formatNumber value="${sellList.product_price}"
												pattern="#,###원" /></td>
										<td>
											<button class="showdata">입찰내역보기</button>
										</td>
										<td>구매자id</td>
										<td>${sellList.write_date }</td>
										<td>${sellList.product_state }</td>
										<td>-</td>ㅋ
									</tr>
									
									
									<!-- 거래요청 tr = reqtr -->
									<tr id="${sellList.deal_number}" style="display: none;">
										<td colspan="10">
											<table>
												<colgroup>
													<col width="10%">
													<!-- 글번호 -->
													<col width="20%">
													<!-- 날짜 -->
													<col width="30%">
													<!-- 요청id -->
													<col width="20%">
													<!-- 요청날짜&시간 -->
													<col width="*">
													<!-- 쪽지보내기 버튼 -->
												
												</colgroup>
												<thead>
													<tr >
														<th scope="col">글번호</th>
														<th scope="col">날짜</th>
														<th scope="col">요청ID</th>
														<th scope="col">쪽지</th>
														<th scope="col" >거래하기</th>
													</tr>
												</thead>
											
												<tbody class="reqdata"> 
												
												 
														
														
													
												
												   
														<!--test ver.원본 시작 -->
												<!-- 	<tr>
														 <td colspan="4" id="reqUserInfo">
															<div class="reqdata">
															ajax 내용 들어갈 부분	
															</div>
														</td> 
													</tr> -->
														<!-- test ver.원본 끝 -->
														
														<!--test ver.2 시작 -->
													<!-- <tr >
														<td id="date">${reqinfo.req_date }</td>
														<td id="id">${reqinfo.id }</td>
														<td id="chat-btn"></td>
														<td id="deal-btn"></td>											
													</tr> 	 -->
														<!-- test ver.2 끝 -->
														
												
														
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
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
</body>
</html>
