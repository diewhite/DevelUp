<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head> </head>
<body>

<!-- content -->
<div id="contents">
       <!-- title -->
       <div class="sub_top">
           <div class="container">
               <h1>회원목록</h1>
           </div>
       </div>
       <!-- //title -->

  <!-- container -->
  <div class="container"> 
	
               <div class="board_list">
                   <div class="board_info d-flex">
                       <div class="total">전체 <strong class="blue" id="totalCount">9</strong>
                           건 (페이지 <strong class="blue" id="nowPage">1</strong>/<span id="resultPage">1</span>)
                       </div>
                      <div class="form_box d-grid d-md-flex justify-content-md-end"> 
                       <button class="btn btn-outline-warning me-md-2" type="button">쪽지발송</button>
                       <button class="btn btn-outline-danger me-md-2" type="button">회원삭제</button>
                       <button class="btn btn-outline-success me-md-2" type="button"><i class="las la-file-excel"></i> 엑셀</button>
                       <fieldset>
	                       <div class="input-group">
		                       <input type="text" class="form-control" name=" " title="검색어 입력" placeholder="이름검색" >
		                       <button type="button" class="btn btn-search" ><i class="las la-search"></i> 검색</button>
	                        </div >
                       </fieldset>
                       
               		 </div>
                   </div>
                   </div>
                   <div class="board">
                       <table class="table">
                           <caption>게시판 목록</caption>
                           <colgroup>
                              <col width="5%">
                              <col width="6%">
                               <col width="6%">
                                <col width="6%">
                               <col width="20%">
                               <col width="*">
                               <col width="*">
                               <col width="10%">
                               <col width="5%">
                           </colgroup>
                           <thead>
                               <tr> 
                              	<th><input type="checkbox" name=" "  class="form-check-input" onclick="fnChk()"></th>
                                   <th scope="col">회원번호</th>
                                   <th scope="col">이름</th>
                                   <th scope="col">아이디</th>
                                   <th scope="col">주소</th>
                                   <th scope="col">휴대폰번호</th>
                                   <th scope="col">이메일</th>
                                   <th scope="col">가입일</th>
                                   <th scope="col">상태</th>
                               </tr>
                           </thead>
                           <tbody >
                           <c:forEach var="memberR" items="${memberlist}">
                             <tr class="notice">
                               <td data-before="체크박스">
					           <div class="form-check">
						            <label class="form-check-label">
						              <input type="checkbox" name="remember" id="remember" class="form-check-input" onclick="fnChk()">
						            </label>
						          </div>
						        </td>
						        <td data-before="회원번호">${memberR.member_no}</td>
                               <td data-before="이름">${memberR.member_name}</td>
                               <td data-before="아이디" >
								<!-- 
								 <button type="submit" class="blue" 
								 onclick="location.href='/ongo/member/memberupdate.do?member_no=${member.member_id}&state=READ'">
								 ${member.member_id}</button>
								 ==========설명
								JSP요청 컨트롤러로 전달할 파라미터들=> ? member_id=${member.member_id}&state=READ 
								 member_id => 파라미터 이름 , =${member.member_id} => 파라미터에 연결시켜주고 컨트롤러로 보낼 값
								 => member라는 어트리뷰트에 정의된 멤버변수인 member_id라는 변수명을 찾아서 매핑
								-->
                              	 <button type="button" class="blue" 
                              	 onclick="location.href='/ongo/member/memberread.do?member_id=${memberR.member_id}&state=READ'">
                              	 ${memberR.member_id}</button>
                               </td>
                               <td data-before="주소">${memberR.member_addr1}</td>
                               <td data-before="휴대폰번호">${memberR.member_phone}</td>
                               <td data-before="이메일">${memberR.member_email}</td>
                              <td data-before="가입일">${memberR.member_date}</td>
                               <td data-before="가입상태">${memberR.member_sign}</td>
                             </tr>
                            </c:forEach>
                           </tbody>
                       </table>
                         <div class="text-right">
                         <button type="button" class="btn btn-primary btn-large" onclick="location.href='/ongo/member/join3?state=ADMIN'">회원등록</button>
                       </div>

                       <!-- 페이지네이션 -->
                       <div class="pagination">
                         <input type="hidden" id="PAGE" name="PAGE" value="1">
                         <input type="hidden" id="CNT_PER_PAGE" name="CNT_PER_PAGE" value="10">
                         <input type="hidden" id="START_INDEX" name="START_INDEX" value="">
                         <input type="hidden" id="END_INDEX" name="END_INDEX" value="">
                           <li class="page-item arr">
                             <a class="page-link" href="javascript:fnMovePage(1, fnSearch, 'pagination');" aria-label="Previous">
                               <span class="visually-hidden">처음으로</span>
                               <span aria-hidden="true"><i class="las la-angle-double-left"></i></span>
                             </a>
                           </li>
                           <li class="page-item active">
                             <a class="page-link" href="javascript:fnMovePage(1, fnSearch, 'pagination');">1</a>
                           </li>
                           <li class="page-item arr">
                             <a class="page-link" href="javascript:fnMovePage(1, fnSearch, 'pagination');" aria-label="NextEnd">
                               <span class="visually-hidden">다음으로</span>
                               <span aria-hidden="true"><i class="las la-angle-double-right"></i></span>
                             </a>
                           </li>
                       </div>
                       <!-- //페이지네이션 -->
                   </div>
</form>
                   <!-- 주의 -->
                   <div class="survey">
                       <ul class="survey_info d-flex dot_list">
                           <li><strong class=" ">주의</strong><span>함부로 회원 삭제 하지 마세요</span></li>
                       </ul>
                   </div>
                   <!-- //주의-->
               </div>
           
 		</div><!-- // container-->
   </div><!-- // contents -->

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

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>
