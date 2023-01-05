<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head> </head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

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
  <!--
    /ongo/member/memberread.do?state=UPDATE&member_id=${board.member_no } 
 
    -->
      <form action="/ongo/member/memberread?state=UPDATE&member_id=${board.member_no }" method="POST" >
		<input type="hidden">
		<div class="cont-box-inner">
			<div class="title">
				<h3 class="h4">회원상세</h3>
			</div>
			<div class="tbl grid-layout grid2">
			<div class="grid-item colspan2">
					<label>회원번호</label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRead.member_no}</div>
					</div>
				</div>
				<div class="grid-item">
					<label>성명<em class="org-txt asterisk" title="필수">*</em></label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRead.member_name}</div>
					</div>
				</div>
				<div class="grid-item">
					<label >휴대전화번호<em class="org-txt asterisk" title="필수">*</em></label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRead.member_phone}</div>
					</div>
						
				</div>
				<div class="grid-item colspan2">
					<label >아이디<em class="org-txt asterisk" title="필수">*</em></label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRead.member_id}</div>
					</div>
				</div>
				
			
				<div class="grid-item colspan2">
					<label for="HOFS_ADDR">주소</label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRead.member_addr1}</div>
					</div>
				</div>
				<div class="grid-item colspan2">
					<label for="USR_EMADR">이메일주소<em class="org-txt asterisk" title="필수">*</em></label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRead.member_email}</div>
					</div>
				</div>
				</div>
		
		<div class="btn-area flex-row">
	       <button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/member/memberboard'">목록</button>
	        <button class="btn btn-success btn-large text-white" type="button" onclick="location.href='/ongo/emp/empserviceupdate.do'">수정</button>
	        <button class="btn btn-outline-danger btn-large" type="button" onclick="location.href='/ongo/emp/empservice.do'">삭제</button>
      </div>
	</form>
  </div> <!-- // container-->
</div><!-- // contents -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->

</body>
</html>