<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<style type="text/css">
.notetitle{
white-space:nowrap;
text-overflow: ellipsis;
overflow: hidden;
}
</style>
</head>
<body>
	<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

	<!-- content -->
	<div id="contents">
		<!-- title -->
		<div class="sub_top">
			<div class="container">
				<h1>보낸쪽지함</h1>
			</div>
		</div>
		<!-- //title -->

		<!-- container -->
		<div class="container">


			<div class="board_list">
				<div class="board_info d-flex">
					<div class="total">
						전체 <strong class="blue" id="totalCount">${count }</strong> 건 (페이지 <strong
							class="blue" id="nowpage">${page }</strong>/<span id="endpage">${endpage }</span>)
					</div>
						<div class="form_box">
	                        <fieldset>
	                            <legend class="visually-hidden">검색</legend>
	                            <div class="input-group">
	                                <div class="select">
	                                    <label class="visually-hidden" for="category">검색 구분</label>
	                                    <select class="form-select" id="category" title="검색구분선택" name="category">
	                                        <option value="content">내용</option>
	                                        <option value="receive_id">받는사람</option>
	                                    </select>
	                                </div>
	                                <input type="text" class="form-control" name="keyword" id="keyword" title="검색어 입력" placeholder="검색어를 입력하세요." value="${keyword }">
	                                <input type="text" hidden="true" name="send_id" value=${user.member_id }>
	                                <button type="button" class="btn btn-search" onclick="selectPage()"><i class="las la-search"></i> 검색</button>
	                            </div>
	                        </fieldset>
	                    </div>
				</div>
			</div>
			<div class="board">
				<table class="table">
					<caption>보낸쪽지 목록</caption>
					<colgroup>
						<col width="10%">
						<col width="15%">
						<col width="*%">
						<col width="20%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">받는사람</th>
							<th scope="col">내용</th>
							<th scope="col">보낸시간</th>
							<th scope="col">삭제</th>
						</tr>
					</thead>
					<tbody id="ksicList">
					<!-- Dummy list
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
 							-->
					<c:forEach var="note" items="${notelist }">
						<tr onclick="modalData(this)" class="notice">
 							<td data-before="쪽지번호">${note.no }</td>
 							<td data-before="받는사람">${note.receive_id }</td>
 							<td data-before="내용" class="notetitle">
								<a href="#" title="쪽지읽기 팝업" data-bs-toggle="modal"
								 data-bs-target="#sendModal">
								${note.content }</a>
							</td>
							<td data-before="보낸시간">${note.send_time }</td>
							<td data-before="삭제" id="deletenote">
							<a class="board_label red text-white" href="/ongo/mypage/note/deleteNote?no=${note.no }&page=send"
							style="width:0%;"
							>삭제</a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>


				<!-- 페이지네이션 -->
				<div class="pagination">
					<input type="hidden" id="page" name="page" value="1"> <input
						type="hidden" id="CNT_PER_PAGE" name="CNT_PER_PAGE" value="">
					<input type="hidden" id="START_INDEX" name="START_INDEX" value="">
					<input type="hidden" id="END_INDEX" name="END_INDEX" value="">
					<li class="page-item arr"><a class="page-link"
						href="javascript:fnMovePage(1, fnSearch, 'pagination');"
						aria-label="Previous"> <span class="visually-hidden">처음으로</span>
							<span aria-hidden="true"><i
								class="las la-angle-double-left"></i></span>
					</a></li>
					
					<c:forEach begin="1" end="${endpage }" var="p" >
						<c:if test="${keyword==null }">
							<c:choose>
								<c:when test="${p==page }">
									<li class="page-item active"><a class="page-link"
									href="/ongo/mypage/note/sendbox?id=${user.member_id }&page=${p}&perpage=5">${p }</a></li>
								</c:when>
								<c:when test="${p!=page }">
									<li class="page-item active"><a class="page-link"
									href="/ongo/mypage/note/sendbox?id=${user.member_id }&page=${p}&perpage=5"><b>${p }</b></a></li>
								</c:when>
							</c:choose>
						</c:if>
						<c:if test="${keyword!=null }">
							<c:choose>
								<c:when test="${p==page }">
									<li class="page-item active"><a class="page-link"
									href="/ongo/mypage/note/searchSendBox?send_id=${user.member_id }&category=${category }&keyword=${keyword }&page=${p}&perpage=5">${p }</a></li>
								</c:when>
								<c:when test="${p!=page }">
									<li class="page-item active"><a class="page-link"
									href="/ongo/mypage/note/searchSendBox?send_id=${user.member_id }&category=${category }&keyword=${keyword }&page=${p}&perpage=5"><b>${p }</b></a></li>
								</c:when>
							</c:choose>
						</c:if>
					</c:forEach>
					
					<!-- <li class="page-item active"><a class="page-link"
						href="javascript:fnMovePage(1, fnSearch, 'pagination');">1</a></li> -->
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


	<!-- send note modal -->
	<div class="modal fade" id="sendModal" tabindex="-1"
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
								<label for="IUY_CLSS_NM">받는사람</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<span id="sendModal_receive_id"></span>
									</div>
								</div>
							</div>
							<div class="grid-item">
								<label for="IUY_CLSS_CNTS">내 용</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<div class="input-wrap w100">
											<textarea class="grid-input" role="textbox"
												id="sendModal_content" name="HOFS_INTR_MTRL_CNTS"
												title="쪽지내용 입력" maxlength="500" rows="5" readonly="readonly"></textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
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
	<script type="text/javascript">
		$(document).ready(function() {
			var read_cate = "${param.category}";
			if("${param.keyword}"!=""){
				$("#category").val(read_cate);
			} else if ("${param.keyword}"==""){
				$("#category").val("content");
			}
		});
		
		function modalData(clicked_element){
			var row_td = clicked_element.getElementsByTagName("td");
			var row_a = clicked_element.getElementsByTagName("a");
			document.getElementById("sendModal_receive_id").innerHTML = row_td[2].innerHTML;
			document.getElementById("sendModal_content").innerHTML = row_a[0].innerHTML.trim();
		}
		
		function selectPage(){
			if($("#keyword").val()==""){
				location.href = "/ongo/mypage/note/sendbox?id=${user.member_id}";
			} else if($("#keyword").val()!="") {
				location.href = "/ongo/mypage/note/searchSendBox?category="+$("#category").val()+"&send_id=${user.member_id}&keyword="+$("#keyword").val();
			}
		}//end selectPage
	</script>
</body>
</html>