<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head> </head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
<div id="contents">
        <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h1>경매</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
        <div class="container">
            <form id="searchForm" name="searchForm"  action="/ongo/deal_Write">
                <input type="hidden" name="countPerPage" id="countPerPage" value="10">
                <input type="hidden" name="zon" id="zon" value="">

                <!-- 현재 탭 표시 -->
                <h2 class="visually-hidden">경매</h2>
                <!-- //현재 탭 표시 -->

		
					<!-- 로그인시스템 생성전 임시필요 -->
					<div class="cont-box-inner">
						<div class="tbl grid-layout grid2">
							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">임시아이디(작성자)</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w20">
										<input class="grid-input" type="text" maxlength="50"
											title="id" id="id" name="id">
									</div>
								</div>
							</div>
							</div>
					</div><!-- // 로그인시스템 생성전 임시필요 -->
							
					
					
					<div class="cont-box-inner">
						<div class="tbl grid-layout grid2">
							<div class="grid-item colspan2">
								<label for="select_target_1">구분</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w20">
										<select class="form-select grid-input" title="게시판" id="dealType" name="dealType">
											<option value="used" >중고</option>
											<option value="sharing">나눔</option>
										</select>
									</div>
								</div>
							</div>
							
							<div class="grid-item colspan2">
								<label for="select_target_1" >상품카테고리</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w20">
										<select class="form-select grid-input" title="게시판" id="product_category" name="product_category">
											<option value="digital">디지털&가전</option>
											<option value="furnuture">가구&인테리어</option>
											<option value="baby">유아동</option>
											<option value="living">생활&가공식품</option>
											<option value="sports">레져&스포츠</option>
											<option value="woman_m">여성잡화</option>
											<option value="woman_c">여성의류</option>
											<option value="man_m">남성잡화</option>
											<option value="man_c">남성의류</option>
											<option value="game">게임&취미</option>
											<option value="beauty">뷰티&미용</option>
											<option value="animal">반려동물용품</option>
											<option value="book">도서&티켓&음반</option>
											<option value="etc">기타</option>
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
											title="타이틀" id="board_title" name="board_title">
									</div>
								</div>
							</div>
							
							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">상품명</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<input class="grid-input" type="text" maxlength="50"
											title="product_product_name" id="product_name" name="product_name">
									</div>
								</div>
							</div>
							
							
							<!-- 히든처리 -->
							
							<!--상품상태(거래대기,진행중,완료)  -->
								<div class="input-wrap w100">
										<input class="hidden" type="text" maxlength="50" value ="ready"
											title="product_product_name" id="product_state" name="product_state">
									</div>
									
							<!--조회수  -->
									<div class="input-wrap w100">
										<input class="hidden" type="text" maxlength="50" value ="0"
											title="product_product_name" id="hits" name="hits">
									</div>
									
							
							<!--  -->
							
							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">금액</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w30 me-4">
										<input class="grid-input" type="number" maxlength="50"
											title="금액" id="product_price" name="product_price">
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
										<textarea class="grid-input" role="textbox"
											id="board_content" name="board_content"
											title="본사 소개자료내용 입력" maxlength="500" rows="5"></textarea>
									</div>
								</div>
							</div>

							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">첨부파일</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<input type="file" class="form-control" id="customFile" />
									</div>
								</div>
							</div>

						</div>
					</div>
					
					<div class="btn-area">
						<input type="submit" value="게시글 등록" class="btn btn-primary btn-large" />
					</div>
					
					
					
					
				</form>
			</div>
			<div class="btn-area">
				<button class="btn btn-primary btn-large" type="button"
					onclick="location.href='#'">중고 리스트</button>
			</div>
		</div>





<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>