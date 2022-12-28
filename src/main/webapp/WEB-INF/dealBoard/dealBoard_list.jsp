<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head> </head>
<body>
<!-- 이 아래부터  content부분 부터 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->


<!-- content -->
<div id="contents" >
         <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h1>경매리스트</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
    <div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>구분</th>
					<th>번호</th>
					<th>상태</th>
					<th>제목</th>
					<th>조회수</th>
					<th>작성일</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<%-- <c:forEach var = "member" items="${listall}">
						<tr>
							<td>${member.no }</td>
							<td><a href="/ongo/idRead.do?id=${member.id}&state=READ">${member.id}</a></td>
							<td>${member.pass }</td>
							<td>${member.name }</td>
							<td>${member.tel }</td>
							<td>${member.addr }</td>
							<td>${member.email }</td>
							<td>${member.sort }</td>
							<td>${member.regdate}</td>
							<td><a href="/ongo/idRead.do?state=UPDATE&id=${member.id}">수정</a></td>
							<td><a href="/ongo/idDelete.do?id=${member.id}">삭제</a></td>
						
						</tr>
					</c:forEach> --%>
					<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<tr>
			</tbody>
		</table>
	</div>
  
  
  
  <div class="btn-area">
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='board.html'">글쓰기</button>
      </div>
    </div>
   






<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->

</body>
</html>