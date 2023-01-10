package tresh;

public class Snippet {
	
	      <div class="container">
	      <form id="saveForm" name="saveForm">
	        <input type="hidden" value="">
	        <input type="hidden">
	        <div class="cont-box-inner">
	        
	        
	        
	        <div class="grid-item colspan2">
	        <label for="HOFS_DTADR">경매 db</label>
	        <div class="tbl-basic-td">
	          <div class="input-wrap w30 me-4">
	          <div> 시작가   </div>
	          <input class="bid-start" type="text"  maxlength="50" title="시작가"> 
	           <div> 최소가   </div>
	            <input class="bid-min" type="text"  maxlength="50" title="최소가"> 
	        
	          </div>
	          <div class="btn-area">
	       <button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/auction/auctionbid'">입찰하기</button>
	      </div>
	        </div>
	      </div>
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        <!-- 게식판 -->
	        <div  float:left border: 5px solid skyblue;>
	       <div class="container">
	    <form id="saveForm" name="saveForm">
	      <input type="hidden" value="">
	      <input type="hidden">
	      <div class="cont-box-inner">
	        
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
	            <label for="select_target_1">상태</label>
	            <div class="tbl-basic-td">
	              <div class="input-wrap w20">
	                <select class="form-select grid-input"title="상태">
	                 <option value="01">경매진행중</option>
	                 <option value="02">경매종료</option>
	                </select>
	              </div>
	            </div>
	          </div>
	       
	        
	         
	        
	          <div class="grid-item colspan2">
	            <label for="HOFS_INTR_MTRL_CNTS">내용</label>
	            <div class="tbl-basic-td">
	              <div class="input-wrap w100">
	                <textarea class="grid-input" role="textbox" id="HOFS_INTR_MTRL_CNTS" name="HOFS_INTR_MTRL_CNTS" title="蹂몄궗 ?냼媛쒖옄猷뚮궡?슜 ?엯?젰" maxlength="500" rows="5"></textarea>
	              </div>
	            </div>
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
	            <div class="btn-area">
	              <button type="button" class="btn btn-outline-primary"  data-bs-dismiss="modal" aria-label="Close">전송</button>
	            </div>
	            <!-- 닫기버튼 -->
	            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
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
}

