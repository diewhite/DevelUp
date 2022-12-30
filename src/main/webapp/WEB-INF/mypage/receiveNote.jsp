<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
</head>
<body>
	<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

	<!-- content -->
	<div id="contents">
		<!-- title -->
		<div class="sub_top">
			<div class="container">
				<h1>받은쪽지함</h1>
			</div>
		</div>
		<!-- //title -->

		<!-- container -->
		<div class="container">


			<div class="board_list">
				<div class="board_info d-flex">
					<div class="total">
						전체 <strong class="blue" id="totalCount">9</strong> 건 (페이지 <strong
							class="blue" id="nowPage">1</strong>/<span id="resultPage">1</span>)
					</div>
				</div>
			</div>
			<div class="board">
				<table class="table">
					<caption>받은쪽지 목록</caption>
					<colgroup>
						<col width="5%">
						<col width="10%">
						<col width="10%">
						<col width="*%">
						<col width="10%">
						<col width="5%">
					</colgroup>
					<thead>
						<tr>
							<th><input type="checkbox" name=" " class="form-check-input"
								onclick="fnChk()"></th>
							<th scope="col">번호</th>
							<th scope="col">보낸사람</th>
							<th scope="col">내용</th>
							<th scope="col">보낸시간</th>
						</tr>
					</thead>
					<tbody id="ksicList">
						<tr class="notice">
							<td data-before="체크박스">
								<div class="form-check">
									<label class="form-check-label"> <input type="checkbox"
										name="remember" id="remember" class="form-check-input"
										onclick="fnChk()">
									</label>
								</div>
							</td>
							<td data-before="쪽지번호">1</td>
							<td data-before="보낸사람">박소정</td>
							<td data-before="아이디">
								<button type="text" class="blue"
									onclick="location.href='#'">TEAM1</button>
							</td>
							<td data-before="보낸시간">12/20</td>
							<td data-before="삭제">삭제</td>
						</tr>
												<tr class="notice">
							<td data-before="체크박스">
								<div class="form-check">
									<label class="form-check-label"> <input type="checkbox"
										name="remember" id="remember" class="form-check-input"
										onclick="fnChk()">
									</label>
								</div>
							</td>
							<td data-before="쪽지번호">2</td>
							<td data-before="보낸사람">김태원</td>
							<td data-before="아이디">
								<button type="text" class="blue"
									onclick="location.href='#'">TEAM1</button>
							</td>
							<td data-before="보낸시간">12/22</td>
							<td data-before="삭제">삭제</td>
						</tr>

					</tbody>
				</table>
				<div class="text-right">
					<button type="button" class="btn btn-primary btn-large">
					<a href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#exampleModal">쪽지보내기</button>
				</div>

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
				<!-- //페이지네이션 -->
			</div>
		</div>

	</div>
	<!-- // container-->
	</div>
	<!-- // contents -->

	<!-- modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="Modal" aria-hidden="true">
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
										<span id="IUY_CLSS_NM">닉네임</span>
									</div>
								</div>
							</div>
							<div class="grid-item">
								<label for="IUY_CLSS_CNTS">내용적기</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<div class="input-wrap w100">
											<textarea class="grid-input" role="textbox"
												id="HOFS_INTR_MTRL_CNTS" name="HOFS_INTR_MTRL_CNTS"
												title="쪽지내용 입력" maxlength="500" rows="5"></textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="btn-area">
						<button type="button" class="btn btn-warning text-white btn-large"
							data-bs-dismiss="modal" aria-label="Close">전송</button>
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
	<!-- //modal -->

	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
</body>
</html>