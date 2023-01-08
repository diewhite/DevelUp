// nav  
function menuover(id){
    $('.dep2_wrap').removeClass('active');
    var select = $(id).next();
    select.addClass('active');
  }

  function menuout(){
    $('.dep2_wrap').removeClass('active');
  }


//auction 이미지
function change_image(image){
    var auctionimg_container = document.getElementById("auction-image");
       auctionimg_container.src = image.src;
}

//주소 API
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
//비밀번호일치
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


//페이징처리
	
    	/* [html 최초 로드 및 이벤트 상시 대기 실시] */
    	window.onload = function() {
    		console.log("");
    		console.log("[window onload] : [start]");
    		console.log(""); 

    		// 동적으로 테이블 tbody tr 행 생성 실시
    		tableInsert();
    	};




    	/* [테이블 리스트 전역 변수 선언 실시] */
    	const tableList = []; // tableInsert 함수에서 for문을 돌면서 삽입 실시
    	const pageList = 5; // 한개의 페이지에 보여질 목록 개수
    	const pageMax = 3; // 최대 생성될 페이지 개수 (페이지를 더보려면 이전, 다음 버튼 클릭해야함)    	
    	var idx = 0; //idx 값 확인 후 동적 페이지 전환 및 데이터 표시
    	var page = 1; //생성 시작할 페이지 번호




    	/* [tbody tr 동적 삽입 이벤트 수행 함수] */    	
    	function tableInsert(){
    		console.log("");
    		console.log("[tableInsert] : [start]"); 
    		console.log("");


    		// [ajax 통신 >> tableList 테이블 데이터가 리스트에 포함된 경우]
    		// pageInsert(page);

    		
    		// [for 반복문을 돌려서 tr 데이터 임의로 생성 실시]
    		for (var i=0; i<=30; i++){
    			// JSON 형식으로 리스트에 추가 실시
    			var jsonObject = {"idx":i, "name":String(i) + " 이름", "age":String(i) + " 나이"};
    			tableList.push(jsonObject);
    		}


    		// [테이블 리스트에 저장된 데이터 확인]
    		console.log("");
    		console.log("[tableInsert] : [list] : " + JSON.stringify(tableList)); 
    		console.log("");


    		// [테이블 행 개수에따라 페이징 처리 실시]
    		pageInsert(page);
    	};




    	/* [페이징 처리 이벤트 수행 함수] */
    	function pageInsert(value){
    		console.log("");
    		console.log("[pageInsert] : [start] : " + value); 
    		console.log("");


    		// [페이징 목록 초기화 실시]
    		$("#dyn_ul").empty();


    		// [생성된 테이블 tr 개수 확인 >> 페이징 처리 5개씩 목록 자름]    		
    		var startIndex = value; // 생성 시작 페이지    		
    		//var endIndex = $("#dyn_tbody tr").length; // tbody에 동적으로 추가된 tr 개수 확인
    		var endIndex = tableList.length; // 배열에 있는 길이 확인
    		console.log("");
    		console.log("[pageInsert] : [startIndex] : " + startIndex); 
    		console.log("[pageInsert] : [endIndex] : " + endIndex); 
    		console.log("");


    		// [tr 개수에 따라 페이징 해야할 개수 확인]
    		var pageCount = 0;
    		var pagePlus = 0;
    		if(endIndex > pageList){ // tr 행 개수가 5 이상인 경우 (임의로 설정)
    			pageCount = Math.floor(endIndex / pageList); //생성될 페이지 수 (소수점 버림)
    			pagePlus = endIndex % pageList; //추가 나머지 자식 수
    			if(pagePlus > 0){ //추가 자식수가 있는경우 >> 페이지 추가
    				pageCount = pageCount + 1;
    			}
    			console.log("");
	    		console.log("[pageInsert] : [pageCount] : " + pageCount); 
	    		console.log("[pageInsert] : [pagePlus] : " + pagePlus); 
	    		console.log("");
    		}


    		// [생성될 페이지 번호가 전체 생성되야하는 길이보다 크거나 작은지 확인]
    		if(startIndex > pageCount){ //길이 초과 시 기존꺼로 다시 저장
    			startIndex = page;
    		}
    		else if(startIndex < 0){ //길이 미만 시 기존꺼로 다시 저장
    			startIndex = page;
    		}
    		else {
    			page = startIndex;
    		}


    		// [동적 ul 페이징 처리 실시]
    		if(pageCount == 1){ //생성해야할 페이지가 1페이지인 경우
    			var insertUl = "<li class='page-item'>"; // 변수 선언
    			insertUl += insertUl + "<a class='page-link' href='javascript:void(0)' onclick = 'newPage(1);'>";
    			insertUl += insertUl + i;
    			insertUl += insertUl + "</a></li>";
    			$("#dyn_ul").append(insertUl); //jquery append 사용해 동적으로 추가 실시      			
    		}
    		else if(pageCount >= 2){ //생성해야할 페이지가 2페이지 이상인 경우
    			// 이전 페이지 추가 실시 
    			var insertSTR = "<li class='page-item'>"; // 변수 선언
    			insertSTR = insertSTR + "<a class='page-link' href='javascript:void(0)' onclick = 'newPage("+"-1"+");'>";
    			insertSTR = insertSTR + "Previous";
    			insertSTR = insertSTR + "</a></li>";
    			$("#dyn_ul").append(insertSTR); //jquery append 사용해 동적으로 추가 실시      			

    			// 특정 1, 2, 3 .. 페이지 추가 실시
    			var count = 1;
    			for(var i=startIndex; i<=pageCount; i++){
    				if(count > pageMax){ //최대로 생성될 페이지 개수가 된 경우 
    					page = i - pageMax; //생성된 페이지 초기값 저장 (초기 i값 4 탈출 인경우 >> 1값 저장)
    					break; //for 반복문 탈출
    				}
    				var insertUl = "<li class='page-item'>"; // 변수 선언
    				insertUl = insertUl + "<a class='page-link' href='javascript:void(0)' onclick = 'newPage("+i+");'>";
	    			insertUl = insertUl + String(i);
	    			insertUl = insertUl + "</a></li>";
    				$("#dyn_ul").append(insertUl); //jquery append 사용해 동적으로 추가 실시  
    				count ++;
    			}

    			// 다음 페이지 추가 실시
    			var insertEND = "<li class='page-item'>"; // 변수 선언
    			insertEND = insertEND + "<a class='page-link' href='javascript:void(0)' onclick = 'newPage("+"0"+");'>";
    			insertEND = insertEND + "Next";
    			insertEND = insertEND + "</a></li>";
    			$("#dyn_ul").append(insertEND); //jquery append 사용해 동적으로 추가 실시
    		}


    		// [페이징 완료 후 >> tr 개수 전체 삭제 >> 페이징 개수에 맞게 다시 표시 실시]
    		$("#dyn_tbody").empty(); //tbody tr 전체 삭제 실시


    		// [새롭게 페이지 목록 리스트 처리 실시]
    		newPage(startIndex);
    	};




    	/* [tbody tr 동적 삽입 이벤트 수행 함수] */    	
    	function newPage(pageCurrent){
    		// [pageCurrent [-1] >> 이전 / pageCurrent [1 이상] >> 일반 / pageCurrent [0] >> 다음]
    		console.log("");
    		console.log("[newPage] : [start]"); 
    		console.log("[newPage] : [page] : " + pageCurrent); 
    		console.log("");

    		// [새롭게 테이블 tbody tr 데이터 생성 실시]
    		if(pageCurrent == -1){ // 이전 페이지
    			$("#dyn_tbody").empty(); //tbody tr 전체 삭제 실시

    			// [새롭게 페이징 처리 실시]
    			var newIdx = page - pageMax;

    			// [테이블 데이터에 따라 페이징 처리 실시]
    			pageInsert(newIdx); //표시될 페이지 번호 전송
    		} 
    		else if(pageCurrent == 0){ // 다음 페이지
    			$("#dyn_tbody").empty(); //tbody tr 전체 삭제 실시

    			// [새롭게 페이징 처리 실시]
    			var newIdx = page + pageMax;

    			// [테이블 데이터에 따라 페이징 처리 실시]
    			pageInsert(newIdx); //표시될 페이지 번호 전송
    		}
    		else { // 일반 테이블 목록 리스트 갱신
    			$("#dyn_tbody").empty(); //tbody tr 전체 삭제 실시

    			// 저장된 idx 에서 페이지 수를 곱해서 새로운 idx 지정
    			// [1페이지 클릭 >> (1*5) -5 = 0 시작]
    			// [2페이지 클릭 >> (2*5) -5 = 5 시작]
    			idx = (pageCurrent * pageList) - pageList;
    			
    			var checkCount = 1;
    			for(var i=idx; i<tableList.length; i++){ //반복문을 수행하면서 tbody에 tr데이터 삽입 실시
    				if(checkCount > pageList){ //한페이지에 표시될 목록을 초과한 경우
    					return;
    				}


    				// json 데이터 파싱 실시
    				var jsonObject = JSON.parse(JSON.stringify(tableList[i])); //각 배열에 있는 jsonObject 참조
    				idx = jsonObject.idx;
    				var name = jsonObject.name;
    				var age = jsonObject.age;


    				// 동적으로 리스트 추가
    				var insertTr = ""; // 변수 선언
    				insertTr += "<tr>"; // body 에 남겨둔 예시처럼 데이터 삽입
    				insertTr += "<th scope='row'>" + idx + "</th>"; // body 에 남겨둔 예시처럼 데이터 삽입
    				insertTr += "<td>" + name + "</td>";
    				insertTr += "<td>" + age + "</td>";
    				insertTr += "</tr>";    


    				// jquery append 사용해 동적으로 추가 실시
    				$("#dyn_tbody").append(insertTr);  


    				// 카운트 횟수 증가 		
    				checkCount ++;	
    			}							
    		}
    	};
