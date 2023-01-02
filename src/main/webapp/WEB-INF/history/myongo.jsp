<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css">

 body {
 	 flex-direction:row
     background-color: #f9f9fa
 }

 .flex {
     -webkit-box-flex: 1;
     -ms-flex: 1 1 auto;
     flex: 1 1 auto
 }

 @media (max-width:991.98px) {
     .padding {
         padding: 1.5rem
     }
 }

 @media (max-width:767.98px) {
     .padding {
         padding: 1rem
     }
 }

 .padding {
     padding: 5rem
 }

 .stretch-card {
     display: -webkit-flex;
     display: flex;
     -webkit-align-items: stretch;
     align-items: stretch;
     -webkit-justify-content: stretch;
     justify-content: stretch
 }

 .grid-margin {
     margin-bottom: 1.875rem
 }

 .card {
     position: relative;
     display: flex;
     flex-direction: column;
     min-width: 0;
     word-wrap: break-word;
     background-color: #fff;
     background-clip: border-box;
     border: 1px solid #d2d2dc;
     border-radius: 2rem;
     box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
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
     color: #000000;
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

 p {
     font-size: 0.875rem;
     margin-bottom: .5rem;
     line-height: 1.5rem
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

.las la-shopping-bag:before{
	content: "xf290"";
	font-weight: 48px;
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
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h2 class="card-title"> <i class="las la-shopping-bag la-2x"></i>거래내역</h2>
                  <p class="card-description">나의 거래내역을 확인하세요</p>
                  <div class="template-demo">
                    <table class="myongotable mb-0">
                      <thead>
                        <tr>
                         
                        
                        
                        
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="pl-0">거래 현황 </td>
                         
                        </tr>
                        <tr>
                          <td class="pl-0">경매거래내역</td>
                         
                        </tr>
                        <tr>
                          <td class="pl-0">중고거래내역</td>
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