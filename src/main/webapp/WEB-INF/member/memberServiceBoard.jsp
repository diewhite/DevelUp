<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>
</head>
<body>

<!-- content -->
<div id="contents">
        <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h1>게시물통합관리</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
        <div class="container">
            <form id="searchForm" name="searchForm" >
                <input type="hidden" name="countPerPage" id="countPerPage" value="10">
                <input type="hidden" name="zon" id="zon" value="">

                <!-- 현재 탭 표시 -->
                <h2 class="visually-hidden">공지사항</h2>
                <!-- //현재 탭 표시 -->

                <div class="board_list">
                    <div class="board_info d-flex">
                        <div class="total">총 게시판수(<strong class="blue" id="totalCount">9</strong>)</div>
                        <div class="form_box">
                        <div class="tbl-basic-td">
           			</div>
           			
           		
                            <fieldset>
                                <legend class="visually-hidden">검색</legend>
                                <div class="input-group">
                                    <div class="select">
                                        <label class="visually-hidden" for="srchSelect">검색 구분</label>
                                        <select class="form-select" id="srchSelect" title="검색구분선택" name="srchSelect">
                                            <option value="ALL">전체게시판</option>
                                            <option value=" ">진행중경매</option>
                                            <option value=" ">중고거래</option>
                                        </select>
                                    </div>
                                    <input type="text" class="form-control" name=" " title="검색어 입력" placeholder="글제목 입력" >
                                    <button type="button" class="btn btn-search" ><i class="las la-search"></i> 검색</button>
                                </div>
                            </fieldset>

                        </div>
                    </div>
                    <div class="board">
                        <table class="table">
                            <caption>게시판 목록</caption>
                            <colgroup>
                                <col style="width:10%">
                                <col style="width:10%">
                                <col style="width:30%">
                                <col style="width:10%">
                                <col style="width:15%">
                                <col style="width:15%">
                                <col style="width:10%">
                                <col style="width:10%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">번호</th>
                                    <th scope="col">게시판명</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">작성자</th>
                                    <th scope="col">작성일</th>
                                    <th scope="col">작성시간</th>
                                    <th scope="col">조회</th>
                                    <th scope="col">삭제</th>
                                </tr>
                            </thead>
                            <tbody id="ksicList">
                              <tr class="notice">
                                <td data-before="번호"><div><img src="/ongo/images/noti-icon.png" alt="공지"></div></td>
                                <td data-before="게시판명" >진행중경매</td>
                                <td data-before="제목"><a href="#" onclick="location.href='/ongo/member/memberserviceread.do'">경매진행성공</a></td>
                                <td data-before="작성자">유인선</td>
                                <td data-before="작성일">2022-11-15</td>
                                <td data-before="작성시간">11:445:25</td>
                                <td data-before="조회">189</td>
                                <td data-before="삭제"><button type="button" class="board_label red" title="회원삭제">삭제</button> </td>
                              </tr>
                             
                              <tr class="notice">
                                <td data-before="번호">2</td>
                                <td data-before="게시판명">중고거래</td>
                                <td data-before="제목"><a href="#">마감안내</a></td>
                                <td data-before="담당자">시스템관리자</td>
                                <td data-before="작성일">2022-10-24</td>
                                <td data-before="작성시간">11:445:25</td>
                                <td data-before="조회">323</td>
                                <td data-before="삭제"><button type="button" class="board_label red" title="회원삭제">삭제</button> </td>
                              </tr>
                           
                            </tbody>
                        </table>
                          <div class="text-right">
                          <button type="button" class="btn btn-primary btn-large" onclick="location.href='/ongo/member/memberservicewrite.do'">글쓰기</button>
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

                    <!-- 문의사항 -->
                    <div class="survey">
                        <ul class="survey_info d-flex dot_list">
                            <li><strong>직거래 피해사례 주의</strong><span>안전한 거래를 위해서는 반드시 온고 매매보호서비스를 이용해 주시기 바랍니다.</span></li>
                        </ul>
                    </div>
                    <!-- //문의사항 -->
                </div>
            </form>
            
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