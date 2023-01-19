<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head> 

	<script type="text/javascript">
	//구분 저장공유
	$(document).ready(function(){ 
		data = "${dealRead.dealType}" 
		$("#dealType").val(data).attr("selected", "selected"); 
	});
	//상품카테고리 저장공유
	$(document).ready(function(){ 
		data = "${dealRead.product_category}" 
		$("#product_category").val(data).attr("selected", "selected"); 
	});

	//거래요청버튼 클릭 시 
	$(document).ready(function(){ 
	$("#dealreq-btn").on("click", function() {
		var seller_id="${dealRead.member_id}"
		var req_id="${user.member_id}"
		var deal_number="${dealRead.deal_number}"
		
		 location.href="/ongo/history/dealreq?seller_id="+seller_id+"&req_id="+req_id+"&deal_number="+deal_number;
				 
		 })
	});
	
	
	
	
	
	

</script>


</head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
<div id="contents">
        <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h1>중고</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
        <div class="container">
            <form  action="/ongo/dealRead.do?deal_number=${dealRead.deal_number}&state=UPDATE" method="post">
                <input type="hidden" name="countPerPage" id="countPerPage" value="10">
                <input type="hidden" name="zon" id="zon" value="">

                <!-- 현재 탭 표시 -->
                <h2 class="visually-hidden">중고거래</h2>
                <!-- //현재 탭 표시 -->

		
					<!-- 로그인시스템 생성전 임시필요 -->
			<!-- 		<div class="cont-box-inner">
						<div class="tbl grid-layout grid2">
							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">임시아이디(작성자)</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w20">
										<input class="grid-input" type="text" maxlength="50"
											title="id" id="id" name="id">
									</div>
								</div>
							</div>
							</div>
					</div> -->
							
				
							
							<div class="cont-box-inner">
					<div class="tbl grid-layout grid2">
						<div class="grid-item colspan2">
							<label for="select_target_1">구분</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w20">
									<select class="form-select grid-input" id="dealType" name="dealType" >
										<option value="중고">중고</option>
										<option value="나눔">나눔</option>
									</select>
								</div>
							</div>
						</div>
							
							
							
							
							
							
							<div class="grid-item colspan2">
								<label for="select_target_1" >상품카테고리</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w20">
									
										<select class="form-select grid-input" title="게시판" id="product_category" name="product_category">
											<option value="디지털&가전">디지털&가전</option>
											<option value="가구&인테리어">가구&인테리어</option>
											<option value="유아동">유아동</option>
											<option value="생활&가공식품">생활&가공식품</option>
											<option value="레져&스포츠">레져&스포츠</option>
											<option value="여성잡화">여성잡화</option>
											<option value="여성의류">여성의류</option>
											<option value="남성잡화">남성잡화</option>
											<option value="남성의류">남성의류</option>
											<option value="게임&취미">게임&취미</option>
											<option value="뷰티&미용">뷰티&미용</option>
											<option value="반려동물용품">반려동물용품</option>
											<option value="도서&티켓&음반">도서&티켓&음반</option>
											<option value="기타">기타</option>
										</select>
									</div>
								</div>
							</div>
							
							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">제목</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										${dealRead.board_title}
									</div>
								</div>
							</div>
						
							
							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">작성자</label>
								<div class="tbl-basic-td" onclick="modalData(this)">
									<div class="col-md-8" >
									<%-- 	<input type="button" id="modal2-open" value="${dealRead.member_id}" style="border: 0em;"> --%>
										<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
									          ${dealRead.member_id}
									        </a>
									        <ul class="dropdown-menu" style="width: 100px;">
									            <li><a class="dropdown-item" href="#" title="쪽지보내기 팝업" data-bs-toggle="modal" data-bs-target="#sendNoteModal" id=sendnote>쪽지보내기</a></li>
									            <li><a class="dropdown-item" href="#" title="회원정보 팝업" data-bs-toggle="modal" data-bs-target="#userInfoModal" id=userinfo>회원정보보기</a></li>
									            <li><a class="dropdown-item" href="#">거래내역보기</a></li>
									        </ul>
									</div>
								</div>
							</div>
							
							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">금액</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w30 me-4">
									
									
									<span class="blue-bold"><fmt:formatNumber  pattern="#,###원">
										${dealRead.product_price}</fmt:formatNumber></span>
										<!-- <input class="grid-input" type="number" maxlength="50"
											title="product_price" id="product_price" name="product_price"> -->
									</div>
									<!--<div class="form-check">
										<input type="checkbox" class="form-check-input" value=" ">
										<label class="form-check-label"> <span class="radio"></span>나눔</label> 
									</div>-->
								</div>
							</div>



							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">내용</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										${dealRead.board_content}
									</div>
								</div>
							</div>
						
					
								
							
							

								<div class="grid-item colspan2">
								<label for="HOFS_DTADR">사진</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<c:forEach var="file" items="${filedtolist}" >
											<img alt="" src="/ongo/dealUpload/${file.storeFilename}">
										</c:forEach>
									</div>
								</div>
								</div>
							




							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">첨부파일</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<c:forEach var="file" items="${filedtolist}" >
											<%-- <img alt="" src="/ongo/dealUpload/${file.storeFilename}"> --%>
											<label for="HOFS_DTADR"><a href="/ongo/dealDownload/${dealRead.deal_number}/${file.dealFile_number}">${file.originalFilename}</a></label><br/>
										</c:forEach>
									
										
									</div>
								</div>
							</div> 

						</div>
					</div>
				
				
				
					
							
							
							
							
					
					<!-- <div class="btn-area">
						<input type="submit" value="게시글 등록" class="btn btn-primary btn-large" />
					</div> -->
			<div class="btn-area">

				<button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/deal_listAll3.do?dealType=all'">리스트</button>
				<button class="btn btn-primary btn-large" id="dealreq-btn" type="button" >거래요청</button>
											<!-- onclick="location.href='/ongo/history/dealreq?
				seller_id=${dealRead.member_id}&req_id=${user.member_id}&deal_number=${dealRead.deal_number}'" -->										

			</div>
			
		<c:choose>
		<c:when test="${user.member_id==dealRead.member_id}">
			<div class="btn-area">
				<button type="submit" class="btn btn-success btn-large">수정</button>
			</div>
			</form>
		</c:when>	
			<c:otherwise>
			</c:otherwise>				
				
		</c:choose>	
		
		
						
			</div>
		</div>

	<!-- send note modal -->
	<div class="modal fade" id="sendNoteModal" tabindex="-1"
		aria-labelledby="Modal" aria-hidden="true">
		<form action="/ongo/mypage/note/sendnote" method="post">
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
											<span><textarea class="grid-input" role="textbox" id="reply_receive_id" name="receive_id" title="수신자" maxlength="500" rows="1" readonly="readonly" required="required"></textarea></span>
											<input type="text" hidden="true" id="send_id" name="send_id" value="${user.member_id}">
										</div>
									</div>
								</div>
								<div class="grid-item">
									<label for="IUY_CLSS_CNTS">내용적기</label>
									<div class="tbl-basic-td">
										<div class="input-wrap w100">
											<div class="input-wrap w100">
												<textarea class="grid-input" role="textbox"
													id="content" name="content"
													title="쪽지내용 입력" maxlength="500" rows="5" required="required"></textarea>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="btn-area">
							<button type="submit" class="btn btn-warning text-white btn-large"
								data-bs-dismiss="modal" aria-label="Close" onclick="sendNote()">전송</button>
						</div>
						<!-- 닫기버튼 -->
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close">
							<i class="las la-times"></i>
						</button>
						<!-- //닫기버튼 -->
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- //send note modal -->

	<!-- user info modal -->
	<div class="modal fade" id="userInfoModal" tabindex="-1"
		aria-labelledby="Modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="modal-tit">
						<h2 class="h3">회원정보</h2>
					</div>
					<div class="modal-con">
						<div class="tbl grid-layout grid1">
							<div class="grid-item">
								<label for="IUY_CLSS_NM">ID</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<span id="member_id"></span>
									</div>
								</div>
							</div>
							<div class="grid-item">
								<label for="IUY_CLSS_CNTS">E-mail</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<span id="member_email"></span>
									</div>
								</div>
							</div>
							<div class="grid-item">
								<label for="IUY_CLSS_CNTS">가입날짜</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<span id="member_date"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 닫기버튼 -->
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<i class="las la-times"></i>
					</button>
					<!-- //닫기버튼 -->
				</div>
			</div>
		</div>
	</div>
	<!-- //user info modal -->


<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
<script type="text/javascript">
	//prepare data when popup menu on ID
	function modalData(clicked_element){
		//get and set to data for note
		var row_a = clicked_element.getElementsByTagName("a");
		var receive_id = (row_a[0].textContent).trim();
		var id = {"member_id":receive_id};
		$("#reply_receive_id").html(receive_id);
		
		$.ajax({
			url : "/ongo/member/ajax_memberread",
			type : "get",
			data : id,
			success : function(data){
				//data transfer to user info in modal
				$("#member_id").html(data.member_id);
				$("#member_email").html(data.member_email);
				$("#member_date").html(data.member_date);
			},
			error : function(obj,msg,statusMsg){
				alert("오류발생:"+statusMsg);
			}//end error
		})//end ajax
	}//end modalData
	
	
</script>
</body>
</html>