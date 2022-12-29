<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head> </head>
<body>
<!-- 이 아래부터  content부분 부터 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->


<!-- content -->
<div id="contents" >
         <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h1>중고리스트</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
    <div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>구분</th>
					<th>카테고리</th>
					<th>상태</th>
					<th>제목</th>
					<th>가격</th>
					<th>조회수</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var = "board" items="${listall}">
						<tr>
							<td>${board.deal_number }</td>
							<td>${board.dealType}</td>
							<td>${board.product_category }</td>
							<td>${board.product_state }</td>
							<td>${board.board_title }</td>							
							<td>${board.product_price }</td>							
							<td>${board.hits }</td>							
							<td>${board.write_date }</td>
						</tr>
					</c:forEach>
					
			</tbody>
		</table>
	</div>
  
  
  <div class="btn-area">
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/deal_Register'"> 글쓰기</button>
      </div>
    </div>
   


<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->

</body>
</html>