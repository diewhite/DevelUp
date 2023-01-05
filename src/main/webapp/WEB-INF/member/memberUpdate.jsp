<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head> 

<script>
//이메일
$(function() {
    $('#select_target_3').change(function() {
        if ($('#select_target_3').val() == 'directly') {
            $('#USR_EMADR_2').attr("disabled", false);
            $('#USR_EMADR_2').val("");
            $('#USR_EMADR_2').focus();
        } else {
            $('#USR_EMADR_2').val($('#select_target_3').val());
        }
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
                <h1>회원정보</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
       <div class="container">
  	 <form  action="/ongo/member/join3?state=${state}" method="POST" >
      <input type="hidden" value=" ">
      <div class="cont-box-inner">
        <div class="title">
          <h3 class="h4">정보수정</h3>
        </div>
        <div class="tbl grid-layout grid2">
        <div class="grid-item colspan2">
		<label>회원번호</label>
			<div class="tbl-basic-td">
				<div class="input-wrap">d</div>
			</div>
		</div>
          <div class="grid-item">
            <label for="USR_NM">성명<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                 <input class="grid-input" type="text" name="member_name" title="이름">
              </div>
            </div>
          </div>
         <div class="grid-item">
            <label for="USR_MBTN">휴대전화번호<em class="org-txt asterisk" title="필수">*</em></label>
            <input type="hidden"  name="USR_MBTN">
            <div class="tbl-basic-td">
              <div class="input-wrap w30">
				<select class="form-select grid-input" id="USR_MBTN_1" name="phone1" data-col="USR_MBTN_1" title="휴대전화번호" >
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
                <input class="grid-input" type="text" name="phone2" maxlength="4" pattern="[0-9]+" title="휴대전화번호 앞자리 입력" >
              </div>
              -
              <div class="input-wrap w30">
                <input class="grid-input" type="text" name="phone3" maxlength="4" pattern="[0-9]+" title="휴대전화번호 뒷자리 입력" >
              </div>
            </div>
          </div>
           <div class="grid-item colspan2">
            <label for="HOFS_ADDR">아이디<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="text" name="member_id" maxlength="12" title="아이디 입력" disabled>
              </div>
            
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="ENPWD">비밀번호<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="password"  id="ENPWD"  name="member_pw"  placeholder="●●●●●"  title="비밀번호 입력" disabled="">
              </div>
                <button type="button" class="btn btn-light" >비밀번호 초기화</button>
            </span></div>
          </div>
          
           <div class="grid-item colspan2">
							<label for="HOFS_ADDR">주소</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w10">
									<input class="grid-input" type="text" name="zipcode"
										title="우편번호">
								</div>
								<button type="button" class="btn btn-light">우편번호 검색</button>
								<div class="input-wrap">
									<br>
								</div>
								<div class="">
									<div class="input-wrap ">
										<input class="grid-input" type="text" name="member_addr1"
											title="주소">
									</div>
									<div class="input-wrap">
										<input class="grid-input" type="text" name="member_addr2"
											placeholder="상세주소를 입력해주세요.">
									</div>
								</div>

							</div>

						</div>
						
       	    <div class="grid-item colspan2">
            <label for="USR_EMADR">이메일주소<em class="org-txt asterisk" title="필수">*</em></label>
            <input type="hidden" id="USR_EMADR" name="USR_EMADR">
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="text" role="textbox" id="USR_EMADR_1" name="email1" maxlength="10" title="이메일주소 입력">
              </div>
         		@
              <div class="input-wrap">
                <input class="grid-input" type="text" role="textbox" id="USR_EMADR_2" name="email99" title="이메일주소 입력" disabled>
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
       <button class="btn btn-success btn-large" type="button" onclick="location.href='/ongo/member/memberboard.do'">수정</button>
        <button class="btn btn-outline-secondary btn-large" type="button"  onclick="location.href='/ongo/member/memberboard.do">취소</button>
      </div>
    </form>
    
  	</div>
	
    </div><!-- // content -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>