<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<html>
<head> 
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


<!-- content   -->
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
	<%-- 	<table class="table">
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
		 --%>
		<table class="table table-borderless">
	                           <colgroup>
	                               
	                               <col width="10%"> <!-- 구분 -->
	                               <col width="20%"> <!-- 제품사진 -->
	                               <col width="50%"> <!-- 제목 -->
	                               <col width="15%"> <!-- 가격 -->
	                               <col width="10%"> <!-- 작성자 -->
	                               <col width="15%"> <!-- 작성일 -->
	                               <col width="8%"> <!-- 조회수 -->                          
	                               <col width="10%"> <!-- 거래상태 -->                          
	                           </colgroup>								
								<thead>
									<tr>
										<th class="table-header" scope="col">구분</th>
										<th class="table-header" scope="col">상품 사진</th>
										<th class="table-header-title" scope="col">제목</th>
										<th class="table-header" scope="col">가격</th>
										<th class="table-header" scope="col">작성자</th>
										<th class="table-header" scope="col">작성일</th>
										<th class="table-header" scope="col">조회수</th>
										<th class="table-header" scope="col">거래상태</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var = "board" items="${listall}">
									<tr onclick="location.href='/ongo/dealRead.do?deal_number=${board.deal_number}&state=READ'" class="dataRow">
										<td><span class="gray-bold">${board.dealType }</span></td>
										<td><img alt="" src="https://i.imgur.com/5Aqgz7o.jpg" width="50" height="50">${board.list_photo }</td>
										<td><span class="gray-bold">${board.board_title }</span></td>
										<td><span class="blue-bold"><fmt:formatNumber value="${board.product_price}" pattern="#,###원"/></span></td>
										<td><span class="blue-bold">${board.member_id }</span></td>
										<td><span class="blue-bold">${board.write_date }</span></td>
										<td><span class="blue-bold">${board.hits }</span></td>
										<td><span class="blue-bold">${board.product_state }</span></td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							
		
		
		
		
		
		
		
		
		
		
		
		
		<div class="pagination">
             <input type="hidden" id="PAGE" name="PAGE" value="1">
             <input type="hidden" id="CNT_PER_PAGE" name="CNT_PER_PAGE" value="10">
             <input type="hidden" id="START_INDEX" name="START_INDEX" value="">
             <input type="hidden" id="END_INDEX" name="END_INDEX" value="">
               <li class="page-item arr">
                 <a class="page-link" href="javascript:fnMovePage(1, fnSearch, 'pagination');" aria-label="Previous">
                   <span class="visually-hidden">처음으로</span>
                   <span aria-hidden="true"><i class="las la-angle-double-left"></i></span>
                 </a>
               </li>
               <li class="page-item active">
               	<a class="page-link" href="javascript:fnMovePage(1, fnSearch, 'pagination');">1</a></li>
               <li class="page-item arr">
               		<a class="page-link" href="javascript:fnMovePage(1, fnSearch, 'pagination');" aria-label="NextEnd">
                   <span class="visually-hidden">다음으로</span>
                   <span aria-hidden="true"><i class="las la-angle-double-right"></i></span>
                 </a>
               </li>
           </div>

		
		
		
		<!-- <nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item"><a class="page-link" href="#">Next</a></li>
		  </ul>
		</nav> -->
		
		
		
		
		
		
	<!-- 	<div class="grid-item colspan2">
							<label for="HOFS_DTADR">검색</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w50">
									<input class="grid-input" type="text" maxlength="100" title="board_title" id="board_title" name="board_title">
								    <button class="btn btn-primary btn-small" type="button" onclick="location.href='/ongo/dealRegister'"> 검색</button>
								</div>
							</div>
						</div> -->
		
			<!-- <form action="/ongo/serarchData.do" method="post" >
				<div class="grid-item colspan2">
					<div class="tbl-basic-td">
						<div class="input-wrap w20">
							<select class="form-select grid-input" id="tag" name="tag">
								<option value="board_title">제목</option>
								<option value="member_id">작성자</option>
								<option value="write_date">작성일</option>
							</select>
						</div>
						<input type="text" name="searchData" id="searchData" class="grid-input"/> 
						<input type="submit" value="검색" class="btn btn-primary btn-medium" >
					</div>
				</div>
			</form> -->
  
  <br/><br/>
  
  <div class="board_list">
				<!-- <div class="board_info d-flex">
					<div class="total">
						전체 <strong class="blue" id="totalCount">9</strong> 건 (페이지 <strong
							class="blue" id="nowPage">1</strong>/<span id="resultPage">1</span>)
					</div> -->
						<form action="/ongo/serarchData.do" method="post">
							<div class="form_box">
	                            <fieldset>
	                                <legend class="visually-hidden">검색</legend>
	                                <div class="input-group">
	                                    <div class="select">
	                                        <label class="visually-hidden" for="category">검색 구분</label>
	                                        <select class="form-select" id="tag" name="tag" title="검색구분선택" style="height: 50px;">
	                                            <option value="board_title">제목</option>
												<option value="member_id">작성자</option>
												<option value="write_date">작성일</option>
	                                        </select>
	                                    </div>
	                                    <input type="text" class="form-control" name="searchData" id="searchData" title="검색어 입력" placeholder="검색어를 입력하세요.">
	                                    <button type="submit" class="btn btn-search" ><i class="las la-search"></i> 검색</button>
	                                </div>
	                            </fieldset>
	                        </div>
                        </form>
				</div>
			</div>
  
  
  
  
  
  
  
  
  
  
  <div class="btn-area">
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/dealRegister'"> 글쓰기</button>
      </div>
    </div>
   


<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->

</body>
</html>