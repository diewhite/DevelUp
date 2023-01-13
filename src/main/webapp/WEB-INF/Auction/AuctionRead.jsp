<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<html>
	<head> 
<style>   //모달에 적용한 css속성값. 
.button{ position:absolute; top:50%; left:50%;
  width:120px; height:30px; margin-top:-15px; margin-left:-60px;
  line-height:15px; cursor:pointer;
}

.modal{ 
   width:100%; height:100%; background: rgba(0,0,0,0.8); top:1000; left:0; display:none;
}

.modal_content{
  width:400px; height:200px;
  background:#fff; border-radius:10px;
  position:relative; top:50%; left:50%;
  margin-top:-100px; margin-left:-200px;
  text-align:center;
  box-sizing:border-box; padding:74px 0;
  line-height:23px; cursor:pointer;
}
.gray{color:gray;}
.blue{color:blue;}
</style>

	
	</head>
	<body>
	<!-- 이 아래부터  content부분부터 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->
	
    <div id="contents" >
	        <!-- title -->
	        <div class="sub_top" >
	            <div class="container" >
	                <h1 style="text-align:center;">${board.auction_title}</h1>
	            </div>
	        </div>

}
	      <!--  경매부분   -->
	      <div id="images" class="row ">
                <div class="col-sm-6">
	       <div class="auction-img-main ">
                          <ul>
                            <li >
                              <img id="auction-image" src="https://i.imgur.com/oLXMXVW.jpg"  onclick="location.href='/ongo/auction/auctionRead'"></li>
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
                       <div class="btn-area">
                       
       <button class="btn btn-primary btn-large" data-bs-toggle="modal" data-bs-target="#myModal"> 
       입찰하기</button>
      </div>
	   	</div>
	      <!-- 이 아래부터  content부분부터 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

	      <!-- content -->
	
					<div class="col-sm-6">
	             <div class="container">
	          <form id="saveForm" name="saveForm">
	            <input type="hidden" value="">
	            <input type="hidden">
	            <div class="cont-box-inner">
	             <div class="grid-item colspan2">
	                  <label >등록자</label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap w20">
	                      ${board.member_id }	                    
	                    </div>
	                  </div>
	                </div>
	              
	              <div class="tbl grid-layout grid2">
	                <div class="grid-item colspan2">
	                  <label for="select_target_1">카테고리</label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap w20">
	                      <select class="form-select grid-input"title="카테고리">
	                       <option value="${board.auction_category }">${board.auction_category }</option>
	                      </select>
	                    </div>
	                  </div>
	                </div>
	                <div class="grid-item colspan2">
	                  <label >상태</label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap w20">
	                    	${board.auction_state }
	                    </div>
	                  </div>
	                </div>
	                 <div class="grid-item colspan2">
	                  <label >남은시간</label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap w20">
	                      남은시간 21시간35분
	                    </div>
	                  </div>
	                </div>
	               
	                <div class="grid-item colspan2">
	                  <label for="HOFS_DTADR">경매</label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap w30 me-4">
	                    <div> 시작가: <span>${board.start_price }</span>원  </div>
	                    <p class="gray">입찰내역: 7000원 </p> 
	                    <p class="gray">입찰내역: 11000원 </p> 
	                    <p class="gray">입찰내역: 13000원 </p> 
	                   
	                    
	                     <p class="blue">현재입찰가: 16000원 </p> 
	                     <p>최소가: ${board.min_price }원 </p> 
	                   
	                   
	                  
	                    </div>
	             
	                  </div>
	                </div>
	                
	                <div class="grid-item colspan2">
	                  <label for="HOFS_INTR_MTRL_CNTS">내용</label>
	                  <div class="tbl-basic-td">
	                    		${board.board_content }
	                    </div>
	               
	                </div>
	                  <div class="grid-item colspan2">
	                  <label for="HOFS_INTR_MTRL_CNTS">입찰수</label>
	                  <div class="tbl-basic-td">
	                    		26건  <span><button  class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myinModal">입찰내역보기</button> </span>
	                    </div>
	               
	                </div>
	              
	              
	              
	              </div>
	            </div>
	          </form>
	      
	          </div>
	         </div>
	      <!-- // content -->  

	       <!-- modal -->
	      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="Modal" aria-hidden="true">
	          <div class="modal-dialog">
	          <div class="modal-content">
	              <div class="modal-body">
	                  <div class="modal-tit">
	                      <h2 class="h3">쪽지</h2>
	                  </div>
	                  <div class="modal-con">
	                      <div class="tbl grid-layout grid1">
	                          <div class="grid-item">
	                          <label for="IUY_CLSS_NM">수신자</label>
	                          <div class="tbl-basic-td">
	                              <div class="input-wrap w100">
	                                  <span id="IUY_CLSS_NM">닉네임</span>
	                              </div>
	                          </div>
	                          </div>
	                          <div class="grid-item">
	                              <label for="IUY_CLSS_CNTS">내용적기</label>
	                              <div class="tbl-basic-td">
	                              <div class="input-wrap w100">
	                                  <div class="input-wrap w100">
	                                  <textarea class="grid-input" role="textbox" id="HOFS_INTR_MTRL_CNTS" name="HOFS_INTR_MTRL_CNTS" title="쪽지내용 입력" maxlength="500" rows="5"></textarea>
	                                </div>
	                              </div>
	                              </div>
	                          </div>
	                      </div>
	                  </div>
	               
	              </div>
	          </div>
	          </div>
	      </div>
	   

	 <!-- modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="Modal" aria-hidden="true">
	    <div class="modal-dialog">
	    <div class="modal-content">
	        <div class="modal-body">
	            <div class="modal-tit">
	                <h2 class="h3">쪽지</h2>
	            </div>
	            <div class="modal-con">
	                <div class="tbl grid-layout grid1">
	                    <div class="grid-item">
	                    <label for="IUY_CLSS_NM">수신자</label>
	                    <div class="tbl-basic-td">
	                        <div class="input-wrap w100">
	                            <span id="IUY_CLSS_NM">닉네임</span>
	                        </div>
	                    </div>
	                    </div>
	                    <div class="grid-item">
	                        <label for="IUY_CLSS_CNTS">내용적기</label>
	                        <div class="tbl-basic-td">
	                        <div class="input-wrap w100">
	                            <div class="input-wrap w100">
	                            <textarea class="grid-input" role="textbox" id="HOFS_INTR_MTRL_CNTS" name="HOFS_INTR_MTRL_CNTS" title="쪽지내용 입력" maxlength="500" rows="5"></textarea>
	                          </div>
	                        </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	                <div class="btn-area">
              <button class="btn btn-outline-primary"  data-bs-dismiss="modal" aria-label="Close">전송</button>
            </div>
	            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
	                <i class="las la-times"></i>
	            </button>
	            <!-- //닫기버튼 -->
	        </div>
	    </div>
	    </div>
	</div></div>
	</div>
	</html>
    

<!------------- Modal --------------->
<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
		<h4 class="modal-title" ><strong >입찰하기</strong></h4>

        <button type="button" class="btn-close" data-bs-dismiss="modal">✖</button>
      </div>

      <!-- Modal body -->
     
      	<div class="modal-body">
		<h4 class="fs18i" style="text-align:center;" ><strong><span id="dvItemname">산울림 귀여운 소녀의 디스코 LP</span></strong></h4>
		<div class="tableDefault">
		    <div class="auction-img-main ">
                          <ul>
                            <li >
                              <img id="auction-image" src="https://i.imgur.com/oLXMXVW.jpg"  onclick="location.href='/ongo/auction/auctionRead'"></li>
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
                       <div class="btn-area">
			<div id="numBox" style="display:none;position:absolute"></div><table>
				<tbody><tr>
					<th style="text-align:center;">판매자</th>
					<td><strong><span id="dvUserid">math0715</span></strong></td>
				</tr>
				<tr class="visible-lg visible-md visible-sm">
					<th style="text-align:center;">남은기간</th>
					<td><span id="dvEddate">20:35</span></td>
				</tr>
				
			
				<tr id="bidDelivery"> 
					<th style="text-align:center;">입찰내역</th>
					<td><span id="dvDeliveryB">26건</span><span id="dvDeliveryMb"></span>
					
					    <span id="dvDeliveryB"><button  class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myinModal">입찰상세내역</button></span><span id="dvDeliveryMb"></span>
					</td>
				</tr>
				<tr>
					<th style="text-align:center;">최소가</th>
					<td id="dvBidunit">2,000원</td>
				</tr>
				<tr>
					<th style="text-align:center;">현재가</th>
					<td >
						<strong class="fcBlue" id="bidCmoney">222,000원</strong>&nbsp;<button href="#none" class="skbor" id="reload_btn" onclick="bidPopObj.bidFormLoad();"style="width:70px;padding:4px;">새로고침</button>
						<a href="#none" id="bidPlus" class="btn btn-gray" style="display:inline-block;min-width:70px;padding:4px;"><font style="color:red;font-weight:bold;">▲</font><span id="bidunitSpan">2,000</span></a>
					</td>
				</tr>
				<tr>
					<th style="text-align:center;">입찰금액</th>
					<td>
						<table id="bidTb" border="0" style="width:100%">
							<tbody><tr>
								<td width="92%" align="left">
									<div class="form-inline" id="bidmountDiv">
										<input type="text" autocomplete="off" class="form-control wp80 dpInblock w100" style="padding:4px 4px;" id="bidmount" name="bidmount" maxlength="12" onkeyup="bidObj.bidInputUpKey();" onkeydown="bidObj.bidInputDownKey();">
										<strong class="fcBlue" id="bidMoney">최소 224,000원</strong>
									</div>
								
							</tr>	
						</tbody></table>
					</td>
				</tr>	
				<tr id="padTr" style="display: none;"><td colspan="2" style="text-align:center;padding:0px;margin:0px;">
				        <table id="keypad3" style="width:100%; text-align:center; padding:0px; margin:0px; border:solid 2px black;">
				            <tbody><tr>
				                <td align="right" style="padding:4px 11px 0 0;"><div id="close_btn">×</div></td>
				            </tr>
				            <tr>
				                
							        </tbody></table>
				                </td>
				            </tr>
				        </tbody></table>
					
				</tr>
		

				<tr>
					<td colspan="2">
						<div class="modal-footer text-center">
							<button  onclick="javascript:btn()" class="btn btn-blue btn-md">신중하게 입찰하기</button>
							<script>
function btn(){
    alert('입찰하였습니다.');
}
</script>
						</div>
					</td>
				</tr>
			

			</tbody>
		</div>
	</div>
</div>
      </div>

      <!-- Modal 두번째 --> 
    

    </div>
  </div>
<div class="modal" id="myinModal">
		<div class="modal-dialog pop-find">
		<input type="hidden" name="modalGubun" id="modalGubun">
			<!-- Modal content-->
			<div class="modal-content">
				<input type="hidden" id="TenderHistoryPage" name="TenderHistoryPage">
				<div class="modal-header">
					
				</div>
				
					<div class="modal-body">
						
						<h4><strong><span id="itemName"></span></strong></h4>
						<div class="row mt10 mb10">
							<div class="col-sm-9 fcBlue mt10"></div>
							<div class="col-sm-3 form-group mt5">
								<select name="th_row" id="th_row" class="form-control" onchange="bidObj.bidListHandler('1');">
									<option value="10">10개</option>
									<option value="20">20개</option>
									<option value="30">30개</option>
								</select>
							</div>
						</div>
						<div class="tableDefault">
							<table class="text-center">
								<colgroup>
									<col width="33%;">
									<col width="25%;">
									<col width="24%;">
									<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>입찰일시</th>
										<th>입찰자</th>
										<th>입찰금액</th>
										
									</tr>
								</thead>
								<tbody id="th_table"><tr>
<td>2023-01-05 17:20:40.08</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-05 18:46:03.43</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-05 20:18:20.18</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-05 20:50:01.80</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-05 22:28:18.58</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-06 00:18:07.97</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-06 07:57:17.51</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-06 08:36:40.37</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-06 10:19:32.23</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-06 15:27:19.37</td>
<td>*****</td>
<td>진행중</td>
</tr>
</tbody>
							</table>
							<div id="th_paging" class="pager"><ul class="pagination"><li><a href="#none" onclick="goPage(1)" style="letter-spacing:-3px;">&lt;&lt;</a></li>
<li><a href="#none" onclick="goPage(1)" style="">1</a></li>
<li class="active"><a href="#none">2</a></li><li><a href="#none" onclick="goPage(3)" style="">3</a></li>
<li><a href="#none" onclick="goPage(4)" style="">4</a></li>
<li><a href="#none" onclick="goPage(5)" style="">5</a></li>
<li><a href="#none" onclick="goPage(6)" style="">&gt;</a></li>
<li><a href="#none" onclick="goPage(6)" style="letter-spacing:-3px;">&gt;&gt;</a></li>
</ul>
</div>
						</div>

					</div>

					<div class="modal-footer text-center">
						<a href="#none" class="btn btn-blue btn-md" data-dismiss="modal" onclick="javascript:$(&quot;#modalGubun&quot;).val(&quot;&quot;);">확인</a>
					</div>
			</div>

		</div>
	</div>




	</body>
	</html>