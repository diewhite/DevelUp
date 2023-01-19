<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head> </head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
<div id="contents">
        <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h1>거래요청내역</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- container -->
        <div class="container">
    <form id="ef610102">
      <!-- 현재 탭 표시 -->
      <!-- //현재 탭 표시 -->

      <div class="board_view">
        <div class="board">
          <div class="board_view_head">
            <h3 class="board_view_tit" title="제목">${recycle.title }</h3>
            <dl>
              <dt>작성일</dt>
              <dd>${recycle.write_date }</dd>
			  <dt>요청자</dt>
   			  <dd>${recycle.send_id }</dd>
            </dl>
          </div>
          <div class="board_view_cont"><h4>${recycle.content }</h4></div>
        </div>
      </div>
      <div class="btn-area flex-row">
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/recycle/list?receive_id=${user.member_id}'">목록</button>
      </div>
    </form>
  </div> <!-- // container-->
</div><!-- // contents -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->

</body>
</html>