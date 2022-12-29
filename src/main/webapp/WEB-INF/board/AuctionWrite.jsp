<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
            <label for="select_target_1">게시판 선택</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w20">
                <select class="form-select grid-input"title="게시판">
                 <option value="01">중고상품</option>
                 <option value="02">새상품</option>
                </select>
              </div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="select_target_1">상태</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w20">
                <select class="form-select grid-input"title="상태">
                 <option value="01">판매중</option>
                 <option value="02">판매완료</option>
                </select>
              </div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR">제목</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <input class="grid-input" type="text"  maxlength="50" title="타이틀">
              </div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR">금액</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w30 me-4">
                <input class="grid-input" type="text"  maxlength="50" title="금액"> 
              </div>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" value=" ">
                <label class="form-check-label"><span class="radio"></span>나눔</label>
              </div>
            </div>
          </div>
         
        
          <div class="grid-item colspan2">
            <label for="HOFS_INTR_MTRL_CNTS">내용</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <textarea class="grid-input" role="textbox" id="HOFS_INTR_MTRL_CNTS" name="HOFS_INTR_MTRL_CNTS" title="본사 소개자료내용 입력" maxlength="500" rows="5"></textarea>
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
    </form>
  </div><div class="btn-area">
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='board.html'">글쓰기</button>
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


</body>
</html>