<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<html>
	<head> 
<style>
.auction-img-main{height:481px !important;
    align-items: center;
    justify-content: center;
    display: flex;
    }
.auction-img-main ul li img {
    height:440px !important;
}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		timer = setInterval('auction_time()',1000);
	})//end document ready
	
	var startTime = new Date().getTime();
	var endTime = new Date('${board.end_date}').getTime();
	var remainTime = endTime - startTime;
	var showRemain = "";

	function auction_time(){
		var hours = Math.floor((remainTime  / (1000 * 60 * 60)));
		var miniutes = Math.floor((remainTime % (1000 * 60 * 60)) / (1000 * 60));
		var seconds = Math.floor((remainTime % (1000 * 60)) / 1000);
		
		showRemain = hours + ":" + miniutes + ":" + seconds;
		
		document.getElementById("remainT").innerHTML = showRemain;
		console.log(showRemain);
		if (remainTime<0){
			clearInterval(timer);
			document.getElementById("remainT").innerHTML = "경매종료";
		} else {
			remainTime = remainTime - 1000;
		}
	}
	
	function bidding(){
		var startPrice = ${board.start_price};
		var minPrice = ${board.min_price};
		var minBid;
		var currPrice = ${currPrice};
		//비드쪽 테이블
		var bidInput = $("#bidding_price").val();
		var bidPrice = 0;
		var bidListSize = ${bidList.size()};

		if(bidInput!=0){
			bidPrice = bidInput;
		}
				
		if(currPrice==0){
			minBid = minPrice + startPrice; 
		} else {
			minBid = minPrice + currPrice;
		}
		if(bidInput<minBid){
			alert("최저 입찰 금액은 "+minBid+"원 이상 입니다.");
		}else{
			if(confirm(bidInput+"원을 입찰 하시겠습니까?")){
				location.href='/ongo/auction/bidding?add_price='+bidPrice+'&auction_number='+${board.auction_number}+'&add_user=${user.member_id}';
			} else {
				false;
			}
		}
	}
</script>
	
	</head>
	<body>
	
 <div id="contents" >
	        <!-- title -->
	        <div class="sub_top">
            <div class="container text-center">
                <h3>${board.auction_title}</h3>
            </div>
        </div>
	    
<div class="container"  >
	      <!--  경매부분   -->
	      
	       <div>${boardlist.list_photo}</div>
	      <div id="images" class="row ">
                <div class="col-sm-6">
	       <div class="auction-img-main ">
                          <ul>
                            <li >
                                 <img id="auction-image" src="/ongo/upload/${board.list_photo}"   onerror="this.style.display='none'"></li>
                          </ul>
                        </div>
					   	</div>

	      <!-- content -->
	      
   					
	
					<div class="col-sm-6">
	             <div class="container">
	       <form id="saveForm" name="saveForm">
	            <input type="hidden" value="">
	            <input type="hidden">
	            <div class="tbl grid-layout grid2">
	             <div class="grid-item colspan2">
	                  <label >판매자   </label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap w20">
	                      ${board.member_id }	                    
	                    </div>
	                  </div>
	                </div>
	              
	             
	                <div class="grid-item colspan2">
	                  <label >상태</label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap">
	                    	${board.auction_state }
	                    </div>
	                  </div>
	                </div>
	                 <div class="grid-item colspan2">
	                  <label >남은시간</label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap " id="remainT"></div>
	                  </div>
	                </div>
	                 <div class="grid-item colspan2">
	                  <label >시작가</label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap" ><span>${board.start_price } </span> 원</div>
	                  </div>
	                </div>
	                   <div class="grid-item colspan2">
	                  <label >현재입찰가 </label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap blue" >
	                    	<c:choose>
	                    		<c:when test="${bidList.size() gt 0 }">
	                    			<span>${bidList[0].add_price }</span>
	                    		</c:when>
	                    		<c:otherwise>
	                    			<span>0</span>
	                    		</c:otherwise>
	                    	</c:choose>
	                    원</div>
	                  </div>
	                </div>
	                
	                 <div class="grid-item colspan2">
	                  <label >최소가</label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap " ><span>${board.min_price } </span> 원</div>
	                  </div>
	                </div>
	               
	                
	                <div class="grid-item colspan2">
	                  <label for="HOFS_INTR_MTRL_CNTS">사이즈</label>
	                  <div class="tbl-basic-td">
	                    		${board.board_content }
	                    </div>
	               
	                </div>
	                  <div class="grid-item colspan2">
	                  <label for="HOFS_INTR_MTRL_CNTS">입찰수</label>
	                  <div class="tbl-basic-td">${bidList.size() } 
	                    </div>
	                </div>
	              </div>
	            </div>
	          </div>
	
        </form>
	         </div>
	      <!-- // content -->
	      
	      <div class="btn-area">
				<button type="button" class="btn btn-outline-secondary btn-large" title="목록" onclick="location.href='/ongo/auction/auctionBoard?auction_category=all'">목록</button>
				<c:choose>
					<c:when test="${user.member_id!=board.member_id }">
						<button class="btn btn-primary btn-large" type="button"  data-bs-toggle="modal" data-bs-target="#myModal">입찰하기</button>
					</c:when>
				</c:choose>
                  <button  class="btn btn-outline-primary btn-large" data-bs-toggle="modal" data-bs-target="#listModal">입찰내역보기</button>
				<c:choose>
		      		<c:when test="${user.member_id==board.member_id}">  
						<button class="btn btn-outline-danger btn-large" type="button"
						 onclick="location.href='/ongo/auction/auctionDelete?auction_number=${board.auction_number}'">삭제</button>
				 	</c:when>
				</c:choose> 
			</div>
	</div>   
</div>

		<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->

    

<!------------- Modal --------------->
<!-- 입찰하기 modal -->
	<div class="modal fade" id="myModal" tabindex="-1"
		aria-labelledby="Modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="modal-tit">
						<h2 class="h3">입찰하기</h2>
					</div>
					<div class="modal-con">
						<div class="tbl grid-layout grid1">
							<div class="grid-item red">
								※ 입찰 후 취소가 불가능 하니 신중하게 입찰 해주시기 바랍니다.
							</div>
							<div class="grid-item">
								<label for="IUY_CLSS_CNTS">입찰금액</label>
								<div class="tbl-basic-td">
									<div class="input-wrap  w100">
										<input hidden="hidden" name="add_user" value=${user.member_id }>
										<input hidden="hidden" name="add_auction_number" value=${board.auction_number }>
						                <input class="grid-input" type="text" id="bidding_price" name="bidding_price" title="입찰금액">
						              </div>
								</div>
							</div>
						</div>
					</div>
					<div class="btn-area">
						<button type="button" class="btn btn-primary btn-large" data-bs-dismiss="modal" aria-label="Close" onclick="bidding()">입찰하기</button>
					</div>
					<!-- 닫기버튼 -->
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<i class="las la-times"></i>
					</button>
					<!-- //닫기버튼 -->
				</div>
			</div>
		</div>
	</div>
	
	<!-- //modal -->
	
<!-- 입찰내역보기 modal -->
	<div class="modal fade" id="listModal" tabindex="-1"
		aria-labelledby="Modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="modal-tit">
						<h2 class="h3">입찰내역</h2>
					</div>
					<div class="modal-con">
						<div class="container">
            <div class="board_list">
               
                <div class="board_info d-flex">
                    <div class="total">전체 <strong class="blue" id="totalCount">${bidList.size() } </strong>건 </div>
                </div>
                <div class="board">
                   <table class="table" id="example">
                           <caption>게시판 목록</caption>
                           <colgroup>
                              <col width="8%">
                              <col width="8%">
                               <col width="8%">
                           </colgroup>
                           <thead>
                               <tr> 
                                   <th scope="col">입찰자</th>
                                   <th scope="col">입찰 날짜</th>
                                   <th scope="col">입찰 금액</th>
                               </tr>
                           </thead>
                           <tbody>
                             <c:forEach var="bid" items="${bidList }">
                             <tr>
                             	<td data-before="입찰자">${bid.add_user }</td>
                             	<td data-before="입찰날짜">${bid.add_time }</td>
                             	<td data-before="입찰금액">${bid.add_price }원 </td>
							</tr>
							</c:forEach>
                           </tbody>
                       </table>
              
                </div>
            </div>
        </div>
					</div>
					<div class="btn-area">
						<button type="submit" class="btn btn-primary btn-large" data-bs-dismiss="modal" aria-label="Close" >확인</button>
					</div>
					<!-- 닫기버튼 -->
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<i class="las la-times"></i>
					</button>
					<!-- //닫기버튼 -->
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
	
</body>
</html>