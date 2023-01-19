<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script type="text/javascript" src="/ongo/common/deal/js/paginate.js"></script>
    <link rel="stylesheet" href="/ongo/common/deal/css/paginate.css"> 

<style type="text/css">
.dataRow:hover {
	background: #ddd;
	cursor: pointer;
}
</style>
<script type="text/javascript">
	var type = "${dealType}"
	$(document).ready(
			function() {
				$("#dealType").val(type).attr("selected", "selected");
				$("#dealType").change(
						function() {
							location.href = "/ongo/deal_listAll3.do?dealType="
									+ encodeURI($(this).val());
						})
			})
			
		
</script>


</head>
<body>
	<!-- 이  아래부터  content부분 부터 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

	<!-- content   -->
	<!-- title -->
	<div class="sub_top">
		<div class="container">
			<h1>중고거래</h1>
			<span class="blue">보다 더 · 당신의 일상과 가깝게</span><br/>
			<div class="form_box d-grid d-md-flex justify-content-md-end" style="width:400px; float: left;">
				<select class="form-select grid-input" id="dealType" name="dealType">
					<option value="all">전체</option>
					<option value="중고">중고</option>
					<option value="나눔">나눔</option>
				</select>
			</div>
		</div>
		</div>
		
		</div>
		
		
		<div class="container">


			<div class="board_list">
				<div class="board_info d-flex">
					 <div class="total">
					</div> 
						<div class="form_box">
	                        <fieldset>
	                            <legend class="visually-hidden">검색</legend>
	                            <div class="input-group">
	                                 <div class="select">
	                                    <label class="visually-hidden" for="category">검색 구분</label>
	                                </div>
	                                <input type="search" id="searchBox" class="form-control" name="keyword" title="검색어 입력" placeholder="검색어를 입력하세요." value="">
	                                <button type="button" class="btn btn-search" onclick="#"><i class="las la-search"></i> 검색</button>
	                            </div>
	                        </fieldset>
	                    </div>
				</div>
			</div>
		
	
		
		
		
		
		
		
	





	<!-- 게시판  -->
	<div class="container">
		<table class="table table-borderless" id="myTable">
			<!-- table-borderless -->
			<colgroup>

				<col width="10%">
				<!-- 구분 -->
				<col width="20%">
				<!-- 제품사진 -->
				<col width="50%">
				<!-- 제목 -->
				<col width="15%">
				<!-- 가격 -->
				<col width="10%">
				<!-- 작성자 -->
				<col width="15%">
				<!-- 작성일 -->
				<col width="8%">
				<!-- 조회수 -->
				<col width="10%">
				<!-- 거래상태 -->
			</colgroup>
			<thead>
				<tr>
					<th class="table-header" scope="col">구분</th>
					<th class="table-header" scope="col">상품 사진</th>
					<th class="table-header-title" scope="col">제목</th>
					<th class="table-header" scope="col">가격</th>
					<th class="table-header" scope="col">작성자</th>
					<th class="table-header" scope="col">작성일</th>
					<th class="table-header" scope="col">조회수</th>
					<th class="table-header" scope="col">거래상태</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${dealtotallist}">
					<tr onclick="location.href='/ongo/dealRead.do?deal_number=${board.deal_number}&state=READ'" class="dataRow">
						<%-- <td hidden="true"><span class="gray-bold" id="dealIMG">${board.deal_number }</span></td> --%>
						<td><span class="gray-bold">${board.dealType }</span></td>
						<td id="dealListImg"> <img alt="" src="/ongo/dealUpload/${board.storeFilename}" onerror="this.style.display='none'"  width="50" height="50"></td>
						<td><span class="gray-bold">${board.board_title }</span></td>
						<td><span class="blue-bold"><fmt:formatNumber value="${board.product_price}" pattern="#,###원" /></span></td>
						<td><span class="blue-bold">${board.member_id }</span></td>
						<td><span class="blue-bold">${board.write_date }</span></td>
						<td><span class="blue-bold">${board.hits }</span></td>
						<td><span class="blue-bold">${board.product_state }</span></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br/>
		<br/>
		
	<!-- 	리스트에 ajax시도하였으나 실패;
		<script type="text/javascript">
			window.onload = function () {
				//alert("준비완료")
				var dealIMG = {"deal_number":$("#dealIMG").text()}
				$.ajax({
					url: "/ongo/auction/mainlayout",
					type: "get",
					data: dealIMG,
					success: function(ajaxlist) {
							mydata = "";
							
							if(ajaxlist != null){
								for (var i = 0; i < ajaxlist.length; i++) {
									mydata = mydata + "<img src='/ongo/WEB-INF/dealUpload/"+ajaxlist.storeFilename +"'>";
								}
							}else{
									mydata = "<img src='/ongo/WEB-INF/static/images/myphoto.png'>";
							}
							$("#dealListImg").html(mydata); 
						},
					error: function (a,b,c) {
						alert(c)
					}
				})
			}
		</script>
	 -->
              






<!-- 		<div class="input-group">
			<label for="searchBox">검색 : </label> 
			<input type="search" id="searchBox" placeholder="">
		</div> -->

	</div>

	<div class="btn-area" >
		<button class="btn btn-primary btn-large" type="button"
			onclick="location.href='/ongo/dealRegister'" >글쓰기</button>
	</div>




	<script>
		let options = {
			numberPerPage : 5, //Cantidad de datos por pagina
			goBar : true, //Barra donde puedes digitar el numero de la pagina al que quiere ir
			pageCounter : true, //Contador de paginas, en cual estas, de cuantas paginas
		};

		let filterOptions = {
			el : '#searchBox' //Caja de texto para filtrar, puede ser una clase o un ID
		};

		paginate.init('#myTable', options, filterOptions);

		var category = "${category}"
		$(document)
				.ready(
						function() {
							//alert(category)
							$("#category").val(category).attr("selected",
									"selected");
							$("#category")
									.change(
											function() {
												location.href = "/ongo/deal_listAll3.do?category="
														+ encodeURI($(this)
																.val());
											})

						})
	</script>
	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->

</body>
</html>