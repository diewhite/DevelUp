<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<html>
<head> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style type="text/css">
	.dataRow:hover{
	background: #ddd;
	cursor:pointer; 
	}
</style>


<script type="text/javascript">
	var type = "${dealType}"
	$(document).ready(function () {
		$("#dealType").val(type).attr("selected","selected");
		$("#dealType").change(function () {
			location.href="/ongo/deal_listAll.do?dealType="+$(this).val()
		})
	})


</script>


</head>
<body>
<!-- 이 아래부터  content부분 부터 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->


<!-- content -->
<div id="contents" >
         <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h1>중고거래</h1>
                <span class="blue">보다 더 · 당신의 일상과 가깝게</span>
   						<div class="form_box d-grid d-md-flex justify-content-md-end" >
							<select class="form-select grid-input" id="dealType" name="dealType" >
								<option value="all">전체</option>
								<option value="중고">중고</option>
								<option value="나눔">나눔</option>
							</select>
						</div>
            </div>
        </div>
        
        
        
        
        <!-- //title -->
        
     <!--    
        <div class="list-group">
        	<a href="#" class="list-group-item">분석설계자료</a>
        	<a href="#" class="list-group-item">디자인확인</a>
        	<a href="#" class="list-group-item">front-end</a>
        	<a href="#" class="list-group-item">backend</a>
        	<a href="#" class="list-group-item">프로젝트진행상황</a>
        	<a href="#" class="list-group-item">개발이슈조회</a>
        	<a href="#" class="list-group-item">JSON</a>
        	<a href="/ongo/jsonView" class="list-group-item">Ajax테스트</a>
        
        </div>
        
         -->
        
        
        
	
	
	
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
					<th>작성자</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var = "board" items="${listall}">
						
						<tr onclick="location.href='/ongo/dealRead.do?deal_number=${board.deal_number}&state=READ'" class="dataRow">
							<td>${board.deal_number }</td>
							<td>${board.dealType}</td>
							<td>${board.product_category }</td>
							<td>${board.product_state }</td>
							<td>${board.board_title }</td>		
							<td><fmt:formatNumber value="${board.product_price}" pattern="#,###원"/></td>							
							<td>${board.hits }</td>							
							<td>${board.member_id }</td>		
							<td>${board.write_date }</td>
						</tr>
					</c:forEach>
			</tbody>
		</table>
		
		
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item"><a class="page-link" href="#">Next</a></li>
		  </ul>
		</nav>
		
		
		
		
		
		
	<!-- 	<div class="grid-item colspan2">
							<label for="HOFS_DTADR">검색</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w50">
									<input class="grid-input" type="text" maxlength="100" title="board_title" id="board_title" name="board_title">
								    <button class="btn btn-primary btn-small" type="button" onclick="location.href='/ongo/dealRegister'"> 검색</button>
								</div>
							</div>
						</div> -->
		
			<form action="/ongo/serarchData.do" method="post" >
				<div class="grid-item colspan2">
					<div class="tbl-basic-td">
						<div class="input-wrap w20" style=" float: left; width: 10%;">
							<select class="form-select grid-input" id="tag" name="tag">
								<option value="board_title">제목</option>
								<option value="id">작성자</option>
								<option value="write_date">작성일</option>
							</select>
						</div>
						<input type="text" name="searchData" id="searchData" class="grid-input" style="float: left; width: 25%;"/> 
						<input type="submit" value="검색" class="btn btn-primary btn-medium" style=" float: left; width: 5%;">
					</div>
				</div>
			</form>
  
  
  <div class="btn-area">
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/dealRegister'"> 글쓰기</button>
      </div>
    </div>
   


<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->

</body>
</html>