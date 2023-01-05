<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css"> 

.container {
	padding-left: 3rem;
	
}

.menu-header {
	padding: 2rem 0.5rem 1rem;
}

.side_list {
	padding-left: 20px;
}


.list-group-item {
	
	padding: 0.3rem 1rem;
	border: 0px;
}

.sidebox {
	padding-bottom: 13px;
}

hr {
	color : --darkgray-color;
	width: 70%;
}

 </style>
<script type="text/javascript"> </script>
</head>
<body>

	 <div class="container">
            <h1 class="h3 mt-5">나의 온고</h1>
            <hr> 
		<div class="side_list"> 
		<!-- 경매 -->
			<div class="sidebox">
				<h5>경매내역</h5>	
				<a href="#"	class="list-group-item">판매내역</a> 
				<a href="#" class="list-group-item">구매내역</a>
			</div>
			<!-- 중고거래 -->
			<div class="sidebox">
				<h5>중고거래내역</h5>
				<a href="#"	class="list-group-item">판매내역</a> 
				<a href="#" class="list-group-item">구매내역</a>
			</div>
			<!-- 결제내역 -->
			<div class="sidebox">
				<h5>결제내역</h5>
				<a href="#"	class="list-group-item">결제내역조회</a> 	
			</div>
			<!-- 나의 정보 -->
			<div class="sidebox">
				<h5>나의 정보</h5>
				<a href="#"	class="list-group-item">정보수정</a> 
				<a href="#" class="list-group-item">회원탈퇴</a>
			</div>
			<!-- 쪽지함 -->
			<div class="sidebox">
				<h5>쪽지함</h5>
				<a href="#"	class="list-group-item">받은 쪽지</a> 
				<a href="#" class="list-group-item">보낸 쪽지</a>
			</div>
		</div>
	</div>
</body>
</html>