<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css"> 

body{
    background-color:#eee;
}
.card {
    background-color: white !important;
    border: none !important;
    border-radius: 0px !important;
    box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px !important
}

.card:hover {
    box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px !important
}

.card>a {
    text-decoration: none !important;
    color: black !important
}

#blockitems {
    margin-right: 0px !important;
    margin-left: 0px !important
}

#icons_section {
    width: 30%;
    text-align: center;
    padding: 0% !important
}

#icons_section>i {
    font-size: 25px;
    color: black !important
}

#heading_section {
    width: 70%
}

#heading_section>h6 {
    margin-bottom: 0px !important;
    color: #990ae3 !important
}

#heading_section>p {
    font-size: 14px !important
}

.cssanimation {
    animation-duration: 1s;
    animation-fill-mode: both
}

.fadeInBottom {
    animation-name: fadeInBottom
}

@keyframes fadeInBottom {
    from {
        opacity: 0;
        transform: translateY(100%)
    }

    to {
        opacity: 1
    }
}

.cssanimation2 {
    animation-duration: 2s;
    animation-fill-mode: both
}

.fadeInBottom2 {
    animation-name: fadeInBottom
}

@keyframes fadeInBottom2 {
    from {
        opacity: 0;
        transform: translateY(100%)
    }

    to {
        opacity: 1
    }
}

.cssanimation3 {
    animation-duration: 3s;
    animation-fill-mode: both
}

.fadeInBottom3 {
    animation-name: fadeInBottom
}

@keyframes fadeInBottom3 {
    from {
        opacity: 0;
        transform: translateY(100%)
    }

    to {
        opacity: 1
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
    
 <div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <div class="row " style="padding: 10px;">
                <div class="col-xl-12">
                    <div class="card cssanimation fadeInBottom"> <a href="#" target="_blank">
                            <div class="card-body">
                                <div class="row" id="blockitems">
                                    <div class="col-sm-3 col-md-1 col-lg-1 col-xl-1" id="icons_section"> <i class="fa fa-mobile " style="font-size: 40px" aria-hidden="true"></i> </div>
                                    <div class="col-sm-8 col-md-9 col-lg-11 col-xl-11" id="heading_section">
                                        <h6>Min mobil eller tablet</h6>
                                        <p>Hj&aelig;lp til fx vejledninger, reparation og forsikring</p>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
        </div>
        <!--First Card End-->
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <div class="row" style="padding: 10px;">
                <div class="col-md-12">
                    <div class="card cssanimation2 fadeInBottom2"> <a href="#" target="_blank">
                            <div class="card-body">
                                <div class="row" id="blockitems">
                                    <div class="col-sm-3 col-md-1 col-lg-1 col-xl-1" id="icons_section"> <i class="fa fa-file-text-o" aria-hidden="true"></i> </div>
                                    <div class="col-sm-8 col-md-9 col-lg-11 col-xl-11" id="heading_section">
                                        <h6>Regning og forbrug</h6>
                                        <p>Hj&aelig;lp til fx udland, forbrug og betaling</p>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
        </div>
        <!--Second Card End-->
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <div class="row" style="padding: 10px;">
                <div class="col-md-12">
                    <div class="card cssanimation3 fadeInBottom3"> <a href="#" target="_blank">
                            <div class="card-body">
                                <div class="row" id="blockitems">
                                    <div class="col-sm-3 col-md-1 col-lg-1 col-xl-1" id="icons_section"> <i class="fa fa-desktop" aria-hidden="true"></i> </div>
                                    <div class="col-sm-8 col-md-9 col-lg-11 col-xl-11" id="heading_section">
                                        <h6>Internet og tv</h6>
                                        <p>Hj&aelig;lp til fx bredb&aring;nd, mobilt bredb&aring;nd og tv</p>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
        </div>
        <!--Third Card End-->
    </div>
    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <div class="row" style="padding: 10px;">
                <div class="col-xl-12">
                    <div class="card cssanimation fadeInBottom"> <a href="#" target="_blank">
                            <div class="card-body">
                                <div class="row" id="blockitems">
                                    <div class="col-sm-3 col-md-1 col-lg-1 col-xl-1" id="icons_section"> <i class="fas fa-sim-card" aria-hidden="true"></i> </div>
                                    <div class="col-sm-8 col-md-9 col-lg-11 col-xl-11" id="heading_section">
                                        <h6>Abonnement og services</h6>
                                        <p>Hj&aelig;lp til fx SIM-kort, opsigelse og tilvalg</p>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
        </div>
        <!--Fourth Card End-->
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <div class="row" style="padding: 10px;">
                <div class="col-md-12">
                    <div class="card cssanimation2 fadeInBottom2"> <a href="#" target="_blank">
                            <div class="card-body">
                                <div class="row" id="blockitems">
                                    <div class="col-sm-3 col-md-1 col-lg-1 col-xl-1" id="icons_section"> <i class="fa fa-signal" aria-hidden="true"></i> </div>
                                    <div class="col-sm-8 col-md-9 col-lg-11 col-xl-11" id="heading_section">
                                        <h6>Drift og d&aelig;kning</h6>
                                        <p>Driftsinformation og netv&aelig;rksd&aelig;kning</p>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
        </div>
        <!--Fifth Card End-->
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <div class="row" style="padding: 10px;">
                <div class="col-md-12">
                    <div class="card cssanimation3 fadeInBottom3"> <a href="#" target="_blank">
                            <div class="card-body">
                                <div class="row" id="blockitems">
                                    <div class="col-sm-3 col-md-1 col-lg-1 col-xl-1" id="icons_section"> <i class="fa fa-user-o" aria-hidden="true"></i> </div>
                                    <div class="col-sm-8 col-md-9 col-lg-11 col-xl-11" id="heading_section">
                                        <h6>Ny kunde</h6>
                                        <p>Hj&aelig;lp til fx ny mobil, bestilling og Mit Telia</p>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
        </div>
        
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <div class="row" style="padding: 10px;">
                <div class="col-md-12">
                    <div class="card cssanimation3 fadeInBottom3"> <a href="#" target="_blank">
                            <div class="card-body">
                                <div class="row" id="blockitems">
                                    <div class="col-sm-3 col-md-1 col-lg-1 col-xl-1" id="icons_section"> <i class="fa fa-user-o" aria-hidden="true"></i> </div>
                                    <div class="col-sm-8 col-md-9 col-lg-11 col-xl-11" id="heading_section">
                                        <h6>Ny kunde</h6>
                                        <p>Hj&aelig;lp til fx ny mobil, bestilling og Mit Telia</p>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
        </div>
        
        
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <div class="row" style="padding: 10px;">
                <div class="col-md-12">
                    <div class="card cssanimation3 fadeInBottom3"> <a href="#" target="_blank">
                            <div class="card-body">
                                <div class="row" id="blockitems">
                                    <div class="col-sm-3 col-md-1 col-lg-1 col-xl-1" id="icons_section"> <i class="fa fa-user-o" aria-hidden="true"></i> </div>
                                    <div class="col-sm-8 col-md-9 col-lg-11 col-xl-11" id="heading_section">
                                        <h6>Ny kunde</h6>
                                        <p>Hj&aelig;lp til fx ny mobil, bestilling og Mit Telia</p>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
        </div>
        
        
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <div class="row" style="padding: 10px;">
                <div class="col-md-12">
                    <div class="card cssanimation3 fadeInBottom3"> <a href="#" target="_blank">
                            <div class="card-body">
                                <div class="row" id="blockitems">
                                    <div class="col-sm-3 col-md-1 col-lg-1 col-xl-1" id="icons_section"> <i class="fa fa-user-o" aria-hidden="true"></i> </div>
                                    <div class="col-sm-8 col-md-9 col-lg-11 col-xl-11" id="heading_section">
                                        <h6>Ny kunde</h6>
                                        <p>Hj&aelig;lp til fx ny mobil, bestilling og Mit Telia</p>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
        </div>
        
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <div class="row" style="padding: 10px;">
                <div class="col-md-12">
                    <div class="card cssanimation3 fadeInBottom3"> <a href="#" target="_blank">
                            <div class="card-body">
                                <div class="row" id="blockitems">
                                    <div class="col-sm-3 col-md-1 col-lg-1 col-xl-1" id="icons_section"> <i class="fa fa-user-o" aria-hidden="true"></i> </div>
                                    <div class="col-sm-8 col-md-9 col-lg-11 col-xl-11" id="heading_section">
                                        <h6>Ny kunde</h6>
                                        <p>Hj&aelig;lp til fx ny mobil, bestilling og Mit Telia</p>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
        </div>
        
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <div class="row" style="padding: 10px;">
                <div class="col-md-12">
                    <div class="card cssanimation3 fadeInBottom3"> <a href="#" target="_blank">
                            <div class="card-body">
                                <div class="row" id="blockitems">
                                    <div class="col-sm-3 col-md-1 col-lg-1 col-xl-1" id="icons_section"> <i class="fa fa-user-o" aria-hidden="true"></i> </div>
                                    <div class="col-sm-8 col-md-9 col-lg-11 col-xl-11" id="heading_section">
                                        <h6>Ny kunde</h6>
                                        <p>Hj&aelig;lp til fx ny mobil, bestilling og Mit Telia</p>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
        </div>
        
        
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <div class="row" style="padding: 10px;">
                <div class="col-md-12">
                    <div class="card cssanimation3 fadeInBottom3"> <a href="#" target="_blank">
                            <div class="card-body">
                                <div class="row" id="blockitems">
                                    <div class="col-sm-3 col-md-1 col-lg-1 col-xl-1" id="icons_section"> <i class="fa fa-user-o" aria-hidden="true"></i> </div>
                                    <div class="col-sm-8 col-md-9 col-lg-11 col-xl-11" id="heading_section">
                                        <h6>Ny kunde</h6>
                                        <p>Hj&aelig;lp til fx ny mobil, bestilling og Mit Telia</p>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
        </div>
        
        
        <!--Sixth Card End-->
    </div>
</div>
    <!--====== // </div> container=====-->

</div><!-- //contents -->

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>