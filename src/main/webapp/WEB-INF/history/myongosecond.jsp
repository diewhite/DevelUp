<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	list-style: none;
	font-family: 'Montserrat', sans-serif
}

body {
	padding: 10px
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

form.example input[type=text] {
	padding: 10px;
	font-size: 17px;
	border: 1px solid grey;
	float: left;
	width: 90%;
	height: 36px;
	background: #fff
}

form.example input[type=text]:focus {
	outline: none
}

form.example button {
	float: left;
	width: 10%;
	height: 36px;
	padding: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	background: #4c4c96;
	color: white;
	font-size: 14px;
	border: 1px solid grey;
	border-left: none;
	cursor: pointer
}

.navbar-toggler:focus {
	box-shadow: none;
	outline: none;
	border: none
}

::placeholder {
	font-size: 10px
}

form.example button:hover {
	background: #0b7dda
}

form.example::after {
	content: "";
	clear: both;
	display: table
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

.bg-bdark {
	color: #4c4c96;
	font-weight: 600
}

#navbar a {
	color: white
}

.fas.fa-bars {
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

ul#navbar-items li {
	color: #b6b5b5;
	padding: 15px 25px;
	font-weight: 600;
	text-transform: uppercase;
	font-size: 10px;
	display: flex;
	align-items: center
}

ul li .fas {
	font-size: 16px
}

ul#navbar-items li:hover {
	background-color: #21214e;
	color: white
}

ul li:hover .fas {
	color: #f7910c
}

#topnavbar {
	width: 80%
}



.example {
	width: 50%
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
				<h1>반갑습니다. user_id님</h1>
				<h4>user_id님의 회원 등급은 일반회원입니다.</h4>
			</div>
		</div>
		<!-- //title -->

		<!--======  <div class="container">  부분부터 복사해서 붙여넣기 하시면 됩니다.======  -->

		<!-- 거래현황 -->

		<div class=""></div>


		<!-- 경매내역list -->

		<div class="px-0 bg-light">
			
			</div>
			<div class="d-md-flex">
				<div id="topnavbar">
					<div class="topnav mb-2">
						<div class="d-flex px-1">
							<h3> 중고거래내역</h3>
							<a href="#home" class="active">판매</a> 
							<a href="#news">구매</a>
						</div>
					</div>
					<div class="table-responsive px-2">
						<table class="table table-borderless">
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">(사진)</th>
									<th scope="col">제목</th>
									<th scope="col">가격</th>
									<th scope="col">구매자</th>
									<th scope="col">날짜</th>
									<th scope="col">거래상태</th>
									
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><span class="gray-bold">235</span></td>
									<td><span class="image"><img alt="#" src="#">이미지</span></td>
									<td><span class="title"><a href="#">제목</a></span></td>
									<td><span class="bg-bdark">15,000원 </td>
									<td><span class="bg-bdark"><a href="#">yoonhee0312</a></span></td>
									<td class="date">2023년 1월 3일</span></td>
									<td class="text-center"><span class="fas fa-check">test</span></td>
									
								</tr>
								<tr>
									<td><span class="gray-bold">236</span></td>
									<td><span class="bg-bdark">BCE<span class="ps-1">LOANS</span></span></td>
									<td><span class="gray-bold">1298</span></td>
									<td><span class="bg-bdark">Secure<span>Trading</span></span></td>
									<td><span class="bg-bdark">GBP</span></td>
									<td class="text-center px-0"><span class="fas fa-check"></span></td>
									<td class="text-center"><span class="fas fa-check"></span></td>
									
								</tr>
								<tr>
									<td><span class="gray-bold">237</span></td>
									<td><span class="bg-bdark">CDE<span class="ps-1">LOANS</span></span></td>
									<td><span class="gray-bold">1313</span></td>
									<td><span class="bg-bdark">Secure<span>Trading</span></span></td>
									<td><span class="bg-bdark">GBP</span></td>
									<td class="text-center px-0"><span class="fas fa-times"></span></td>
									<td class="text-center"><span class="fas fa-check"></span></td>
									
								</tr>
								<tr>
									<td><span class="gray-bold">235</span></td>
									<td><span class="bg-bdark">DEF<span class="ps-1">LOANS</span></span></td>
									<td><span class="gray-bold">1323</span></td>
									<td><span class="bg-bdark">Secure<span>Trading</span></span></td>
									<td><span class="bg-bdark">GBP</span></td>
									<td class="text-center px-0"><span class="fas fa-times"></span></td>
									<td class="text-center"><span class="fas fa-check"></span></td>
									
								</tr>
								<tr>
									<td><span class="gray-bold">235</span></td>
									<td><span class="bg-bdark">FEG<span class="ps-1">LOANS</span></span></td>
									<td><span class="gray-bold">1443</span></td>
									<td><span class="bg-bdark">Secure<span>Trading</span></span></td>
									<td><span class="bg-bdark">GBP</span></td>
									<td class="text-center px-0"><span class="fas fa-times"></span></td>
									<td class="text-center"><span class="fas fa-check"></span></td>
									
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

	

	<!-- 중고거래내역list -->



	<!--====== // </div> container=====-->

	
	<!-- //contents -->

	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
</body>
</html>