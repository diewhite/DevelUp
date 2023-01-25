<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<html>
<head> </head>
<body onload="글등록후 수정불가능!!!">
<!-- 이 아래부터  content부분부터 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->
 <form action="/ongo/auctionWrite.do" method="post" enctype="multipart/form-data">
<!-- content -->
<div id="contents">
        <!-- title -->
        
        <div class="sub_top">
            <div class="container">
          		<input type=hidden hits=0,auction_category=null,end_price=0,current_price=0>
                <h1>경매등록</h1>
            </div>
        </div>
        <!-- //title -->
        <!-- 게시판 -->
       <div class="container">
   								<!-- 아이디 세션에서 가져와야함 -->
   								<div class="grid-item colspan2">
							<label for="HOFS_DTADR">작성자</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w100">
								<label>${user.member_id}<input type="hidden" id="member_id" name="member_id" value="${user.member_id}">
								</label>
									</div>
							</div>
						</div>
      <input type="hidden" >
      <input type="hidden">
      <div class="cont-box-inner">
        
        <div class="tbl grid-layout grid2">
        	
          <div class="grid-item colspan2">
            <label for="select_target_1">상태</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w20" >
                <select class="form-select grid-input" title="상태" name="auction_state">
                 <option value="경매중">경매진행중</option><!--보편적으로 0이 false 1이 true  -->
            <!--      <option value="경매완료">경매완료</option>  -->
                </select>
              </div>
            </div>
          </div>
             	
          <div class="grid-item colspan2">
            <label for="select_target_1">카테고리</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w20" >
                <select class="form-select grid-input" title="카테고리" name="auction_category">
                 <option value="가전">가전</option><!--보편적으로 0이 false 1이 true  -->
                 <option value="컴퓨터">컴퓨터</option> 
                </select>
              </div>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR" id="auction_title" >제목</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <input class="grid-input" type="text"  maxlength="50" title="타이틀" name="auction_title">
              </div>
            </div>
          </div>
          
          </div>
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR" >경매</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w30 me-4">
              <div> 시작가   </div>
              <input id="start_price" name="start_price" class="bid-start" type="text"  maxlength="50" title="시작가"> 
              <h6 >!경고! 가격은 등록후 수정불가능합니다.</h6>
              
                <div> 최소가   </div>
              <input id="min_price" name="min_price" class="bid-start" type="text"  maxlength="50" title="최소가"> 
            
              </div>
            </div>
          </div>
         
          
          <div class="grid-item colspan2">
            <label for="HOFS_INTR_MTRL_CNTS">사이즈(상세스펙)</label>
            <div class="tbl-basic-td">
              <div class="input-wrap w100">
                <textarea name="board_content" id="board_content"  class="grid-input" role="textbox"  maxlength="500" rows="5"></textarea>
              </div>
            </div>
          </div>
        
          <div class="grid-item colspan2">
            <label for="HOFS_DTADR">첨부파일</label>
            <div id="list_photo" class="tbl-basic-td">
              <div class="input-wrap w100">
                  <input type="file" class="form-control" id="list_photo" name="files" value="${AuctionRead.list_photo}"/>
              </div>
            </div>
          </div>
     
        </div>
      </div>
   
  			<div class="btn-area">
  			<!--글등록   -->
       <button class="btn btn-primary btn-large" type="submit" onclick="location.href='/ongo/auction/auctionwrite'">글등록</button>
      </div>
      
        </div>
      
   </form>
   
<!-- // content -->

 <!-- modal -->
	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
<!-- //modal -->

</body>
</html>