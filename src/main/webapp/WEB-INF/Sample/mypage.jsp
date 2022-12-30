<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css"> </style>
<script type="text/javascript"> </script>
</head>
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
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->

</body>
</html>