<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro@4cac1a6/css/all.css" />
<style type="text/css">

 .padding {
     padding: 3rem
 }

 .stretch-card {
     display: flex;  
     align-items: stretch;
     justify-content: stretch;
 }

 .grid-margin {
     margin-bottom: 1.875rem
 }

 .card {
     position: relative;
     display: flex;
     flex-direction: column;
     min-width: 15em;
     word-wrap: break-word;
     background-color: #fff;
     background-clip: border-box;
     border: 1px solid #d2d2dc;
     border-radius: 2rem;
     box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
     margin-left: 30px;
 }
.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}
 .card .card-body {
     padding: 1.25rem 1.75rem
     
 }

 .card-body {
     flex: 1 1 auto;
     padding: 1.25rem
   
 }

 .card .card-title {
     color: #1B3C88;
     margin-bottom: 0.625rem;
     text-transform: capitalize;
     font-size: 40px;
     font-weight: 500
 }

 .card .card-description {
     margin-bottom: .875rem;
     font-weight: 400;
     color: #76838f
 }

 .myongotable thead th,
 .jsgrid .jsgrid-table thead th {
     border-top: 0;
     border-bottom-width: 1px;
     font-weight: 500;
     font-size: .875rem;
     text-transform: uppercase
 }

 .myongotable td,
 .jsgrid .jsgrid-table td {
     font-size: 0.875rem;
     padding: .875rem 0.9375rem
 }

 .badge {
     border-radius: 0;
     font-size: 12px;
     line-height: 1;
     padding: .375rem .5625rem;
     font-weight: normal
 }
 
 .badge.badge-pill {
    border-radius: 10rem;
}

p {
     font-size: 0.875rem;
     margin-bottom: .5rem;
     line-height: 1.5rem
 }


i {
	font-size: 30px;	
	color: #666;
}

.link {
	font-size: 17px;
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
	            <h1>나의 온고</h1> 
			</div>
		</div>
		<!-- //title -->

		<!--======  <div class="container">  부분부터 복사해서 붙여넣기 하시면 됩니다.======  -->

<div class="page-content page-container" id="page-content">
    <div class="padding">
        <div class="row container justify-content-center">
            <div class="col-md-auto grid-margin stretch-card">
            <!-- 거래내역 카드 -->
              <div class="card" OnClick="location.href ='#'" style="cursor:pointer;" >
                <div class="card-body">
                  <h2 class="card-title"><i class="far fa-store"></i> 거래내역 </h2>
                  <p class="card-description">나의 거래내역을 확인하세요</p>
                  <div class="template-demo">
                    <table class="myongotable mb-0">
                      <tbody>
                        <tr>
                          <td class="pl-0"><a class="link" href="#">거래 현황 </a></td>                  
                        </tr>
                        <tr>
                          <td class="pl-0"><a class="link" href="#">경매거래내역</a></td>
                        </tr>
                        <tr>
                          <td class="pl-0"><a class="link" href="#">중고거래내역</a></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
             <!-- 결제내역 카드 -->
             <div class="card" OnClick="location.href ='#'" style="cursor:pointer;">
                <div class="card-body">
                  <h2 class="card-title"> <i class="far fa-credit-card"></i> 결제내역</h2>
                  <p class="card-description">나의 결제내역을 확인하세요</p>
                  <div class="template-demo">
                    <table class="myongotable mb-0">
                      <tbody>
                        <tr>
                          <td class="pl-0"><a class="link" href="#">구매내역</a></td>                  
                        </tr>
                       
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
               <!-- 나의정보 카드 -->
             <div class="card" OnClick="location.href ='#'" style="cursor:pointer;">
                <div class="card-body" >
                  <h2 class="card-title"> <i class="far fa-user"></i> 나의 정보</h2>
                  <p class="card-description">나의 정보을 확인하세요</p>
                  <div class="template-demo">
                    <table class="myongotable mb-0">
                      <tbody>
                        <tr>
                          <td class="pl-0"><a class="link" href="#">나의정보수정</a></td>                  
                        </tr>
                        <tr>
                          <td class="pl-0"><a class="link" href="#">####</a></td>                  
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <!-- 쪽지함 카드 -->
             <div class="card" OnClick="location.href ='#'" style="cursor:pointer;">
                <div class="card-body">
                  <h2 class="card-title"><i class="far fa-comments"></i> 쪽지함</h2>
                  <p class="card-description">쪽지함</p>
                  <div class="template-demo">
                    <table class="myongotable mb-0">
                      <tbody>
                        <tr>
                          <td class="pl-0"><a class="link" href="#">보낸쪽지함</a></td>                  
                        </tr>
                        <tr>
                          <td class="pl-0"><a class="link" href="#">받은쪽지함</a></td>                  
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
        </div>
    </div>
</div>






	<!--====== // </div> container=====-->

</div>	<!-- //contents -->

	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
</body>
</html>