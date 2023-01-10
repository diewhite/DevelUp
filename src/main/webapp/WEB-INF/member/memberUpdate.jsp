<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head> 
<script type="text/javascript">
function checkUsrSubmit() {
	  var ID = $('#saveForm #USR_NM');
	  var PW = $('#saveForm #ENPWD');
	  if (!ID.val()) {
	    alert('ID를 입력하세요.');
	    ID.focus();
	    return false;
	  }

	  if (!PW.val()) {
		    alert('비밀번호를 입력하세요.');
		    PW.focus();
		    return false;
		  }

	}

	$(document).ready(function () {
		var type = "${memberRU.phone1}"
		var type2 = "${memberRU.email2}"
		//	alert(type)
		//alert(type+","+type.length)
		$("#user_phone").val(type).attr("selected","selected");
		$("#select_target_3").val(type2).attr("selected","selected");
		$("#USR_EMADR_2").val(type2);
	})
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>

<!-- content -->
<div id="contents">
        <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h1>회원정보</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
       <div class="container">
       
  	 <form action="/ongo/member/memberupdate" method="POST" >
      <input type="hidden" value=" ">
    
        <div class="title">
          <h3 class="h4">정보수정</h3>
        </div>
        <div class="tbl grid-layout grid2">
        <div class="grid-item">
		<label>회원번호</label>
			<div  class="tbl-basic-td">
				${memberRU.member_no}
			</div>
		</div>
		<div class="grid-item ">
			<label>가입일</label>
			<div class="tbl-basic-td" >
				<div class="input-wrap">${memberRU.member_date}</div>
			</div>
		</div>
          <div class="grid-item">
            <label for="USR_NM">성명<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                 <input class="grid-input" type="text" name="member_name" title="이름" value="${memberRU.member_name}">
              </div>
            </div>
          </div>
      <div class="grid-item">
            <label for="USR_MBTN">휴대전화번호<em class="org-txt asterisk" title="필수">*</em></label>
            <input type="hidden"  name="USR_MBTN">
            <div class="tbl-basic-td">
              <div class="input-wrap w30">
				<select class="form-select grid-input" id="user_phone" name="phone1" data-col="USR_MBTN_1" title="휴대전화번호" >
					<option value="">선택</option>
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
				</select>
			</div>
              -
              <div class="input-wrap w30">
                <input class="grid-input" type="text" name="phone2"  value="${memberRU.phone2}"maxlength="4" pattern="[0-9]+" title="휴대전화번호 앞자리 입력" >
              </div>
              -
              <div class="input-wrap w30">
                <input class="grid-input" type="text" name="phone3"  value="${memberRU.phone3}"maxlength="4" pattern="[0-9]+" title="휴대전화번호 뒷자리 입력" >
              </div>
            </div>
          </div>
           <div class="grid-item">
            <label for="USR_NM">아이디<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                 <input class="grid-input" type="text" name="member_id" title="이름" value="${memberRU.member_id}" disabled>
                 <input type="hidden" name="member_id" value="${memberRU.member_id}" >
              </div>
            </div>
          </div>
         
          <div class="grid-item ">
			<label>가입상태</label>
			<div class="tbl-basic-td">
				<div class="input-wrap">${memberRU.member_sign}</div>
			</div>
		</div>
          <div class="grid-item colspan2">
            <label for="ENPWD">비밀번호<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="password" value="${memberRU.member_pw}" id="ENPWD"  name="member_pw"  title="비밀번호 입력" >
              </div>
                <div class="input-wrap org-txt">*사용자 요청시 변경!! 초기화값[1234!*] 로그인 후 비밀번호 변경 안내필수</div>
            </div>
          </div>
          
    	<div class="grid-item colspan2">
							<label for="HOFS_ADDR">주소</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w10">
									<input value="${memberRU.zipcode}" class="grid-input" type="text"
										name="zipcode" title="우편번호">
								</div>
								<button type="button" class="btn btn-light"
									onclick="execDaumPostcode()">우편번호 검색</button>
								<div class="input-wrap">

									<br>
								</div>
								<div class="">
									<div class="input-wrap ">
										<input class="grid-input" value="${memberRU.member_addr1}"
											type="text" name="member_addr1" title="주소">
									</div>
									<div class="input-wrap">
										<input class="grid-input" value="${memberRU.member_addr2}"
											type="text" name="member_addr2" placeholder="상세주소를 입력해주세요.">
									</div>
								</div>
							</div>
						</div>
						
       	  <div class="grid-item colspan2">
            <label for="USR_EMADR">이메일주소<em class="org-txt asterisk" title="필수">*</em></label>
            <input type="hidden" id="USR_EMADR" name="USR_EMADR">
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="text" role="textbox" id="USR_EMADR_1" value="${memberRU.email1}" name="email1" maxlength="10" title="이메일주소 입력">
              </div>
         		@
              <div class="input-wrap">
                <input class="grid-input" type="text" role="textbox" id="USR_EMADR_2" value="${memberRU.email99}" name="email99" title="이메일주소 입력" disabled>
              </div>
              <div class="input-wrap w20" >
					<select class="form-select grid-input" id="select_target_3" name="email2" data-col="" title="이메일" >
						<option value=" ">이메일선택</option>
						<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="directly">직접입력하기</option>
					</select>
				</div>
             </div>
          </div>
        </div>
    <div class="btn-area flex-row">
       <button class="btn btn-success btn-large" type="submit" >수정</button>
        <button class="btn btn-outline-secondary btn-large" type="button"  onclick="location.href='/ongo/member/memberboard'">취소</button>
      </div>
    </form>
   
  	</div>
	
    </div><!-- // content -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>