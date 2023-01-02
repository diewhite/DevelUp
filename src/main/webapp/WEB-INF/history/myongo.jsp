<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css"> </style>
<script type="text/javascript"> </script>
</head>
<body>
<!-- content -->
<div id="contents">
    <!-- title -->
    <div class="sub_top">
        <div class="container">
            <h1>나의 온고</h1>
        </div>
    </div>
    <!-- //title -->
    
    <!--======  <div class="container">  부분부터 복사해서 붙여넣기 하시면 됩니다.======  -->

<div class="my_info">
			<ul>
				<li><a href="/member/edit_step1.php">회원등급<span>{{$회원등급}}</span></a></li>
				<li class="dn{{$적립금사용유무}}"><a href="/mypage/milage.php">적립금<span>{{$회원보유적립금액}}</span></a></li>
				<li class="dn{{$예치금사용유무}}"><a href="/mypage/emoney.php">예치금<span>{{$회원보유예치금액}}</span></a></li>
				<li><a href="/mypage/coupon_down_list.php">쿠폰<span>{{$회원보유쿠폰개수}}</span></a></li>
				<li><a href="/shop/cart.php">장바구니<span>{{$장바구니개수}}</span></a></li>
				<li><a href="/mypage/wish_list.php">관심상품<span>{{$위시리스트개수}}</span></a></li>
			</ul>
		</div>
	
	<table class="tbl_mypage">
		<caption class="hidden">마이 페이지 메뉴</caption>
		<colgroup>
			<col style="width:20%;">
			<col style="width:20%;">
			<col style="width:20%;">
			<col style="width:20%;">
			<col style="width:20%;">
		</colgroup>
		<thead>
			<tr>
				<th scope="row">쇼핑 통장</th>
				<th scope="row">상품관리</th>
				<th scope="row">주문관리</th>
				<th scope="row">활동관리</th>
				<th scope="row" class="last">정보 관리</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<ul>
						<li class="dn{{$적립금사용유무}}"><a href="/mypage/milage.php" class="underline">적립금</a></li>
						<li class="dn{{$예치금사용유무}}"><a href="/mypage/emoney.php" class="underline">예치금</a></li>
						<li><a href="/mypage/coupon_down_list.php" class="underline">쿠폰</a></li>
						<li><a href="/mypage/sccoupon.php" class="underline">소셜 쿠폰</a></li>
					</ul>
				</td>
				<td>
					<ul>
						<li><a href="/shop/cart.php" class="underline">장바구니</a></li>
						<li><a href="/mypage/wish_list.php" class="underline">관심상품</a></li>
						<li><a href="/shop/click_prd.php" class="underline">최근 본 상품</a></li>
					</ul>
				</td> 
				<td>
					<ul>
						<li><a href="/mypage/order_list.php" class="underline">주문내역</a></li>
					</ul>
				</td>
				<td>
					<ul>
						<li><a href="/mypage/counsel_list.php" class="underline">1:1문의</a></li>
						<li><a href="/mypage/qna_list.php" class="underline">나의 상품문의</a></li>
						<li><a href="/mypage/review_list.php" class="underline">나의 상품후기</a></li>
						<li><a href="/mypage/attend_list.php" class="underline">출석체크</a></li>
					</ul>
				</td>
				<td class="last">
					<ul>
						<li><a href="/member/edit_step1.php" class="underline">나의 정보수정</a></li>
						<li><a href="/mypage/withdraw_step1.php" class="underline">회원 탈퇴</a></li>
					</ul>
				</td>
			</tr>
		</tbody>
	</table>
</div>
    
   
    
    <!--====== // </div> container=====-->

<!-- //contents -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>