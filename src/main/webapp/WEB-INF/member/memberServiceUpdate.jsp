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
                <h1>글쓰기</h1>
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
            <label for="select_target_1">지역</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w30" >
                <select class="form-select grid-input"title="기업형태">
                 <option value="01">서울</option>
                 <option value="02">경기도</option>
                 <option value="03">인천</option>
                 <option value="04">전주</option>
                </select>
              </div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR">제목</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <input class="grid-input" type="text" maxlength="50" title="본사 상세주소 입력">
              </div>
            </div>
          </div>
         
        
          <div class="grid-item colspan2">
            <label for="HOFS_INTR_MTRL_CNTS">내용</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <textarea class="grid-input" title="내용입력" maxlength="500" rows="5"></textarea>
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
  </div>
     <div class="btn-area flex-row">
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/emp/empserviceboard.do'">목록</button>
        <button class="btn btn-success btn-large text-white" type="button" onclick="location.href='/ongo/emp/empserviceupdate.do'">수정</button>
        <button class="btn btn-danger  btn-large" type="button" onclick="location.href='/ongo/emp/empserviceboard.do'">삭제</button>
      </div>
  
</div><!-- // content -->



<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>