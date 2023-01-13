<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<html>
<head> </head>
<body>
<!-- 이 아래부터  content부분부터 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
<div id="contents">
        <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h1>경매등록</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
       <div class="container">
    <form id="saveForm" name="saveForm">
      <input type="hidden" value="">
      <input type="hidden">
      <div class="cont-box-inner">
        
        <div class="tbl grid-layout grid2">
          <div class="grid-item colspan2">
            <label for="select_target_1">카테고리</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w20">
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

              </div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="select_target_1">상태</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w20">
                <select class="form-select grid-input"title="상태">
                 <option value="01">경매진행중</option>
                 <option value="02">경매완료</option>
                </select>
              </div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR" id="auction_title" >제목</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <input class="grid-input" type="text"  maxlength="50" title="타이틀">
              </div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR" >경매</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w30 me-4">
              <div> 시작가   </div>
              <input id="start_price" class="bid-start" type="text"  maxlength="50" title="시작가"> 
               <div> 최소가   </div>
                <input id="min_price" class="bid-min" type="text"  maxlength="50" title="최소가"> 
            
              </div>
       
            </div>
          </div>
         
        
          <div class="grid-item colspan2">
            <label for="HOFS_INTR_MTRL_CNTS">내용</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <textarea id="board_content" class="grid-input" role="textbox" id="HOFS_INTR_MTRL_CNTS" name="HOFS_INTR_MTRL_CNTS" title="본사 소개자료내용 입력" maxlength="500" rows="5"></textarea>
              </div>
            </div>
          </div>
        
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR">첨부파일</label>
            <div id="list_photo" class="tbl-basic-td">
              <div class="input-wrap w100">
                  <input type="file" class="form-control" id="list_photo" value="${AuctionRead.list_photo}"/>
              </div>
            </div>
          </div>
        
        </div>
      </div>
    </form>
  </div><div class="btn-area">
       <button class="btn btn-primary btn-large" type="submit" onclick="location.href='/ongo/auction/auction'">글쓰기</button>
      </div>
    </div>
<!-- // content -->

 <!-- modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="Modal" aria-hidden="true">
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
                            <textarea class="grid-input" role="textbox" id="HOFS_INTR_MTRL_CNTS" name="HOFS_INTR_MTRL_CNTS" title="쪽지내용 입력" maxlength="500" rows="5"></textarea>
                          </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn-area">
              <button type="button" class="btn btn-outline-primary"  data-bs-dismiss="modal" aria-label="Close">전송</button>
            </div>
            <!-- 닫기버튼 -->
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                <i class="las la-times"></i>
            </button>
            <!-- //닫기버튼 -->
        </div>
    </div>
    </div>
</div>
<!-- //modal -->
<

</body>
</html>