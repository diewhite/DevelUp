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
                <h1>중고거래</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- container -->
        <div class="container">
    <form id="ef610102">
      <!-- 현재 탭 표시 -->
      <h2 class="visually-hidden">중고거래</h2>
      <!-- //현재 탭 표시 -->

      <div class="board_view">
        <div class="board">
          <div class="board_view_head">
            <h3 class="board_view_tit" title="제목">타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀</h3>
            <dl>
              <dt>작성일</dt>
              <dd id="FRST_REGT_DTM" name="FRST_REGT_DTM">2022-11-15</dd>
              <dt>조회</dt>
              <dd id="INQR_NUM" name="INQR_NUM">191</dd>
            </dl>
          </div>
          <div class="board_view_file">
            <div class="file_left">판매상태</div>
            <ul class="file_list">
              <li >판매중</li>
            </ul>
          </div>
          <div class="board_view_file">
            <div class="file_left">판매가격</div>
            <ul class="file_list d-flex align-items-center">
              <li class="me-4"><sapn>1,0333300</sapn>원</li>
              <li>
                <div class="form-check">
                <input type="checkbox" name="remember" id="remember" class="form-check-input">
                <label for="remember" class="form-check-label"><span class="checkbox"></span>나눔</label>
              </div></li>
            </ul>
          </div>
          </div>
          <div class="board_view_cont">
            <img  src="https://i.imgur.com/oLXMXVW.jpg">
            <p >내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음
              내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음내용들어가고있음내용들어가
              내용들어가고있음내용들어가고있음내용들어가고있음고있음내용들어가고있음내용들어가고있음</p>

          </div>
          <nav class="board_view_bottom">
            <div class="board_pager prev">
              <span class="board_pager_left"><i class="las la-angle-up"></i>이전글</span>
              <span class="board_pager_center"><a href="#" title="이전글로 이동" id="PREV_SUBJECT" name="PREV_SUBJECT">참고사항</a></span>
              <span class="board_pager_right" id="PREV_DATE" name="PREV_DATE">2022-11-09</span>
            </div>

            <div class="board_pager next empty">
              <span class="board_pager_left"><i class="las la-angle-down"></i>다음글</span>
              <span class="board_pager_center"><a href="#" title="다음글로 이동" id="NEXT_SUBJECT" name="NEXT_SUBJECT">다음글이 없습니다.</a></span>
              <span class="board_pager_right" id="NEXT_DATE" name="NEXT_DATE">2022-11-16</span>
            </div>
          </nav>
        </div>
      </div>
      <div class="btn-area flex-row">
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='deal.html'">목록</button>
        <button class="btn btn-success btn-large text-white" type="button" onclick="location.href='board.html'">수정</button>
        <button class="btn btn-danger  btn-large" type="button" onclick="location.href='board.html'">삭제</button>
      </div>
    </form>
  </div>
        <!-- // container-->
    </div><!-- // contents -->

 
</body>
</html>