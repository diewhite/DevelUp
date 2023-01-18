<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
</head>
<body>

<!-- content -->
<div id="contents">
    <!-- title -->
    <div class="sub_top">
        <div class="container">
            <h1>협력업체</h1>
        </div>
    </div>
    <!-- //title -->

    <!-- 게시판 -->
    <div class="container">
        <form id="searchForm" name="searchForm" onsubmit="return false;">
            <input type="hidden" name="countPerPage" id="countPerPage" value="10">
            <input type="hidden" name="zon" id="zon" value="">
            <input type="hidden" name="dstr" id="dstr" value="">
          
          <div class="board_list">
            <div class="board_info d-flex">
                <div class="total">전체 <strong class="blue" id="totalCount">${count }</strong>건 (페이지 <strong class="blue" id="nowPage">1</strong>/<span id="totalPage">1</span>)</div>
             
            </div>
            <div class="board" id="boardList">
            	<c:forEach var="cooperation" items="${cooperList }">
					<div class="card">
						<div class="card-body">
							<div class="card-wrap">
								<h3 class="card-title">${cooperation.name }</h3>
								<div class="card-text">
									<ul class="company_list">
										<li><strong>주소</strong><span>${cooperation.addr }</span></li>
										<li><strong>문의</strong><span>${cooperation.tel }</span></li>
										<li><strong>거래품목</strong><span>${cooperation.content }</span></li>
										<li><strong>견적</strong><span>${cooperation.email }</span></li>
									</ul>
								</div>
							</div>
							<div class="companylogo">
								<img src="/images/company.png" alt="">
							</div>
							<span class="plus"><i class="las la-plus"></i></span>
						</div>
					</div>
				</c:forEach>
            </div>
            </div>
        </form>
    </div>
</div>
<!-- // content -->

<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
</body>
</html>