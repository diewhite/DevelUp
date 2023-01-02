<!DOCTYPE html>
<html lang="ko">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body>
	<script>
		$(document)
				.ready(
						function() {
							$('#summernote')
									.summernote(
											{
												placeholder : '입력 바랍니다.',
												tabsize : 4,
												height : 500,
												toolbar : [
														[ 'style', [ 'style' ] ],
														[
																'font',
																[
																		'bold',
																		'underline',
																		'clear' ] ],
														[ 'color', [ 'color' ] ],
														[
																'para',
																[ 'ul', 'ol',
																		'paragraph' ] ],
														[ 'table', [ 'table' ] ],
														[
																'insert',
																[
																		'link',
																		'picture',
																		'video' ] ],
														[
																'view',
																[
																		'fullscreen',
																		'codeview',
																		'help' ] ] ]
											});
						})
		/* $(function() {
			$('#board_content').summernote({
				placeholder : '최대 500자 작성 가능합니다.',
				height : 300,
				lang : 'ko-KR',
				callbacks : {
					onImageUpload : function(files, editor, welEditable) {
						for (var i = files.length - 1; i >= 0; i--) {
							sendFile(files[i], this);
						}
					}
				}
			});
		}); */
	</script>
	<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

	<!-- content -->
	<div id="contents">
		<!-- title -->
		<div class="sub_top">
			<div class="container">
				<h1>중고거래와 나눔을 통해 보다 더 · 당신의 일상과 가깝게</h1>
			</div>
		</div>
		<!-- //title -->

		<!-- 게시판 -->
		<div class="container">
			<form id="searchForm" name="searchForm" action="/ongo/deal_Write.do"
				method="post">
				<input type="hidden" name="countPerPage" id="countPerPage"
					value="10"> <input type="hidden" name="zon" id="zon"
					value="">

				<!-- 현재 탭 표시 -->
				<h2 class="visually-hidden">중고</h2>
				<!-- //현재 탭 표시 -->


				<!-- 로그인시스템 생성전 임시필요 -->
				<div class="cont-box-inner">
					<div class="tbl grid-layout grid2">
						<div class="grid-item colspan2">
							<label for="HOFS_DTADR">임시아이디(작성자)</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w20">
									<input class="grid-input" type="text" maxlength="50" title="id"
										id="id" name="id">
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- // 로그인시스템 생성전 임시필요 -->



				<div class="cont-box-inner">
					<div class="tbl grid-layout grid2">
						<div class="grid-item colspan2">
							<label for="select_target_1">구분</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w20">
									<select class="form-select grid-input" title="게시판"
										id="dealType" name="dealType">
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
									<select class="form-select grid-input" title="게시판"
										id="product_category" name="product_category">
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
									<input class="grid-input" type="text" maxlength="500"
										title="board_title" id="board_title" name="board_title">
								</div>
							</div>
						</div>

						<div class="grid-item colspan2">
							<label for="HOFS_DTADR">상품명</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w100">
									<input class="grid-input" type="text" maxlength="50"
										title="product_name" id="product_name" name="product_name">
								</div>
							</div>
						</div>




						<div class="grid-item colspan2">
							<label for="HOFS_DTADR">금액</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w30 me-4">
									<input class="grid-input" type="number" maxlength="50"
										title="product_price" id="product_price" name="product_price">
								</div>
								<!--<div class="form-check">
										<input type="checkbox" class="form-check-input" value=" ">
										<label class="form-check-label"> <span class="radio"></span>나눔</label> 
									</div>-->
							</div>
						</div>


						<div class="grid-item colspan2">
							<label for="select_target_1">내용</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w100">

									<textarea Name="board_content" class="grid-item colspan10" id="summernote" style="width: 100%;"></textarea>
										<!-- <label for="HOFS_INTR_MTRL_CNTS">내용</label>
										<div class="tbl-basic-td" id="summernote">
									<div class="input-wrap w100" id="summernote">
								
									<textarea class="grid-input" role="textbox" id="summernote"
										name="board_content" title="board_content" maxlength="1000"
										rows="5"></textarea> -->

									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 	<div class="grid-item colspan2">
								<label for="HOFS_DTADR">첨부파일</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<input type="file" class="form-control" id="customFile" />
									</div>
								</div>
							</div> -->



					<div class="btn-area">
						<button class="btn btn-primary btn-large" type="reset">새로입력</button>
						<input type="submit" value="게시글 등록"
							class="btn btn-primary btn-large" />
					</div>

					<div class="btn-area">
						<button class="btn btn-primary btn-large" type="button"
							onclick="location.href='/ongo/deal_listAll.do'">리스트</button>
					</div>
			</form>
		</div>
		<!-- <div class="btn-area">
				<button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/deal_listAll.do'">리스트</button>
			</div> -->
	</div>





	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
</body>
</html>