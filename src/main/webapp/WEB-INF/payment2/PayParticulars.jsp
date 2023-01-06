<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css"> 
#invoice{
    padding: 30px;
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
<script type="text/javascript"> </script>
</head>
<body>
<!-- content -->
<div id="contents">
    <!-- title -->
    <div class="sub_top">
        <div class="container">
            <h1>결제상세</h1>
        </div>
    </div>
    <!-- //title -->
    
    <!--======  <div class="container">  부분부터 복사해서 붙여넣기 하시면 됩니다.======  -->
    <div id="invoice">
    <div class="invoice overflow-auto">
        <div style="">
            <header>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-8">
                        <div>주문번호 :2042-122123</div> 
                        <div>거래일자 :23.01.06 </div>
                        
                    </div>
                </div>
            </header>
            <main>
                 <div class="row">
                    <div class="col-xs-6 col-md-4">
                            <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR6NbjHprfrQQnPnli8KD6Twz0f83FurA6s2trUKBBnwEfcci59kOrPEV2tGgAG1T0Qr879b6pPOw&usqp=CAc"  width=auto, height=200px/>
                        </div>
                         <div class="col-xs-6 col-sm-4"></div>
						<div class="col-xs-6 col-md-4">
                        <h1 class="invoice-id">제목아이폰팝니다</h1>
                        <div class="order-id">판매자 : ㅇㅇㅇ</div>
                        <div class="date">낙찰일자 : 23.01.0</div>
                        <div >낙찰가 : 670,000</div>
                        
                    </div>
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
                            CAT bouwmachine - graafmachine sleutel contactsleutel (003)
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
                            <td colspan="2">Verzending en Verwerking PostNL Briefpost - Nederland</td>
                            <td>€ 1.65</td>
                            <td>€ 0.35</td>
                            <td>€ 2.00</td>
                        </tr>
                        <tr>
                            <td colspan="3"></td>
                            <td colspan="2">GRAND TOTAL</td>
                            <td>$6,500.00</td>
                            <td>$6,500.00</td>
                            <td>$6,500.00</td>
                        </tr>
                    </tfoot>
                </table>
 
            </main>

        </div>
        <!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->
        <div></div>
    </div>
</div>
<div class="btn-area flex-row">
       <button class="btn btn-primary btn-large" type="button" onclick="#">목록</button>
        <button class="btn btn-danger  btn-large" type="button" onclick="#">삭제</button>
      </div>
        <!-- //contents -->



<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>