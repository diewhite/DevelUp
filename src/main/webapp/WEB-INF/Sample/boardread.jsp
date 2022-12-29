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
                <h1>공지사항</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- container -->
        <div class="container">
    <form id="ef610102">
      <!-- 현재 탭 표시 -->
      <h2 class="visually-hidden">공지사항</h2>
      <!-- //현재 탭 표시 -->

      <div class="board_view">
        <div class="board">
          <div class="board_view_head">
            <h3 class="board_view_tit" title="제목">경매진행성공</h3>
            <dl>
              <dt>작성일</dt>
              <dd >2022-11-15</dd>
              <dt>조회</dt>
              <dd >191</dd>
            </dl>
          </div>
          <div class="board_view_file" id="fileList">
            <div class="file_left">첨부파일</div>
             <ul class="file_list" id="fileListArea">
              <li><i class="las la-paperclip"></i>
                <a href="#" onclick="downloadFile(' ','1')" title="파일다운로드">(붙임1)경매성공.hwp</a>
              </li>
              <li><i class="las la-paperclip"></i>
                <a href="#" onclick="downloadFile(' ','2')" title="파일다운로드">(붙임2)경매진행방법.xlsx</a>
              </li>
             </ul>
          </div>
          <div class="board_view_cont">
            <img src="" id="myimage">
            <p>pan style="font-family: 굴림; font-size: 10pt;tyle="font-family: 굴림; font-size: 10pt;"</p>

          </div>
          <nav class="board_view_bottom">
            <div class="board_pager prev">
              <span class="board_pager_left"><i class="las la-angle-up"></i>이전글</span>
              <span class="board_pager_center"><a href="#" title="이전글로 이동">참고사항</a></span>
              <span class="board_pager_right" >2022-11-09</span>
            </div>

            <div class="board_pager next empty">
              <span class="board_pager_left"><i class="las la-angle-down"></i>다음글</span>
              <span class="board_pager_center"><a href="#" title="다음글로 이동" >다음글이 없습니다.</a></span>
              <span class="board_pager_right">2022-11-16</span>
            </div>
          </nav>
        </div>
      </div>
      <div class="btn-area flex-row">
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/emp/empservice.do'">목록</button>
        <button class="btn btn-success btn-large text-white" type="button" onclick="location.href='/ongo/emp/empserviceupdate.do'">수정</button>
        <button class="btn btn-danger  btn-large" type="button" onclick="location.href='/ongo/emp/empservice.do'">삭제</button>
      </div>
    </form>
  </div> <!-- // container-->
</div><!-- // contents -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->

</body>
</html>