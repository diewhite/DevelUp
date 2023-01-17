<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

<script type="text/javascript">
	//구분 저장공유
	$(document).ready(function() {
		data = "${dealRead.dealType}"
		$("#dealType").val(data).attr("selected", "selected");
		//  #category은 #은 태그내 id를말함 //  어트리뷰트명, 어트리뷰트 속성
	});
	//상품카테고리 저장공유
	$(document).ready(function() { //자바스크립트가 실행되면
		data = "${dealRead.product_category}"
		$("#product_category").val(data).attr("selected", "selected");
		//  #category은 #은 태그내 id를말함 //  어트리뷰트명, 어트리뷰트 속성
	});
</script>

</head>
<body>
	<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

	<!-- content -->
	<div id="contents">
		<!-- title -->
		<div class="sub_top">
			<div class="container">
				<h1>중고</h1>
			</div>
		</div>
		<!-- //title -->

		<!-- 게시판 -->
		<div class="container">
			<form action="/ongo/dealUpdate.do?deal_number=${dealRead.deal_number}" method="post">
				<input type="hidden" name="countPerPage" id="countPerPage"
					value="10"> <input type="hidden" name="zon" id="zon"
					value="">

				<!-- 현재 탭 표시 -->
				<h2 class="visually-hidden">중고</h2>
				<!-- //현재 탭 표시 -->

				<div class="cont-box-inner">
					<div class="tbl grid-layout grid2">
						<div class="grid-item colspan2">
							<label for="select_target_1">구분</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w20">
									<select class="form-select grid-input" title="게시판" id="dealType" name="dealType">
										<option value="중고">중고</option>
										<!--used  sharing-->
										<option value="나눔">나눔</option>
									</select>
								</div>
							</div>
						</div>

						<div class="grid-item colspan2">
							<label for="select_target_1">상품카테고리</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w20">
									<select class="form-select grid-input" title="게시판" id="product_category" name="product_category">
										<option value="디지털&가전">디지털&가전</option>
										<option value="가구&인테리어">가구&인테리어</option>
										<option value="유아동">유아동</option>
										<option value="생활&가공식품">생활&가공식품</option>
										<option value="레져&스포츠">레져&스포츠</option>
										<option value="여성잡화">여성잡화</option>
										<option value="여성의류">여성의류</option>
										<option value="남성잡화">남성잡화</option>
										<option value="남성의류">남성의류</option>
										<option value="게임&취미">게임&취미</option>
										<option value="뷰티&미용">뷰티&미용</option>
										<option value="반려동물용품">반려동물용품</option>
										<option value="도서&티켓&음반">도서&티켓&음반</option>
										<option value="기타">기타</option>
									</select>
								</div>
							</div>
						</div>




						<!--<div class="grid-item colspan2">
								<label for="select_target_1">상태</label>
							 	<div class="tbl-basic-td">
									<div class="input-wrap w20">
										<select class="form-select grid-input" title="상태">
											<option value="01">판매중</option>
											<option value="02">판매완료</option>
										</select>
									</div>
								</div> 
							</div>-->
						<div class="grid-item colspan2">
							<label for="HOFS_DTADR">제목</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w100">
									<input type="text" class="form-control" title="board_title" id="board_title" name="board_title" value="${dealRead.board_title}">
									<!-- <input class="grid-input" type="text" maxlength="500"
											title="board_title" id="board_title" name="board_title"> -->
								</div>
							</div>
						</div>



						<div class="grid-item colspan2">
							<label for="HOFS_DTADR">작성자</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w100">
									<input type="hidden" class="input-wrap w100" id="member_id" name="member_id" value="${dealRead.member_id}">${dealRead.member_id}
								</div>
							</div>
						</div>









						<div class="grid-item colspan2">
							<label for="HOFS_DTADR">금액</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w30 me-4">
									<input type="text" class="form-control" id="product_price" name="product_price" value="${dealRead.product_price}">
									<!-- <input class="grid-input" type="number" maxlength="50"
											title="product_price" id="product_price" name="product_price"> -->
								</div>
								<!--<div class="form-check">
										<input type="checkbox" class="form-check-input" value=" ">
										<label class="form-check-label"> <span class="radio"></span>나눔</label> 
									</div>-->
							</div>
						</div>


						<div class="grid-item colspan2">
							<label for="HOFS_INTR_MTRL_CNTS">내용</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w100">
									<input type="text" class="form-control" id="board_content" name="board_content" value="${dealRead.board_content}">
									<!-- <textarea class="grid-input" role="textbox"
											id="board_content" name="board_content"
											title="board_content" maxlength="1000" rows="5"></textarea> -->
								</div>
							</div>
						</div>

						<div class="grid-item colspan2">
							<label for="HOFS_DTADR">대표사진</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w100">
									<input type="file" class="form-control" id="list_photo" Name="list_photo" value="${dealRead.list_photo}" />
								</div>
								<!-- <input type="file" class="form-control" id="list_photo" Name="list_photo" value=""/> -->
							</div>
						</div>
					</div>


				</div>
		



		<div class="btn-area">
			<button class="btn btn-primary btn-large" type="button"
				onclick="location.href='/ongo/deal_listAll2.do?dealType=all'">리스트</button>
			<button type="submit" class="btn btn-primary btn-large">수정완료</button>
			<!-- 	<button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/dealUpdate.do'">수정완료</button> -->
		</div>
		<div class="btn-area">
			<button class="btn btn-primary btn-danger btn-large" type="button" onclick="location.href='dealDelete.do?deal_number=${dealRead.deal_number}'">삭제</button>
		</div>

	</div>
	</form>
	</div>





	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
</body>
</html>