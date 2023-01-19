<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css">
#invoice{
}

.invoice {
    position: relative;
    background-color: #FFF;
    min-height: 680px;
    padding: 15px
}

.invoice header {
    padding: 10px 0;
    margin-bottom: 20px;
    border-bottom: 1px solid #3989c6
}

.invoice .company-details {
    text-align: right
}

.invoice .company-details .name {
    margin-top: 0;
    margin-bottom: 0
}

.invoice .contacts {
    margin-bottom: 20px
}

.invoice .invoice-to {
    text-align: left
}

.invoice .invoice-to .to {
    margin-top: 0;
    margin-bottom: 0
}

.invoice .invoice-details {
    text-align: right
}

.invoice .invoice-details .invoice-id {
    margin-top: 0;
    color: #3989c6
}

.invoice main {
    padding-bottom: 50px
}

.invoice main .thanks {
    margin-top: -100px;
    font-size: 2em;
    margin-bottom: 50px
}

.invoice main .notices {
    padding-left: 6px;
    border-left: 6px solid #3989c6
}

.invoice main .notices .notice {
    font-size: 1.2em
}

.invoice table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    margin-bottom: 20px
}

.invoice table td,.invoice table th {
    padding: 15px;
    background: #eee;
    border-bottom: 1px solid #fff
}

.invoice table th {
    white-space: nowrap;
    font-weight: 400;
    font-size: 16px
}

.invoice table td h3 {
    margin: 0;
    font-weight: 400;
    color: #3989c6;
    font-size: 1.2em
}

.invoice table .qty,.invoice table .total,.invoice table .unit {
    text-align: center;
    font-size: 1.2em
}

.product id  {
    text-align: center;
}

.invoice table .no {
    color: #fff;
    font-size: 1.6em;
    background: #3989c6
}

.invoice table .unit {
    background: #ddd
}

.invoice table .total {
    background: #3989c6;
    color: #fff
}

.invoice table tbody tr:last-child td {
    border: none
}

.invoice table tfoot td {
    background: 0 0;
    border-bottom: none;
    white-space: nowrap;
    text-align: right;
    padding: 10px 20px;
    font-size: 1.2em;
    border-top: 1px solid #aaa
}

.invoice table tfoot tr:first-child td {
    border-top: none
}

.invoice table tfoot tr:last-child td {
    color: #3989c6;
    font-size: 1.4em;
    border-top: 1px solid #3989c6
}

.invoice table tfoot tr td:first-child {
    border: none
}

.invoice footer {
    width: 100%;
    text-align: center;
    color: #777;
    border-top: 1px solid #aaa;
    padding: 8px 0
}

@media print {
    .invoice {
        font-size: 11px!important;
        overflow: hidden!important
    }

    .invoice footer {
        position: absolute;
        bottom: 10px;
        page-break-after: always
    }

    .invoice>div:last-child {
        page-break-before: always
    }
}
}
</style>
<script>

function fnHome(){
	location.href = '/ongo/index.do';
}

function fnLogin(){
	location.href = '/ongo/payment/paymentlist';
}

</script>
 </head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
 <div id="contents">
  <!-- title -->
  <div class="sub_top center">
      <div class="login_container container">
          <h1>결제하기</h1>
      </div>
  </div>
  <!-- //title -->

  <!-- 게시판 -->
  <div class="login_container container">
      <!-- 현재 탭 표시 -->
      <h2 class="visually-hidden">결제</h2>
      <!-- //현재 탭 표시 -->
      <div class="login_wrap">
      
      <div id="invoice">
    <div class="invoice overflow-auto">
        <div style="">
            <header>
            <div class="row">
                <div class="col-md-9">
                        <div>주문번호 :2042-122123</div> 
                        <div>거래일자 :23.01.06 </div>
                        
                    </div>
                    <div class="col-md-3">
            		
                </div>
                </div>
            </header>
            <main>
                 <div class="row">
                  <div class="col-md-2">
                            <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR6NbjHprfrQQnPnli8KD6Twz0f83FurA6s2trUKBBnwEfcci59kOrPEV2tGgAG1T0Qr879b6pPOw&amp;usqp=CAc" width="auto," height="100px/">
                    </div>
                 <div class="col-md-7">
                        <h1 class="invoice-id">A급 아이폰팝니다.</h1>
                 </div>
                 <div class="col-md-3">
                        <div class="order-id">아이폰 14 512GB</div>
                        <div class="order-id">user_2</div>
                        <div class="date">낙찰일자 : 23.01.06</div>
                        
                  </div>
             
                <table border="0" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                            <th class="text-center">Aantal</th>
                            <th class="text-center">Productnaam</th>
                            <th class="text-center">Artikelnummer</th>
                            <th class="text-center">Prijs per stuk<br>(excel. BTW)</th>
                            <th class="text-center">BTW</th>
                            <th class="text-center">Totaal<br>(excl. BTW)</th>
                            <th class="text-center">Totaal<br>(BTW)</th>
                            <th class="text-center">Totaal<br>(incl. BTW)</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="qty">2 stuks</td>
                            <td class="product-name"><h3>
                            아이폰 14 512GB
                            </h3>
                            </td>
                            <td class="product id">SBC03</td>
                            <td class="brutto one">€ 8.26</td>
                            <td class="vat">21%</td>
                            <td class="brutto-price-for-all">€ 16.52</td>
                            <td class="vat">21%</td>
                            <td class="total">$0.00</td>
                            
                        </tr>
                                           </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="3"></td>
                            <td colspan="2">SUBTOTAL</td>
                            <td>€ 16.52</td>
                            <td>€</td>
                            <td>$5,200.00</td>
                        </tr>
                        <tr>
                            <td colspan="3"></td>
                            <td colspan="2">금액</td>
                            <td>€ 1.65</td>
                            <td>€ 0.35</td>
                            <td>€ 2.00</td>
                        </tr>
                        <tr>
                            <td colspan="3"></td>
                            <td colspan="2">주문금액</td>
                            <td></td>
                            <td></td>
                            <td>$6,500.00</td>
                           
                        </tr>
                    </tfoot>
                </table>
 
            </div></main>

        </div>
        <!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->
        <div></div>
    </div>
</div>
              
              
          </div>
      </div>    
      \<div class="btn-area">
                  <button type="button" class="btn btn-primary btn-large me-md-2" onclick="fnLogin()">결제</button>
                  <button type="button" class="btn btn-outline-secondary btn-large" onclick="fnHome()">취소</button>
              </div>
  </div>
</div>
<!-- // contents -->

 
<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer --> 
  
  
  
</body>
</html>