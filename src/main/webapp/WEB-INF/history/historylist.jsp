<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css"> 

@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

#starred{
    box-shadow: 3px 3px 10px #b5b5b5;
}
.table div.text-muted{
    font-size: 0.85rem;
    font-weight: 600;
    margin-bottom: 0.3rem;
    margin-top: 0.3rem;
}
.icons{
    object-fit: contain;
    width: 25px;
    height: 25px;
    border-radius: 50%;
}
.graph img{
    object-fit: contain;
    width: 40px;
    height: 50px;
    transform: scale(2) rotateY(45deg);
}
.graph .dot{
    width: 12px;
    height: 12px;
    border-radius: 50%;
    border: 3px solid #fff;
    position: absolute;
    background-color: blue;
    box-shadow: 1px 1px 1px #a5a5a5;
    top: 25px;
}
.graph .dot:after{
    background-color: #fff;
    content: '$9,999.00';
    font-weight: 600;
    font-size: 0.7rem;
    position: absolute;
    top: -25px;
    left: -20px;
    box-shadow: 1px 1px 2px #a5a5a5;
    border-radius: 2px;
}
.font-weight-bold{
    font-size: 1.3rem;
    
}
#ethereum{
    transform: scale(2) rotateY(45deg) rotateX(180deg);
}
#ripple{
    transform: scale(2) rotateY(10deg) rotateX(20deg);
}
#eos{
    transform: scale(2) rotateY(50deg) rotateX(190deg);
}



/* utility classes */
.table tr td{
    border: none;
}
.red{
    color: #ff2f2f;
    font-weight: 700;
}
.green{
    color: #1cbb1c;
    font-weight: 700;
}
.labels,.graph{
    position: relative;
}
.green-label{
    background-color: #00b300;
    color: #fff;
    font-weight: 600;
    font-size: 0.7rem;
}
.orange-label{
    background-color: #ffa500;
    color: #fff;
    font-weight: 600;
    font-size: 0.7rem;
}
.border-right{
    transform: scale(0.6);
    border-right: 1px solid black!important;
}
.box{
    transform: scale(1.5);
    background-color: #dbe2ff;
}
#top .table tbody tr{
    border-bottom: 1px solid #ddd;
}
#top .table tbody tr:last-child{
    border: none;
}
select{
    background-color: inherit;
    padding: 8px;
    border-radius: 5px;
    color: #444;
    border: 1px solid #444;
    outline-color: #00f;
}
.text-white{
    background-color: rgb(43, 159, 226);
    border-radius: 50%;
    font-size: 0.7rem;
    font-weight: 700;
    padding: 2px 3px;
}
a:hover{
    text-decoration: none;
}
a:hover .text-white{
    background-color: rgb(20, 92, 187);
}

/* Scrollbars */
::-webkit-scrollbar{
    width: 10px;
    height: 4px;
}
::-webkit-scrollbar-thumb{
    background: linear-gradient(45deg,#999,#777);
    border-radius: 10px;
    
}

/* media Queries */
@media(max-width:379px){
    .d-lg-flex .h3{
        font-size: 1.4rem;
    }
}
@media(max-width:352px){
    #plat{
        margin-top: 10px;
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
            <h1>거래내역</h1>
        </div>
    </div>
    <!-- //title -->
    
    <!--======  <div class="container">  부분부터 복사해서 붙여넣기 하시면 됩니다.======  -->
    
   <div class="container mt-5">
        <div class="h3 text-muted">My Favorite</div>
        <div id="starred" class="bg-white px-2 pt-1 mt-2">
            <div class="table-responsive">
                <table class="table">
                    <tbody>
                        <tr>
                            <td>
                                <div class="d-flex mt-2 border-right">
                                    <div class="box p-2 rounded">
                                        <span class="fas fa-star text-primary px-1"></span>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Name</div>
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <img src="https://www.freepnglogos.com/uploads/bitcoin-png/bitcoin-all-about-bitcoins-9.png"
                                                alt="" class="icons">
                                        </div>
                                        <b class="pl-2">Bitcoin</b>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Market cap</div>
                                    <div><b>$146,169,768.00</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Price</div>
                                    <div><b>$8,536.79</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="d-flex align-items-center labels">
                                        <div class="text-muted">Volume</div>
                                        <div class="green-label mx-1 px-1 rounded">74</div>
                                    </div>
                                    <div><b>$7,576,878.89</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="d-flex align-items-center labels">
                                        <div class="text-muted">Change</div>
                                        <div class="orange-label mx-1 px-1 rounded">20%</div>
                                    </div>
                                    <div><b class="red">-1.22%</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="graph">
                                    <img src="https://freepngimg.com/thumb/stock_market/25650-5-stock-market-graph-up-transparent-background.png"
                                        alt="">
                                    <div class="dot"></div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="d-lg-flex align-items-lg-center py-4">
            <div class="h3 text-muted">Top Cryptocurrency Prices</div>
            <div class="ml-auto">
                <select name="industry" id="industry" class="mx-lg-3 mr-md-4">
                    <option value="" hidden selected>Choose Industry</option>
                    <option value="dark">Dark Net</option>
                </select>
                <select name="plat" id="plat">
                    <option value="" hidden selected>Choose Platform</option>
                    <option value="darkweb">Dark Web</option>
                </select>
            </div>
        </div>
        <div id="top">
            <div class="bg-white table-responsive">
                <table class="table">
                    <tbody>
                        <tr>
                            <td>
                                <div class="d-flex mt-2 border-right">
                                    <div class="box p-2 rounded">
                                        <span class="text-primary px-2 font-weight-bold">01</span>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Name</div>
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <img src="https://freepngimg.com/thumb/bitcoin/59703-classic-bitcoin-virtual-cryptocurrency-currency-ethereum.png"
                                                alt="" class="icons">
                                        </div>
                                        <b class="pl-2">Ethereum</b>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Market cap</div>
                                    <div><b>$146,169,768.00</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Price</div>
                                    <div><b>$8,536.79</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="d-flex align-items-center labels">
                                        <div class="text-muted">Volume</div>
                                        <div class="green-label mx-1 px-1 rounded">74</div>
                                    </div>
                                    <div><b>$7,576,878.89</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="d-flex align-items-center labels">
                                        <div class="text-muted">Change</div>
                                        <div class="orange-label mx-1 px-1 rounded">20%</div>
                                    </div>
                                    <div><b class="red">-0.18%</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="graph">
                                    <img src="https://freepngimg.com/thumb/stock_market/25650-5-stock-market-graph-up-transparent-background.png"
                                        alt="" id="ethereum">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex mt-2 border-right">
                                    <div class="box p-2 rounded">
                                        <span class="text-primary px-1 font-weight-bold">02</span>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Name</div>
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <img src="https://freepngimg.com/thumb/bitcoin/59526-cryptocurrency-badge-bitcoin-gold-png-file-hd-thumb.png"
                                                alt="" class="icons">
                                        </div>
                                        <b class="pl-2">Bitcoin cash</b>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Market cap</div>
                                    <div><b>$446,569,768.00</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Price</div>
                                    <div><b>$8,836.79</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="d-flex align-items-center labels">
                                        <div class="text-muted">Volume</div>
                                        <div class="green-label mx-1 px-1 rounded">74</div>
                                    </div>
                                    <div><b>$7,576,878.89</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="d-flex align-items-center labels">
                                        <div class="text-muted">Change</div>
                                        <div class="orange-label mx-1 px-1 rounded">20%</div>
                                    </div>
                                    <div><b class="green">+4.00%</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="graph">
                                    <img src="https://freepngimg.com/thumb/stock_market/25650-5-stock-market-graph-up-transparent-background.png"
                                        alt="">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex mt-2 border-right">
                                    <div class="box p-2 rounded">
                                        <span class="text-primary px-1 font-weight-bold">03</span>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Name</div>
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <img src="https://freepngimg.com/thumb/bitcoin/59549-cryptocurrency-money-bitcoin-gold-cash-free-photo-png-thumb.png"
                                                alt="" class="icons">
                                        </div>
                                        <b class="pl-2">Ripple</b>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Market cap</div>
                                    <div><b>$56,169,768.00</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Price</div>
                                    <div><b>$5,536.79</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="d-flex align-items-center labels">
                                        <div class="text-muted">Volume</div>
                                        <div class="green-label mx-1 px-1 rounded">74</div>
                                    </div>
                                    <div><b>$17,576,878.89</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="d-flex align-items-center labels">
                                        <div class="text-muted">Change</div>
                                        <div class="orange-label mx-1 px-1 rounded">20%</div>
                                    </div>
                                    <div><b class="green">+1.71%</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="graph">
                                    <img src="https://freepngimg.com/thumb/stock_market/25650-5-stock-market-graph-up-transparent-background.png"
                                        alt="" id="ripple">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex mt-2 border-right">
                                    <div class="box p-2 rounded">
                                        <span class="text-primary px-1 font-weight-bold">04</span>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Name</div>
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <img src="https://freepngimg.com/thumb/bitcoin/59842-cryptocurrency-bitfinex-bitcoin-exchange-png-download-free-thumb.png"
                                                alt="" class="icons">
                                        </div>
                                        <b class="pl-2">EOS</b>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Market cap</div>
                                    <div><b>$12,169,768.00</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="text-muted">Price</div>
                                    <div><b>$14.79</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="d-flex align-items-center labels">
                                        <div class="text-muted">Volume</div>
                                        <div class="green-label mx-1 px-1 rounded">74</div>
                                    </div>
                                    <div><b>$76,878.89</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="d-flex align-items-center labels">
                                        <div class="text-muted">Change</div>
                                        <div class="orange-label mx-1 px-1 rounded">20%</div>
                                    </div>
                                    <div><b class="red">-5.86%</b></div>
                                </div>
                            </td>
                            <td>
                                <div class="graph">
                                    <img src="https://freepngimg.com/thumb/stock_market/25650-5-stock-market-graph-up-transparent-background.png"
                                        alt="" id="eos">
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="d-flex justify-content-center py-2">
            <div>
                <a href="#">Load more <span class="text-white">26</span></a>
            </div>
        </div>
    </div>
    
    <!--====== // </div> container=====-->

</div><!-- //contents -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>