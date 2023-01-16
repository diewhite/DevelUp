<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head> 
<style type="text/css">
.right{ float: right;margin-left:300px }
.ri{text-align: right;}
.auctionboard{
	display: inline-block;
	float: left;

}
</style>
<script type="text/javascript">
	var type = "${auction_category}"
	$(document).ready(function () {
		$("#auction_category").val(type).attr("selected","selected");
		$("#auction_category").change(function () {
			location.href="/ongo/auction/auctionBoard?auction_category="+encodeURI($(this).val());
		})
	})



</script>

</head>
<body>
<!-- 이 아래부터  content부분부터 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
<div id="contents">
    <!-- title -->
    <div class="sub_top">
        <div class="container">
            <h1>경매</h1>
        </div>
    </div>
    <!-- //title -->

    <!-- 게시판 -->
    <div class="container">
        <form id="searchForm" name="searchForm" onsubmit="return false;">

                
          <div class="board_list">
            <div class="board_info d-flex">
                <div class="total">전체 <strong class="blue" id="totalCount">4</strong>건 (페이지 <strong class="blue" id="nowPage">1</strong>/<span id="totalPage">1</span>)</div>
              
            </div>
            <div >
                 
                <div class="row row-cols-1 row-cols-md-3 g-4">
					<c:forEach var="boardlist" items="${boardlist}"> 
					<c:if test="${boardlist.auction_state eq '입찰중'}">
						<div class="auctionboard"><!--col -->
	                      <%--     <c:forEach var="boardlist" items="${boardlist}"> --%>
	                      <div class="auction-card">
	                        <div class="auction-img-main ">
	                          <ul>
	                            <li >
	                              <img id="auction-image" src="https://i.imgur.com/oLXMXVW.jpg"  
	                              onclick="location.href='/ongo/auction/auctionRead?auction_no=${boardlist.auction_number}'"></li>
	                          </ul>
	                        </div>
	                       
	                        <div class="mt-2">
	                          <ul class="company_list">
	                    		<h3><a onclick="location.href='/ongo/auction/auctionRead'">${boardlist.auction_title }</a></h3>
	                            <li><strong>현재가격 &nbsp &nbsp</strong><span>${boardlist.start_price }</span>	<!-- 입찰하면 입찰한 금액으로 start_price가 update됨 -->
	                            <li><strong>최종입찰가</strong><span>${boardlist.end_price }</span>
	                            <li><strong>남은시간 &nbsp &nbsp</strong><span>${boardlist.end_date }</span>
	                            		<!-- <ol> 남은시간 : - </ol> -->
	                            </li>
	                          
	                          </ul>
	                        </div>
	                   
	                      </div><!-- // auction-card -->
	                       
	                  </div><!-- // col -->
					</c:if>
 					</c:forEach>
                </div><!-- //row-->
               
                <div class="text-right">
                <!--글쓰러가는버튼  -->
                    <button type="button" class="btn btn-primary btn-large" onclick="location.href='/ongo/auction/auctionwrite'">글쓰러가기</button>
                </div>
                <!-- 페이지네이션 -->
                <nav aria-label="Page navigation" id="pageNav">
                    <ul class="pagination">
                      <input type="hidden" id="PAGE" name="PAGE" value="1">
                      <input type="hidden" id="CNT_PER_PAGE" name="CNT_PER_PAGE" value="10">
                      <input type="hidden" id="START_INDEX" name="START_INDEX" value="">
                      <input type="hidden" id="END_INDEX" name="END_INDEX" value="">
                      <li class="page-item arr"><a class="page-link" href="javascript:fnMovePage(1, fnSearch, 'pagination');" aria-label="Previous">
                         <span class="visually-hidden">처음으로</span><span aria-hidden="true"><i class="las la-angle-double-left"></i></span></a>
                      </li>
                      <li class="page-item active"><a class="page-link" href="javascript:fnMovePage(1, fnSearch, 'pagination');">1</a></li>
                      <li class="page-item"><a class="page-link" href="javascript:fnMovePage(2, fnSearch, 'pagination');">2</a></li>
                      <li class="page-item"><a class="page-link" href="javascript:fnMovePage(3, fnSearch, 'pagination');">3</a></li>
                      <li class="page-item arr"><a class="page-link" href="javascript:fnMovePage(11, fnSearch, 'pagination');" aria-label="Next">
                        <span class="visually-hidden">마지막으로</span><span aria-hidden="true"><i class="las la-angle-right"></i></span></a>
                      </li>
                      <li class="page-item arr"><a class="page-link" href="javascript:fnMovePage(552, fnSearch, 'pagination');" aria-label="NextEnd">
                        <span class="visually-hidden">다음으로</span><span aria-hidden="true"><i class="las la-angle-double-right"></i></span></a>
                      </li>
                    </ul>
                </nav>
                <!-- //페이지네이션 -->
            </div>
            </div>
        </form>
    </div>
</div>
<!-- // content -->

</body>
</html>