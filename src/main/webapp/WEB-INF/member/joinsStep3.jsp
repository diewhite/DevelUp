<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css">
input:invalid {
  border: 1px solid red;
}
</style>
<script>
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
$(function(){
	$('#ENPWD2').blur(function(){
	   if($('#ENPWD').val() != $('#ENPWD2').val()){
	    	if($('#ENPWD2').val()!=''){
		    alert("비밀번호가 일치하지 않습니다.");
	    	    $('#ENPWD2').val('');
	          $('#ENPWD2').focus();
	       }
	    }
	})  	   
});
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


</script><script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }
</script>
</head>
<body>
 
	<!-- content -->
	<div id="contents">


		<!-- title -->
		<div class="sub_top center">
			<div class="login_container container">
				<h1>회원가입</h1>
				<ul class="step join_step">
					<li>
						<p class="stepicon"></p>
						<h2 class="steptt">약관동의</h2>
					</li>
				   <li>
                 <!-- <p class="stepicon"></p>
                  <p class="steptt">인증서 확인</p>
              </li> -->
					<li class="on" title="선택됨">
						<p class="stepicon"></p>
						<h2 class="steptt">정보입력</h2>
					</li>
					<li>
						<p class="stepicon"></p>
						<h2 class="steptt">가입완료</h2>
					</li>
				</ul>
			</div>
		</div>
		<!-- //title -->
	<div class="container">
	<form id="saveForm" name="saveForm" action="/ongo/member/join3?state=${state}"	method="POST"  onsubmit="return checkUsrSubmit()">
      <input type="hidden" id="PSLF_AHTN_INFO_KEYV" name="PSLF_AHTN_INFO_KEYV">
      <div class="cont-box-inner">
        <div class="title">
          <h3 class="h4">개인정보</h3>
          <p class="highlight org-txt">* 필수입력사항</p>
        </div>
        <div class="tbl grid-layout grid2">
          <div class="grid-item">
            <label for="USR_NM">성명<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="text" role="textbox" id="USR_NM" name="member_name" maxlength="50" title="성명 입력" >
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
                <input class="grid-input" type="text" role="textbox" id="USER_ID" name="member_id" maxlength="12" title="아이디 입력">
              </div>
              <button type="button" class="btn btn-light" onclick="fnIdCheck();"><i class="las la-search"></i>중복확인</button>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="ENPWD">비밀번호<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="password" role="textbox" id="ENPWD" name="member_pw" maxlength="20" title="비밀번호 입력">
              </div>
              <span>(4자리 이상, 20자리 이하)<span></span>
            </div>
          </div>
          <div class="grid-item colspan2">
            <label for="ENPWD2">비밀번호확인<em class="org-txt asterisk" title="필수">*</em></label>
            <div class="tbl-basic-td">
              <div class="input-wrap">
                <input class="grid-input" type="password" role="textbox" id="ENPWD2" name="member_pw2" maxlength="20" title="비밀번호확인 입력">
              </div>
              <span>비밀번호 확인을 위해 한번 더 입력해 주세요.</span>
            </div>
          </div>
          <div class="grid-item colspan2">
							<label for="HOFS_ADDR">주소</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w10">
									<input  id="postcode" class="grid-input" type="text" name="zipcode"
										title="우편번호">
								</div> 
								<button type="button" class="btn btn-light"  onclick="execDaumPostcode()" >우편번호 검색</button>
								<div class="input-wrap">
								
				
									<br>
								</div>
								<div class="">
									<div class="input-wrap ">
										<input id="address" class="grid-input" type="text" name="member_addr1"
											title="주소">
									</div>
									<div class="input-wrap">
										<input  id="detailAddress" class="grid-input" type="text" name="member_addr2"
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
      </div>
      <div class="btn-area">
			<button class="btn btn-outline-primary btn-large" type="submit">등록하기</button>
		</div>
    </form>
		</div>

	</div>
	<!-- // contents -->


	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->


</body>
</html>