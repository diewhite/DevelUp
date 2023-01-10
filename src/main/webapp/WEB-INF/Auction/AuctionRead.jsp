<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<html>
	<head> 
<style>   //모달에 적용한 css속성값. 
.button{ position:absolute; top:50%; left:50%;
  width:120px; height:30px; margin-top:-15px; margin-left:-60px;
  line-height:15px; cursor:pointer;
}

.modal{ 
  position:absolute; width:100%; height:100%; background: rgba(0,0,0,0.8); top:0; left:0; display:none;
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
	                <h1 style="text-align:center;">새거같은 짝퉁팝니다.</h1>
	            </div>
	        </div>
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
       <button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/auction/auctionbid'">입찰하기</button>
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
	                      akd123 
	                      <p>(닉네임)</p>
	                    
	                    </div>
	                  </div>
	                </div>
	              
	              <div class="tbl grid-layout grid2">
	                <div class="grid-item colspan2">
	                  <label for="select_target_1">카테고리</label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap w20">
	                      <select class="form-select grid-input"title="카테고리">
	                       <option value="01">자동차</option>
	                       <option value="02">핸드폰</option>
	                      </select>
	                    </div>
	                  </div>
	                </div>
	                <div class="grid-item colspan2">
	                  <label >상태</label>
	                  <div class="tbl-basic-td">
	                    <div class="input-wrap w20">
	                      경매진행중
	                    
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
	                    <div> 시작가: 5000원  </div>
	                    <p class="gray">입찰내역: 7000원 </p> 
	                    <p class="gray">입찰내역: 11000원 </p> 
	                    <p class="gray">입찰내역: 13000원 </p> 
	                   
	                    
	                     <p class="blue">현재입찰가: 16000원 </p> 
	                     <p>최소가: 1000원 </p> 
	                   
	                   
	                  
	                    </div>
	             
	                  </div>
	                </div>
	                
	                <div class="grid-item colspan2">
	                  <label for="HOFS_INTR_MTRL_CNTS">내용</label>
	                  <div class="tbl-basic-td">
	                    		너무너무 별로에요
	                    </div>
	               
	                </div>
	                  <div class="grid-item colspan2">
	                  <label for="HOFS_INTR_MTRL_CNTS">입찰수</label>
	                  <div class="tbl-basic-td">
	                    		26건
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
	</div>
	</html>
    

<!------------- Modal --------------->


	</body>
	</html>