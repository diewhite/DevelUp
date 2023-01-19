<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head> </head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
<div id="contents">
        <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h1>거래요청목록</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
        <div class="container">
                <!-- 현재 탭 표시 -->
                <h2 class="visually-hidden">공지사항</h2>
                <!-- //현재 탭 표시 -->

                <div class="board_list">

                    <div class="board">
                        <table class="table">
                            <caption>게시판 목록</caption>
                            <colgroup>
                                <col style="width:10%">
                                <col style="width:60%">
                                <col style="width:10%">
                                <col style="width:20%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">번호</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">요청자</th>
                                    <th scope="col">작성일</th>
                                </tr>
                            </thead>
                            <tbody id="ksicList">
                            <c:forEach var="recycle" items="${recyclelist }">
                            	<tr class="notice">
                            	<td data-before="번호"><div>${recycle.no }</div></td>
                            	<td data-before="제목"><div><a href="/ongo/recycle/read?no=${recycle.no }">${recycle.title }</a></div></td>
                            	<td data-before="요청자"><div>${recycle.send_id }</div></td>
                            	<td data-before="작성일"><div>${recycle.write_date }</div></td>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <!-- 문의사항 -->
                    <div class="survey">
                        <ul class="survey_info d-flex dot_list">
                            <li><strong>직거래 피해사례 주의</strong><span>안전한 거래를 위해서는 반드시 온고 매매보호서비스를 이용해 주시기 바랍니다.</span></li>
                        </ul>
                    </div>
                    <!-- //문의사항 -->
                </div>
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