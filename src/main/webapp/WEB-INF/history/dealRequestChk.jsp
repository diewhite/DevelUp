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
          
        </div>
    </div>
    <!-- //title -->
    
    <!--======  <div class="container">  부분부터 복사해서 붙여넣기 하시면 됩니다.======  -->
    

		
		<div class="container mt-5">
			<div class="success-msg">
				<hr>
				  <h2 class="text-center">거래요청이 완료되었습니다.</h2>
				<hr>	
			</div>
			<div class="btn-area ">
				<button class="btn btn-primary mt-5 btn-large" type="button" onclick="location.href='/ongo/deal_listAll3.do?dealType=all'">
						글 목록으로 돌아가기 
				</button>				
				<button class="btn btn-primary mt-5 btn-large" type="button" onclick="location.href='/ongo/history/dealbuyList?member_id=${user.member_id}&product_state=all'">
						구매내역으로 이동하기 
				</button>		
			</div>
		</div>

    <!--====== // </div> container=====-->

</div><!-- //contents -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>