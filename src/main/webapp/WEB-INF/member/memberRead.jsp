<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head> 

<script type="text/javascript">
	
function removeCheck(url){
	var answer;
	//페이지를 이동하기 전에 confirm()을 사용해 다시 한번 확인한다.
	//확인을 선택하면 answer에  true, 취소를 선택하면 false 값이 들어간다.
	answer = confirm("데이터를 삭제하시겠습니까?");
	//확인을 선택한 경우 자바스크립트를 호출할 때 같이 넘어온 url이라는 변수에 들어있는 주소로 페이지 이동
	if(answer == true){
		location = url;
	}
}
</script>
</head>
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

      <form action="/ongo/member/memberread?state=UPDATE&member_id=${memberRU.member_id}" method="POST" >
		<input type="hidden">
		<div class="cont-box-inner">
			<div class="title">
				<h3 class="h4">회원상세</h3>
			</div>
			<div class="tbl grid-layout grid2">
			<div class="grid-item">
					<label>회원번호</label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRU.member_no}</div>
					</div>
				</div>
				<div class="grid-item ">
					<label>가입일</label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRU.member_date}</div>
					</div>
				</div>
				
				<div class="grid-item ">
					<label>성명<em class="org-txt asterisk" title="필수">*</em></label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRU.member_name}</div>
					</div>
				</div>
				<div class="grid-item ">
					<label >휴대전화번호<em class="org-txt asterisk" title="필수">*</em></label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRU.member_phone}</div>
					</div>
						
				</div>
				<div class="grid-item ">
					<label >아이디<em class="org-txt asterisk" title="필수">*</em></label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRU.member_id}</div>
					</div>
				</div>
					<div class="grid-item ">
					<label>가입상태</label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRU.member_sign}</div>
					</div>
				</div>
				<div class="grid-item colspan2">
					<label for="HOFS_ADDR">주소</label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRU.member_addr1}</div>
						<div class="input-wrap">${memberRU.member_addr2}</div>
					</div>
				</div>
				<div class="grid-item colspan2">
					<label for="USR_EMADR">이메일주소<em class="org-txt" title="필수">*</em></label>
					<div class="tbl-basic-td">
						<div class="input-wrap">${memberRU.member_email}</div>
					</div>
				</div>
			
				</div>
     
		<div class="btn-area flex-row">
	       <button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/member/memberboard'">목록</button>
	        <button class="btn btn-outline-success btn-large " type="submit" >수정</button>
	        <button class="btn btn-outline-danger btn-large" type="button"  title="회원삭제"
                                onclick="javascript:removeCheck('/ongo/member/memberdelete?member_id=${memberRU.member_id}')">삭제</button> 
      </div>
	</form>
  </div> <!-- // container-->
</div><!-- // contents -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->

</body>
</html>