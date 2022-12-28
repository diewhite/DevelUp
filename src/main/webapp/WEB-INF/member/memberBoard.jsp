<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head> </head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
<div id="contents">
        <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h>계정관리</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
        <div class="container">
            <form id="searchForm" name="searchForm" >
             

                <div class="board_list">
                    <div class="board_info d-flex">
                        <div class="total">전체 <strong class="blue" id="totalCount">9</strong>
                            건 (페이지 <strong class="blue" id="nowPage">1</strong>/<span id="resultPage">1</span>)
                        </div>
                        <div class="form_box">

                            <fieldset>
                                <legend class="visually-hidden">검색</legend>
                                <div class="input-group">
                                    <div class="select">
                                        <label class="visually-hidden" for="innoSelect">소속지구</label>
                                        <select class="form-select" id="ZON_SEQ" title="지역선택" name="ZON_SEQ">
                                          <option value="">지역선택</option>
                                           <option value="">서울</option>
                                            <option value="">대전</option>
                                            <option value="">대구</option>
                                        </select>
                                    </div>
                                    <div class="select">
                                        <label class="visually-hidden" for="srchSelect">검색 구분</label>
                                        <select class="form-select" id="srchSelect" title="검색구분선택" name="srchSelect">
                                            <option value="ALL">전체</option>
                                            <option value="NTC_MATT_TTL">제목</option>
                                            <option value="NTC_MATT_CNTS">내용</option>
                                            <option value="EMP_NM">작성자</option>
                                        </select>
                                    </div>
                                    <input type="text" class="form-control" name="SCH_KEY_WORD" id="SCH_KEY_WORD" title="검색어 입력" placeholder="검색어를 입력하세요." onkeyup="enterkey()">
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
                                <col style="width:20%">
                                <col style="width:60%">
                                <col style="width:10%">
                                <col style="width:20%">
                                <col style="width:10%">
                                <col style="width:10%">
                            </colgroup>
                            <thead>
                                <tr> 

                                    <th scope="col">이름</th>
                                    <th scope="col">아이디</th>
                                    <th scope="col">회원번호</th>
                                    <th scope="col">주소</th>
                                    <th scope="col">휴대폰번호</th>
                                    <th scope="col">이메일</th>
                                    <th scope="col">권한</th>
                                    <th scope="col">가입일</th>
                                </tr>
                            </thead>
                            <tbody id="ksicList">
                              <tr class="notice">
                                <td data-before="번호"><div><img src="/ongo/images/noti-icon.png" alt="공지"></div></td>
                                <td data-before="지역">서울</td>
                                <td data-before="제목"><a href="#" onclick="location.href='/ongo/member/memberserviceread.do'">경매진행성공</a></td>
                                <td data-before="담당자">유인선</td><td data-before="작성일">2022-11-15</td>
                                <td data-before="파일"><i class="las la-file-alt"></i></td>
                                <td data-before="조회">189</td>
                              </tr>
                              <tr class="notice">
                                <td data-before="번호">2</td>
                                <td data-before="지역">대구</td>
                                <td data-before="제목"><a href="#">마감안내</a></td>
                                <td data-before="담당자">시스템관리자</td>
                                <td data-before="작성일">2022-10-24</td>
                                <td data-before="파일"></td>
                                <td data-before="조회">323</td>
                              </tr>
                              <tr class="notice">
                                <td data-before="번호">2</td>
                                <td data-before="지역">대구</td>
                                <td data-before="제목"><a href="#">마감안내</a></td>
                                <td data-before="담당자">시스템관리자</td>
                                <td data-before="파일"><div>
                                  <button type="button" class="board_label yellow" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#exampleModal">쪽지발송</button></div>
                                </td>
                                <td data-before="작성일">2022-10-24</td>
                                <td data-before="조회">323</td>
                              </tr>
                              <tr class="notice">
                                <td data-before="번호">1</td>
                                <td data-before="지역">전주</td>
                                <td data-before="제목"><a href="#">공지 및 신규 마감안내</a></td>
                                <td data-before="담당자">시스템관리자</td>
                                <td data-before="작성일">2022-10-24</td>
                                <td data-before="파일"><i class="las la-file-alt"></i></td>
                                <td data-before="조회">323</td>
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