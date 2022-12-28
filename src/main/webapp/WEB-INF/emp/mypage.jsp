<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="ko">

<!-- head 공통 타일즈 연결 -->
<head>
<tiles:insertAttribute name="top"></tiles:insertAttribute>
</head>
<!-- //head 공통 타일즈 연결 -->

<body>

<!-- content -->
<div id="contents">
        <!-- title -->
       <div class="sub_top">
      <div class="container">
          <h1>나의온고</h1>
      </div>
  </div>
        <!-- //title -->

        <!-- 게시판 -->
        <div class="container">
          <div class="cont-box-inner board_list">
            <div class="board_info d-flex">
              <div class="align-items-end">
                <h2 class="h4 verticalM">배달관리</h2>
              </div>
              <div class="d-grid d-md-flex justify-content-md-end">   
                  <button class="btn btn-primary btn-small" onclick="fnExcel();" type="button">배달관리 바로가기</button>
              </div>
            </div>
            <div class="table-responsive">
              <table class="table bg-table">
                <caption>배달관리</caption>
                <colgroup>
                  
                </colgroup>
            <thead>
              <tr>
                <th class="blue-bg border-bottom " colspan="5">주문/배송조회</th>
                <th  class="border-bottom" colspan="5">취소/반품/미수령</th>
              </tr>
                <tr>
                  <th class="blue-bg board ">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
              </tr>
            </thead>
            <tbody>
                 <tr>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                    <td >1</td>
                  <td >1</td>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                </tr>
             
            </tbody>
              </table>
             </div>
            </div><!--//cont-box-inner-->
 


        <div class="cont-box-inner board_list">
            <div class="board_info d-flex">
              <div class="align-items-end">
                <h2 class="h4 verticalM">거래관리</h2>
              </div>
              <div class="d-grid d-md-flex justify-content-md-end">   
                  <button class="btn btn-primary btn-small" onclick="fnExcel();" type="button">거래관리 바로가기</button>
              </div>
            </div>
            <div class="table-responsive">
              <table class="table bg-table">
                <caption>거래관리</caption>
                <colgroup>
                  
                </colgroup>
            <thead>
              <tr>
                <th class="blue-bg border-bottom " colspan="5">주문/배송조회</th>
                <th  class="border-bottom" colspan="5">취소/반품/미수령</th>
              </tr>
                <tr>
                  <th class="blue-bg board ">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
              </tr>
            </thead>
            <tbody>
                 <tr>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                    <td >1</td>
                  <td >1</td>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                </tr>
             
            </tbody>
              </table>
             </div>
            </div>
          </div><!--//cont-box-inner-->

         </div><!--//container-->
       </div><!-- // content -->

      <!-- Footer -->
      <div class="footer">
  <nav class="fnb d-flex">
      <div class="container">
          <ul>
               <li class="on"><strong><a href="#">개인정보처리방침</a></strong></li>
              <li><a href="#">이용약관</a></li>
          </ul>
      </div>
  </nav>  
  <div class="addr d-flex">
      <div class="container">
          <div class="logo-wrap">
             <div class="logo"><a href="/"><img src="images/f-logo.png" alt="온라인 고물상"></a></div>
          </div>
          <span>서울특별시 강남구 삼성로111길
              ⓒ TEAM Devel-Up. All Rights Reserved.</span>
            <span><em class="blk">대표전화</em> : 02-000-0000</span>
            <span><em class="blk">FAX</em> : 02-000-0000</span>
          <div id="GoTop" class="gotop">
              <button type="button" class="btn" onclick="$(window).scrollTop(0);"><span class="visually-hidden">맨위로 가기</span><span><i class="las la-arrow-up"></i></span></button>
          </div>
      </div>
  </div>   
</div>
      <!-- //Footer -->
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
              <button type="button" class="btn btn-warning text-white btn-large"  data-bs-dismiss="modal" aria-label="Close">전송</button>
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