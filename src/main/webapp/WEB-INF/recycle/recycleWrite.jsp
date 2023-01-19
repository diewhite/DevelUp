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
                <h1>거래요청</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
        <form action="/ongo/recycle/write.do" method="post" id="saveForm" name="saveForm">
       <div class="container">
      <div class="cont-box-inner">
      
        <div class="tbl grid-layout grid2">
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR">요청업체</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <input class="grid-input" type="text" role="textbox" name="receive_id" maxlength="50" title="요청업체" value="${receive_id }" readonly="readonly">
                <input class="grid-input" type="text" role="textbox" name="send_id" maxlength="50" title="요청자" hidden="hidden" value="${user.member_id }">
              </div>
            </div>
          </div>
          </div>
        
        <div class="tbl grid-layout grid2">
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR">제목</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <input class="grid-input" type="text" role="textbox" name="title" maxlength="50" title="타이틀">
              </div>
            </div>
          </div>
  
          <div class="grid-item colspan2">
            <label for="HOFS_INTR_MTRL_CNTS">내용</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <textarea class="grid-input" role="textbox"  title="내용 입력" name="content" maxlength="500" rows="5"></textarea>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
	<div class="btn-area flex-row">
       <button class="btn btn-primary btn-large" type="submit">글쓰기</button>
        <button class="btn btn-success btn-large text-white" type="button" onclick="location.href='/ongo/index.do'">취소</button>
      </div>
      </form>
    </div><!-- // content -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>