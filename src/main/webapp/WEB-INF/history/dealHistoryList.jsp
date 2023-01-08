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

.nav-link {
    padding: 0.5rem 1rem;
    color: #0d6efd !important;
    font-weight: 600;
    text-decoration: none;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out;
}

.board .table td a {
    display: block;
    width: 100%;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: visible;
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
				<h1>중고거래내역</h1>
			</div>
		</div>
		<!-- //title -->

		<!--======  <div class="container">  부분부터 복사해서 붙여넣기 하시면 됩니다.======  -->

		<div class="container">

			<!-- =======검색창 시작======= -->

			<div class="board_list">
				<div class="board_info d-flex">
					<div class="total">
						전체 <strong class="blue" id="totalCount">9</strong> 건 (페이지 <strong
							class="blue" id="nowPage">1</strong>/<span id="resultPage">1</span>)
					</div>
					<div class="form_box justify-content-md-end">
						<div class="search-filter">
							<select>
								<option>상품명</option>
								<option>제목</option>
							</select>
						</div>
						<fieldset>
							<div class="input-group">
								<input type="text" class="form-control" name=" " title="검색어 입력"
									placeholder="검색">
								<button type="button" class="btn btn-search">
									<i class="las la-search"></i> 검색
								</button>
							</div>
						</fieldset>

					</div>
				</div>
			</div>

			<!-- =======검색창 끝======= -->

			<!-- ======= 게시판 테이블 시작 ======= -->
			<div class="board">
				<table class="table">
					<caption>게시판 목록</caption>
					<colgroup>
						<col width="5%">
						<!-- 체크박스 -->
						<col width="6%">
						<!-- 글번호 -->
						<col width="8%">
						<!-- 작성날짜 -->
						<col width="10%">
						<!-- 상품명 -->
						<col width="20%">
						<!-- 제목 -->
						<col width="*">
						<!-- 상품가격 -->
						<col width="*">
						<!-- 거래유형 -->
						<col width="9%">
						<!-- 판매자 -->
						<col width="10%">
						<!-- 거래상태 -->
					</colgroup>

					<thead>
						<tr>
							<th><input type="checkbox" name=" " class="form-check-input"
								onclick="fnChk()"></th>
							<th scope="col">글번호</th>
							<th scope="col">작성일</th>
							<th scope="col">상품명</th>
							<th scope="col">제 목</th>
							<th scope="col">상품가격</th>
							<th scope="col">거래유형</th>
							<th scope="col">판매자</th>
							<th scope="col">거래상태</th>
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
							<td data-before="글번호">1</td>
							<td data-before="작성날짜">22-12-19</td>
							<td data-before="상품명">에어팟</td>
							<td data-before="제목"><a href="/ongo/history/dealDetail">에어팟
									팝니다</a></td>
							<td data-before="상품가격">150,000원</td>
							<td data-before="거래유형">판매/구매</td>
							<td> <a class="nav-link dropdown-toggle" href="#" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> user_id </a>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="#">쪽지보내기</a></li>
										<li><a class="dropdown-item" href="#">회원정보보기</a></li>
									</ul>
							</td>
							<td data-before="거래상태">판매중</td>
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
				<!-- //페이지네이션 -->
			</div>

		</div>

	</div>
	<!-- // container-->



	 <jsp:include page="../include/footer.jsp"/>

</body>
</html>