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
            <input type="hidden" name="countPerPage" id="countPerPage" value="10">
            <input type="hidden" name="zon" id="zon" value="">
            <input type="hidden" name="dstr" id="dstr" value="">
            <div class="board_list allow">
                <div class="form_box filter">
                   <fieldset>
                    <legend class="visually-hidden">검색</legend>
                    <div class="input-group">
                      <div class="select">
                        <i class="las la-balance-scale-right"></i>
                        <label class="visually-hidden" for="">카테고리</label>
                        <select class="form-select" id="auction_category" name="auction_category" title="카테고리" >
                          <option value="all">전체</option>
                          <option value="디지털&가전" selected>디지털&가전</option>
                          <option value="유아동">유아동</option>
                          <option value="생활&가공식품" selected>생활&가공식품</option>
                          <option value="레져&스포츠">레져&스포츠</option>
                          <option value="여성잡화" selected>여성잡화</option>
                          <option value="여성의류">여성의류</option>
                          <option value="남성잡화" selected>남성잡화</option>
                          <option value="남성의류">남성의류</option> 
                          <option value="게임&취미">게임&취미</option>
                          <option value="뷰티&미용" selected>뷰티&미용</option>
                          <option value="반려동물용품">반려동물용품</option>
                          <option value="도서&티켓&음반" selected>도서&티켓&음반</option>
                          <option value="기타">기타</option> 
                        </select>
                      </div>
                      <!--
                      <div class="select">
                        <i class="las la-gavel"></i>
                        <label class="visually-hidden" for="DSTR_SEQ">마감임박순</label>
                        <select class="form-select" name="DSTR_SEQ" id="DSTR_SEQ" title="마감임박순">
                          <option value="">전체</option>
                          <option value=" " selected>마감임박순</option>
                            <option value=" ">조회많은순</option>
                            <option value=" ">조회적은순</option>
                        </select>
                      </div>-->
                      <input type="text" class="form-control" name="SRCH_WORD" id="SRCH_WORD" title="검색어 입력" placeholder="검색어 입력하세요.">
                      <button type="button" class="btn btn-search" onclick="javascript:fnSearch();"><i class="las la-search"></i> 검색</button>
                    </div>
                  </fieldset>
                </div>
                </div>
                
          <div class="board_list">
            <div class="board_info d-flex">
                <div class="total">전체 <strong class="blue" id="totalCount">4</strong>건 (페이지 <strong class="blue" id="nowPage">1</strong>/<span id="totalPage">1</span>)</div>
                <div class="d-grid d-md-flex justify-content-md-end">
                   <div class="select">
                      <select class="form-select" title="50개 보기">
                        <option value=" " selected>50개 보기</option>
                        <option value=" ">100개 보기</option>
                        <option value=" ">150개 보기</option>
                      </select>
                  </div>
                </div>
            </div>
            <div >
                 
                <div class="row row-cols-1 row-cols-md-3 g-4">
					<c:forEach var="boardlist" items="${boardlist}"> 
					<c:if test="${boardlist.auction_state eq '입찰중'}">
						<div class="auctionboard"><!--col -->
	                      <%--     <c:forEach var="boardlist" items="${boardlist}"> --%>
	                      <div class="auction-card">
	                        <span class="auction-label1">${boardlist.auction_category }</span>
	                        <div class="auction-img-main ">
	                          <ul>
	                            <li >
	                              <img id="auction-image" src="https://i.imgur.com/oLXMXVW.jpg"  onclick="location.href='/ongo/auction/auctionRead?auction_no=${boardlist.auction_number}'"></li>
	                          </ul>
	                        </div>
	                        <div class="thumbnail text-center" >
	                          <img onclick="change_image(this)" src="https://i.imgur.com/oLXMXVW.jpg">
	                          <img onclick="change_image(this)" src="http://www.kobay.co.kr/common_filesystem/web_auction/itemImages/22/12/CW/2212CW3YKJU_0.jpg">
	                          <img onclick="change_image(this)" src="http://www.kobay.co.kr/common_filesystem/web_auction/itemImages/22/12/CE/2212CEX3IIL_0.jpg">
	                          <img onclick="change_image(this)" src="http://www.kobay.co.kr/common_filesystem/web_auction/itemImages/22/12/3C/22123C7QGIT_0.jpg">
	                          <img onclick="change_image(this)" src="http://www.kobay.co.kr/common_filesystem/web_auction/itemImages/22/12/DS/2212DSIB9TP_0.jpg">
	                          <img onclick="change_image(this)" src="http://www.kobay.co.kr/common_filesystem/web_auction/itemImages/22/12/FU/2212FU7MFTL_0.jpg">
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
                  

<!--                두번째 게시물
					<div class="">col
                      <div class="auction-card">
                        <span class="auction-label2">부동산</span>
                        <div class="auction-img-main ">
                          <ul>
                            <li >
                              <img id="auction-image" src="https://mdbcdn.b-cdn.net/img/new/standard/city/042.webp" ></li>
                          </ul>
                        </div>
                        <div class="thumbnail text-center">
                          <img onclick="change_image(this)" src="https://mdbcdn.b-cdn.net/img/new/standard/city/042.webp">
                          <img onclick="change_image(this)" src="https://mdbcdn.b-cdn.net/img/new/standard/city/043.webp">
                          <img onclick="change_image(this)" src="https://mdbcdn.b-cdn.net/img/new/standard/city/044.webp">
                          <img onclick="change_image(this)" src="https://mdbcdn.b-cdn.net/img/new/standard/city/045.webp">
                          <img onclick="change_image(this)" src="https://mdbcdn.b-cdn.net/img/new/standard/city/046.webp">
                          <img onclick="change_image(this)" src="https://mdbcdn.b-cdn.net/img/new/standard/city/047.webp">
                        </div>
                        <div class="mt-2">
                          <ul class="company_list">
                     		 <h3>로스앤젤로스땅팔아요</h3>
                            <li><strong>최종입찰가</strong><span>20000원</span>
                            <div><a href="/ongo/auction/auctionRead?status=READ&auction_no=1">1번째 게시물</a></div>
                            
                            </li>
                        
                          </ul>
                  
                        </div>
                      </div>// auction-card
                  </div>// col -->
 					</c:forEach>
                </div><!-- //row-->
               
                <div class="text-right">
                    <button type="button" class="btn btn-primary btn-large" onclick="location.href='/ongo/auction/auctionwrite'">글쓰기</button>
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