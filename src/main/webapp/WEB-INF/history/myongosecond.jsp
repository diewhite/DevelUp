<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap')
	;


#contents {
	min-height: 600px;
	margin: auto;
}


}
.topnav {
	background-color: #ffff;
	overflow: hidden
}

.topnav a {
	float: left;
	display: block;
	color: #8d8b8b;
	font-weight: 800;
	font-size: 18px;
	text-transform: uppercase;
	padding: 10px;
	text-decoration: none;
	border-bottom: 3px solid transparent;
}

.topnav a:hover {
	color: black;
	border-bottom: 3px solid #1B3C88;
}

.topnav .active {
	color: black;
	border-bottom: 3px solid #1B3C88;
}

.navbar-toggler:focus {
	box-shadow: none;
	outline: none;
	border: none
}

::placeholder {
	font-size: 10px
}


.container .table-responsive {
	margin: 20px auto;
	overflow-x: auto
}

.container .table-responsive::-webkit-scrollbar {
	height: 5px
}

.container .table-responsive::-webkit-scrollbar-thumb {
	border-radius: 5px;
	background-image: linear-gradient(to right, #5D7ECD, #0C91E6)
}

.table thead tr th {
	height: 40px;
	font-size: 15px;
	color: #868585;
	padding: 10px 10px
}

.table tbody tr td {
	height: 40px;
	font-size: 14px;
	padding: 10px 10px
}

#navbar {
	width: 20%;
	background-color: #21214e !important;
	
	height: 50px;
	border: none
}

.gray-bold .title {
	color: #6E6E6E;
	font-weight: 600;
}

.blue-bold {
	color: #4c4c96;
	font-weight: 600
}

#navbar a {
	color: white
}


#navbar2 {
	width: 80%
}

#navbar-items {
	width: 20%;
	height: 500px;
	background-color: #4f4f8a
}

#topnavbar {
	width: 80%
}

.list_button {
	padding-left: 10px;
}

.table-header-title {
	width: 35%;
}

.table-header {
	width: 16%;
}

.btndiv {
	float: right;
}

.btn {
  -webkit-border-radius: 3;
  -moz-border-radius: 3;
  border-radius: 3px;
  font-family: Arial;
  color: #7a7a7a;
  font-size: 15px;
  background: #ffffff;
  padding: 5px 10px 5px 10px;
  text-decoration: none;
}

.btn:hover {
  background: #e0e0e0;
  text-decoration: none;
}

</style>
<script type="text/javascript">
	
</script>
</head>
<body>

	<!-- content -->
	<div id="contents">
		<!-- title -->
		<div class="sub_top">
			<div class="container">
				<h1>반갑습니다. user_id님!</h1>
				<h5>user_id님의 회원 등급은 일반회원입니다.</h5>
			</div>
		</div>
		<!-- //title -->

		<!--======  <div class="container">  부분부터 복사해서 붙여넣기 하시면 됩니다.======  -->

		<!-- 거래현황 -->
<!-- 게시판 -->
        <div class="container">
          <div class="cont-box-inner board_list">
            <div class="board_info d-flex">
              <div class="align-items-end">
                <h2 class="h4 verticalM">경매거래현황</h2>
              </div>
              <div class="d-grid d-md-flex justify-content-md-end">   
                  <button class="btn btn-primary btn-small" onclick="fnExcel();" type="button">경매구매내역</button>
                  
                   <button class="btn btn-primary btn-small" onclick="fnExcel();" type="button">경매판매내역</button>
              </div>
            </div>
            <div class="table-responsive">
              <table class="table bg-table">
                <caption>경매거래현황</caption>
                <colgroup>
                  
                </colgroup>
            <thead>
              <tr>
                <th class="blue-bg border-bottom " colspan="5">경매판매</th>
                <th  class="border-bottom" colspan="5">경매구매</th>
              </tr>
                <tr>
                  <th class="blue-bg board ">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
              </tr>
            </thead>
            <tbody>
                 <tr>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                    <td >1</td>
                  <td >1</td>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                </tr>
             
            </tbody>
              </table>
             </div>
            </div><!--//cont-box-inner-->
 


        <div class="cont-box-inner board_list">
            <div class="board_info d-flex">
              <div class="align-items-end">
                <h2 class="h4 verticalM">일반거래현황</h2>
              </div>
              <div class="d-grid d-md-flex justify-content-md-end">   
                  <button class="btn btn-primary btn-small" onclick="fnExcel();" type="button">일반판매내역</button>
                  <button class="btn btn-primary btn-small" onclick="fnExcel();" type="button">일반구매내역</button>
              </div>
            </div>
            <div class="table-responsive">
              <table class="table bg-table">
                <caption>일반거래현황</caption>
                <colgroup>
                  
                </colgroup>
            <thead>
              <tr>
                <th class="blue-bg border-bottom " colspan="5">판매현황</th>
                <th  class="border-bottom" colspan="5">구매현황</th>
              </tr>
                <tr>
                  <th class="blue-bg board ">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="blue-bg board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
                  <th class="board">구분</th>
              </tr>
            </thead>
            <tbody>
                 <tr>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                    <td >1</td>
                  <td >1</td>
                   <td >1</td>
                   <td >1</td>
                   <td >1</td>
                </tr>
             
            </tbody>
              </table>
             </div>
            </div>
          </div>
          <!--//cont-box-inner-->

         </div><!--//container-->

<!-- =========경매내역list========= -->
		
<div class="container">
		<div class="px-0 bg-light">
			</div>
			<div class="d-md-flex">
				<div id="topnavbar">
					<div class="topnav mb-2">
						<div class="d-flex px-1">
							<h3> 경매내역</h3>
							<div class="list_button">
								<a href="#home" class="active">판매</a> 
								<a href="#news">구매</a>
							</div>
						</div>
					</div>
					<div class="table-responsive px-2">
						<table class="table table-borderless">
							<div class="btndiv" >
								<button class="btn"> + 더보기 </button>
							</div>
							<thead>
								<tr>
									<th class="table-header" scope="col">번호</th>
									<th class="table-header" scope="col">제품 사진</th>
									<th class="table-header-title" scope="col">제목</th>
									<th class="table-header" scope="col">가격</th>
									<th class="table-header" scope="col">구매자</th>
									<th class="table-header" scope="col">날짜</th>
									<th class="table-header" scope="col">거래상태</th>	
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><span class="gray-bold">1</span></td>
									<td><img alt="" src="#"></td>
									<td><span class="blue-bold"><a href="/ongo/history/joongodetail">상태좋은 아이폰14pro 팝니다</a></span></td>
									<td><span class="blue-bold">15,000원</span> </td>
									<td><span class="blue-bold"><a href="#">yoonhee0312</a></span></td>
									<td>2023년 1월 3일</td>
									<td>판매중</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
</div>
	

<!-- =========중고거래내역list========= -->

<div class="container">
		<div class="px-0 bg-light">
			</div>
			<div class="d-md-flex">
				<div id="topnavbar">
					<div class="topnav mb-2">
						<div class="d-flex px-1">
							<h3> 중고거래내역</h3>
							<div class="list_button">
								<a href="#home" class="active">판매</a> 
								<a href="#news">구매</a>
							</div>
							
						</div>
					</div>
					<div class="table-responsive px-2">
						<table class="table table-borderless">
							<thead>
								<tr>
									<th class="table-header" scope="col">번호</th>
									<th class="table-header" scope="col">제품 사진</th>
									<th class="table-header-title" scope="col">제목</th>
									<th class="table-header" scope="col">가격</th>
									<th class="table-header" scope="col">구매자</th>
									<th class="table-header" scope="col">날짜</th>
									<th class="table-header" scope="col">거래상태</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><span class="gray-bold">1</span></td>
									<td><img alt="" src="#"></td>
									<td><span class="blue-bold"><a href="#">상태좋은 아이폰14pro 팝니다</a></span></td>
									<td><span class="blue-bold">15,000원</span> </td>
									<td><span class="blue-bold"><a href="#">yoonhee0312</a></span></td>
									<td>2023년 1월 3일</td>
									<td>판매중</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
</div>
	



	<!--====== // </div> container====-->

	
	<!-- //contents -->

	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
</body>
</html>