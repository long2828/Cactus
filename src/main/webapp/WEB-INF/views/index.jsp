<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Cactus</title>

    <!-- google fonts -->
    <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

    <!-- Template CSS -->
    <link rel='stylesheet' href="<c:url value='/css/style-starter.css'  />"/>             
    

</head>
<style>
#yaya{
/* 	color:	#00DB00; */
/* 	background-color:	#E8E8D0; */
	color:#FCFCFC;
	background: rgba(0, 0, 0, 0.5);
	border-radius: 10px;
	width: 90px;
	font-size: 15px;
	font-weight: bold;
	position: relative;
	top: -5px;
	right:115px;
/* 	margin :5px 55px 50px 55px;  */
}
#ququ{
 
    color:#FCFCFC;
    background: rgba(0, 0, 0, 0.5);
    border-radius: 10px;
    width: 90px;
    font-size: 15px;
    font-weight: bold;
    position: relative;
    top: -71px;
    right:10px;
/*      margin :5px 55px 50px 55px;   */
}
</style>

<body>
    <!--header-->
    <header id="site-header" class="fixed-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-dark stroke">
                <h1>
                    <a class="navbar-brand" href="index.html">
                        <span class="fa fa-align-right"></span> Cactus<span class="logo">Learning Everywhere</span></a>
                </h1>

                <!-- if logo is image enable this   
          <a class="navbar-brand" href="#index.html">
              <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
          </a> -->
                <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
                    data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                    
                </button>

                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav mx-lg-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="${pageContext.request.contextPath}/homeLoginPage">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <!-- <li class="nav-item @@about__active">
                            <a class="nav-link" href="about.html">About</a>
                        </li>
                        <li class="nav-item @@services__active">
                            <a class="nav-link" href="services.html">Services</a>
                        </li>
                        <li class="nav-item @@contact__active">
                            <a class="nav-link" href="contact.html">Contact</a>
                        </li> -->
                    </ul>
                </div>

                <!-- 這邊是搜尋 -->
                <!--/search-right-->
                <div class="header-search">
                    <div class='control mr-3'>
                        <div class='btn-material'>
                            <i class='fa fa-search icon-material-search'></i>
                        </div>
                    </div>
                    <!-- full screen form controls -->
                    <i class='icon-close fa fa-close material-icons'></i>
                    <form action="<c:url value='/findByNameLike' />" 
                    method="GET" class='search-input'>
                        <input class='input-search' placeholder='Start Typing' type='text'
                        name="courseName">
                    </form>
                </div>
                <!--//search-right-->


                <!-- toggle switch for light and dark theme -->

                <!-- 這邊是日夜間模式
          <div class="mobile-position">
            <nav class="navigation">
              <div class="theme-switch-wrapper">
                <label class="theme-switch" for="checkbox">
                  <input type="checkbox" id="checkbox">
                  <div class="mode-container py-1">
                    <i class="gg-sun"></i>
                    <i class="gg-moon"></i>
                  </div>
                </label>
              </div>
            </nav>
          </div>             -->
                <!-- <div>
                    <a href="login.html"><i class="fa fa-user-circle-o" id="test1"
                            style="font-size: 28px; color:#fff; padding:7px 0px 0px 13px;" title="Login 登入"></i></a>
                </div> -->

                

               <!--  <div class="dropdown"> 下拉式選單-->
                    <a class="fa fa-user-circle-o " id="test1" data-toggle="modal" data-target="#exampleModalCenter" 
                    style="font-size: 30px; color:#fff; padding:7px 0px 0px 13px ; "  ></a>
                      
                    
                  
                  <!--   <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                      <a class="dropdown-item" href="profile.html"><i class="far fa-address-card"></i> 個人資料</a>
                      <a class="dropdown-item" href="#"><i class="fas fa-money-check-alt"></i> 付款方式</a>
                      <a class="dropdown-item" href="#"><i class="fas fa-book"></i>  我的課程</a>
                      <a class="dropdown-item" href="#"><i class="fas fa-shopping-cart"></i> 購物車</a>
                      <div class="out">
                        <a class="dropdown-item" href="#"><i class="fas fa-door-open"></i> 登出</a>
                      </div>
                    </div>
                </div> -->
                
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content">
<!--                         <div class="modal-header"> -->
<!--                           <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5> -->
<!--                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
<!--                             <span aria-hidden="true">&times;</span> -->
<!--                           </button> -->
<!--                         </div>                      -->
                         <div class="modal-body">						 
                         <form class="login" method="post" action="loginCheck.controller" name="myForm"> 
                          <h1 class="hh1">Login 登入</h1> 
                          <i  class="fas fa-user"></i>  
                          <input type="text" placeholder="Username 用戶名" name="username" id="idn" required/> 
        				  <input type="password" placeholder="Password 密碼" name="password" id="idp" required/>         				        				         				       				       				  
        				  <div style="color:#FF0000; font-size:20px;">${e.msg}</div> 
         				  <div id="div" style="color:#FF0000"></div>
                           <input id="lg" type="submit" value="Login" />    
                           <div>______________________________________</div> <br>
                           <a id="a1" href="<c:url value='/forgotpassword'/>">Forgot Password ?</a>  
                           <a id="a2" href="${pageContext.request.contextPath}/signUpPage">Sign up</a>
<!--                            <input id="i1" type="submit" value="Login with Facebook" onclick="location.href='###'"/>  -->
<!--                           <input id="i2" type="submit" value="Login with Google" onclick="location.href='http://localhost:8080/cactus/oauth2/authorization/google'"/> -->
                          <input id="yaya" type="button" value="一鍵登入" onclick="fFirst()"/>
                          <input id="ququ" type="button" value="修改後" onclick="s()"/>
                          
<%--                            <img class="img2" src="<c:url value='/images/googleYAY.png'  />"/> --%>
<%--                            <img class="img1" src="${pageContext.request.contextPath}/images/fb2_1.png" />  --%>
                         </form>
<!--                         </div> -->
<!--                         <div class="modal-footer">
<!--                           <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
<!--                           <button type="button" class="btn btn-primary">Save changes</button> -->
                        </div> 
                      </div>
                    </div>
                  </div>
                
    
                <!-- <div class="dropdown"></div>
                <a href="login.html" class="btn btn-secondary dropdown-toggle" type="image" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
                  
                
                <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
                  <li><a class="dropdown-item active" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Separated link</a></li>
                </ul>
              </div> -->

                <!-- //toggle switch for light and dark theme -->
            </nav>

        </div>
    </header>
    <!--/header-->

    <!-- hero slider Start -->
    <div class="banner-wrap">
        <div class="banner-slider">
            <!-- hero slide start -->
            <div class="banner-slide bg1">
                <div class="container">
                    <div class="hero-content">
                        <h1 data-animation="flipInX" data-delay="0.8s" data-color="#fff">
                            我們提供優質的學習平台</h1>
                        <p data-animation="fadeInDown" class="mt-4">Design BY : Chester.Hisao , Andy.Lee , Mousedown.Lee
                            , Captain.Chou , Long.Tsen , Ryan.Liao</p>
                        <div class="cta-btn" data-animation="fadeInUp" data-delay="1s">
                            <a href="#url" class="btn btn-style btn-primary">了解更多</a>
                        </div>
                    </div>
                </div>
                <div class="hero-overlay"></div>
            </div>
            <!-- hero slide end -->
            <!-- hero slide start -->
            <!-- <div class="banner-slide bg2">
            <div class="container">
                <div class="hero-content">
                    <h1 data-animation="fadeInDown" data-delay="0.8s" data-color="#fff">
                        Embracing success do our best, need best advice
                    </h1>
                    <p data-animation="fadeInDown" class="mt-4">Lorem ipsum dolor sit amet, elit, sed do eiusmod ut labore et dolore magna aliqua.
                        Ut enim ad minim veniam, quis nisi ut ea. </p>
                    <div class="cta-btn" data-animation="fadeInDown" data-delay="1s">
                        <a href="#url" class="btn btn-style btn-primary">Get Started</a>
                    </div>
                </div>
            </div>
            <div class="hero-overlay"></div>
        </div> -->
            <!-- hero slide end -->
            <!-- hero slide start -->
            <!-- <div class="banner-slide bg3">
            <div class="container">
                <div class="hero-content">
                    <h1 data-animation="fadeInUp" data-color="#fff" data-delay="0.8s">Digital transformation driven
                        by technology</h1>
                    <p data-animation="fadeInUp" class="mt-4">Lorem ipsum dolor sit amet, elit, sed do eiusmod ut labore et dolore magna aliqua.
                        Ut enim ad minim veniam, quis nisi ut ea. </p>
                    <div class="cta-btn" data-animation="fadeInDown" data-delay="1s">
                        <a href="#url" class="btn btn-style btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="hero-overlay"></div>
        </div> -->
            <!-- hero slide end -->
            <!-- hero slide start -->
            <div class="banner-slide bg4">
                <div class="container">
                    <div class="hero-content">
                        <h1 data-animation="flipInX" data-color="#fff" data-delay="0.8s" >任何時間 任何地點 隨心所欲</h1>
                        <p data-animation="fadeInDown" class="mt-4">Design BY : Chester.Hisao , Andy.Lee , Mousedown.Lee
                            , Captain.Chou , Long.Tsen , Ryan.Liao</p>
                        <div class="cta-btn" data-animation="fadeInUp" data-delay="1s">
                            <a href="#url" class="btn btn-style btn-primary">聯絡我們</a>
                        </div>
                    </div>
                </div>
                <div class="hero-overlay"></div>
            </div>
            <!-- hero slide end -->
        </div>


        <!-- 這邊是波浪效果 -->
        <!-- <div class="shape">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 280">
            <path fill-opacity="1">
                <animate attributeName="d" dur="20000ms" repeatCount="indefinite"
                    values="M0,160L48,181.3C96,203,192,245,288,261.3C384,277,480,267,576,234.7C672,203,768,149,864,117.3C960,85,1056,75,1152,90.7C1248,107,1344,149,1392,170.7L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z; M0,160L48,181.3C96,203,192,245,288,234.7C384,224,480,160,576,133.3C672,107,768,117,864,138.7C960,160,1056,192,1152,197.3C1248,203,1344,181,1392,170.7L1440,160L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;												 M0,64L48,74.7C96,85,192,107,288,133.3C384,160,480,192,576,170.7C672,149,768,75,864,80C960,85,1056,171,1152,181.3C1248,192,1344,128,1392,96L1440,64L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;
                                                 M0,160L48,181.3C96,203,192,245,288,261.3C384,277,480,267,576,234.7C672,203,768,149,864,117.3C960,85,1056,75,1152,90.7C1248,107,1344,149,1392,170.7L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;" />

            </path>

        </svg>
    </div> -->
    </div>
    <!-- hero slider end -->
    <!-- home page about section -->
    <!-- <section class="w3l-homeblock1" id="about">
    <div class="midd-w3 py-5">
        <div class="container py-lg-5 py-md-3">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <span class="title-small">About Us</span>
                    <h3 class="title-big">We make the best strategies for you, Enhancing your success</h3>
                    <p class="mt-md-4 mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ullamco laboris nisi ut ex ea. </p>
                    <ul class="service-list pt-lg-2 mt-4">
                        <li class="service-link"><a href="#url"><span class="fa fa-check-circle"></span> UI/UX Design and Development</a></li>
                        <li class="service-link"><a href="#url"><span class="fa fa-check-circle"></span> Branding Design and Identity</a></li>
                        <li class="service-link"><a href="#url"><span class="fa fa-check-circle"></span> Mobile App Design and Development</a></li>
                    </ul>
                </div>
                <div class="HomeAboutImages col-lg-6 mt-lg-0 mt-md-5 mt-4">
                    <div class="row position-relative">
                        <div class="col-6">    
                        <img src="assets/images/a.jpg" alt="" class="radius-image img-fluid">
                        </div>
                        <div class="col-6 mt-4">    
                            <img src="assets/images/c1.jpg" alt="" class="radius-image img-fluid mb-md-3 mb-2">
                            <img src="assets/images/c4.jpg" alt="" class="radius-image img-fluid mt-md-3">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->
    <!-- //home page about section -->

    <!-- features section -->
    <!-- <section class="w3l-features py-5" id="work">
    <div class="container py-lg-5 py-md-4 py-2">
        <div class="row main-cont-wthree-2 align-items-center">
            <div class="col-lg-6 feature-grid-left pr-lg-5">
                <h5 class="title-small">Every day brings new challenges</h5>
                <h3 class="title-big mb-4">Creative agency focused on vision, product and people</h3>
                <p class="text-para">Aurabitur id gravida risus. Fusce eget ex fermentum, ultricies nisi ac sed,
                    lacinia est. Quisque ut lectus consequat, venenatis eros et, sed commodo risus. Nullam sit
                    amet laoreet elit. Suspendisse non init magnaa velit efficitur, dolor eget ex fermentum.
                </p>
                <a href="about.html" class="btn btn-style btn-primary mt-lg-5 mt-4">Discover More</a>
            </div>
            <div class="col-lg-6 feature-grid-right mt-lg-0 mt-md-5 mt-4">
                <div class="call-grids-w3 d-grid">
                    <div class="grids-1 box-wrap">
                        <div class="icon">
                            <img src="assets/images/icon1.png" alt="" class="img-fluid">
                        </div>
                        <h4><a href="about.html" class="title-head">Our Process</a></h4>
                    </div>
                    <div class="grids-1 box-wrap">
                        <div class="icon">
                            <img src="assets/images/icon2.png" alt="" class="img-fluid">
                        </div>
                        <h4><a href="about.html" class="title-head">How We Help</a></h4>
                    </div>
                    <div class="grids-1 box-wrap">
                        <div class="icon">
                            <img src="assets/images/icon3.png" alt="" class="img-fluid">
                        </div>
                        <h4><a href="about.html" class="title-head">UI/UX Design</a></h4>
                    </div>
                    <div class="grids-1 box-wrap">
                        <div class="icon">
                            <img src="assets/images/icon4.png" alt="" class="img-fluid">
                        </div>
                        <h4><a href="about.html" class="title-head">Creative Ideas</a></h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->
    <!-- features section -->
    <!--  services section -->
    <div class="w3l-servicesblock2" id="services">
        <section id="grids5-block" class="py-5">
            <div class="container py-lg-5 py-md-4 py-2">
                <h3 class="title-big text-center">全球最受歡迎的課程種類</h3>
                <div class="row mt-lg-5 mt-4 text-center">
                    <div class="col-lg-4 col-md-6">
                        <div class="grids5-info">
                            <a href="#service" class="d-block zoom"><img src="${pageContext.request.contextPath}/images/python02.jpg" alt=""
                                    class="img-fluid service-image" /></a>
                            <div class="blog-info">
                                <a href="#service" class="title">PYTHON</a>
                                <p class="text-para"> Python被視為執行機器學習最好的程式語言。如果想要進入人工智慧領域，Python是最好入門的工具。</p>
                            </div>
                            <a href="#learnmore" class="btn btn-style1 mt-3">Learn More</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mt-md-0 mt-5">
                        <div class="grids5-info">
                            <a href="#service" class="d-block zoom"><img src="${pageContext.request.contextPath}/images/bitcoin01.jpg" alt=""
                                    class="img-fluid service-image" /></a>
                            <div class="blog-info">
                                <a href="#service" class="title">加密貨幣投資</a>
                                <p class="text-para">加密貨幣、區塊鏈、比特幣? 聽起來很難，但操作起來其實很簡單！帶你手把手進入加密貨幣市場這個瘋狂的世界吧！</p>
                            </div>
                            <a href="#learnmore" class="btn btn-style1 mt-3">Learn More</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mt-lg-0 mt-5">
                        <div class="grids5-info">
                            <a href="#service" class="d-block zoom"><img src="${pageContext.request.contextPath}/images/mobile01.jpg" alt=""
                                    class="img-fluid service-image" /></a>
                            <div class="blog-info">
                                <a href="#service" class="title">Mobile UI Design</a>
                                <p class="text-para"> Venenatis eros et, sed commodo risus. Nullam sit
                                    amet laoreet elit.</p>
                            </div>
                            <a href="#learnmore" class="btn btn-style1 mt-3">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!--  //services section -->
    <section class="w3l-gallery py-5" id="gallery">
        <div class="container py-lg-5 py-md-4 py-2">
            <div class="title-content text-center mb-5">
                <h3 class="title-small"> 課程種類</h3>
                <h3 class="title-big mx-lg-5">CACTUS 課程分類</h3>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 item">
                    <a href="<c:url value='/typeofcoding'  />" 
                        class="zoom d-block">
                        <img class="card-img-bottom d-block" src="${pageContext.request.contextPath}/images/software01.jpg" alt="Card image cap">
                        <span class="overlay__hover"></span>
                        <span class="hover-content">
                            <span class="title">軟體編程</span>
                            <span class="content">Quisque ut lectus, eros et, sed commodo risus.</span>
                        </span>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 item mt-md-0 mt-4">
                    <a href="<c:url value='/typeofsport'  />"
                        class="zoom d-block">
                        <img class="card-img-bottom d-block" src="${pageContext.request.contextPath}/images/sport01.jpg" alt="Card image cap">
                        <span class="overlay__hover"></span>
                        <span class="hover-content">
                            <span class="title">運動</span>
                            <span class="content">Quisque ut lectus, eros et, sed commodo risus.</span>
                        </span>
                    </a>
                </div>

                <div class="col-lg-4 col-md-6 item mt-lg-0 mt-4">
                    <a href="<c:url value='/typeofmusic'  />" 
                        class="zoom d-block">
                        <img class="card-img-bottom d-block" src="${pageContext.request.contextPath}/images/music01.jpg" alt="Card image cap">
                        <span class="overlay__hover"></span>
                        <span class="hover-content">
                            <span class="title">音樂</span>
                            <span class="content">Quisque ut lectus, eros et, sed commodo risus.</span>
                        </span>
                    </a>
                </div>

                <div class="col-lg-4 col-md-6 item mt-4 pt-lg-2">
                     <a href="<c:url value='/typeoflan'  />" 
                        class="zoom d-block">
                        <img class="card-img-bottom d-block" src="${pageContext.request.contextPath}/images/c4.jpg" alt="Card image cap">
                        <span class="overlay__hover"></span>
                        <span class="hover-content">
                            <span class="title">語言</span>
                            <span class="content">Quisque ut lectus, eros et, sed commodo risus.</span>
                        </span>
                    </a>
                </div>

                <div class="col-lg-4 col-md-6 item mt-4 pt-lg-2">
                   <a href="<c:url value='/typeoffree'  />" 
                        class="zoom d-block">
                        <img class="card-img-bottom d-block" src="${pageContext.request.contextPath}/images/c5.jpg" alt="Card image cap">
                        <span class="overlay__hover"></span>
                        <span class="hover-content">
                            <span class="title">攝影</span>
                            <span class="content">Quisque ut lectus, eros et, sed commodo risus.</span>
                        </span>
                    </a>
                </div>

                <div class="col-lg-4 col-md-6 item mt-4 pt-lg-2">
                    <a href="assets/images/c6.jpg" data-lightbox="example-set" data-title="Project 6"
                        class="zoom d-block">
                        <img class="card-img-bottom d-block" src="${pageContext.request.contextPath}/images/c6.jpg" alt="Card image cap">
                        <span class="overlay__hover"></span>
                        <span class="hover-content">
                            <span class="title">金融</span>
                            <span class="content">Quisque ut lectus, eros et, sed commodo risus.</span>
                        </span>
                    </a>
                </div>
                <!-- <div class="text-center w-100 mt-md-5 mt-4">
                <a href="#loadmore" class="load btn btn-style btn-outline-primary"> Load More </a>
            </div> -->
            </div>
            <!-- Company logos -->
            <!-- 這邊是logo -->
            <!-- <div class="row company-logos pt-5 mt-5 justify-content-center">
            <div class="col-lg-2 col-md-3 col-4">
                <img src="assets/images/brand1.png" alt="" class="img-fluid">
            </div>
            <div class="col-lg-2 col-md-3 col-4">
                <img src="assets/images/brand6.png" alt="" class="img-fluid">
            </div>
            <div class="col-lg-2 col-md-3 col-4">
                <img src="assets/images/brand3.png" alt="" class="img-fluid">
            </div>
            <div class="col-lg-2 col-md-3 col-4 mt-md-0 mt-4">
                <img src="assets/images/brand4.png" alt="" class="img-fluid">
            </div>
            <div class="col-lg-2 col-md-3 col-4 mt-lg-0 mt-4">
                <img src="assets/images/brand5.png" alt="" class="img-fluid">
            </div>
        </div> -->
            <!-- //Company logos -->
            <!-- </div> -->
    </section>

    <!-- 這邊是圖表%功能 -->
    <!-- home page progress section -->
    <!-- <section class="w3l-progress" id="progress">
    <div class="midd-w3 py-5">
        <div class="container py-lg-5 py-md-4 py-2">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <img src="assets/images/about.jpg" alt="" class="radius-image img-fluid">
                </div>
                <div class="col-lg-6 mt-lg-0 mt-md-5 mt-4">
                    <span class="title-small">Your success is our success</span>
                    <h3 class="title-big mb-4 pb-lg-2">Web design, marketing & SEO solutions that get results</h3>
                    <div class="progress-info info1">
                        <h6 class="progress-tittle">Marketing <span class="">80%</span></h6>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped gradient-1" role="progressbar" style="width: 80%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                    <div class="progress-info info2">
                        <h6 class="progress-tittle">Responsive Web design <span class="">95%</span>
                        </h6>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped gradient-2" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                    <div class="progress-info info3">
                        <h6 class="progress-tittle">Analytics <span class="">60%</span></h6>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped gradient-3" role="progressbar" style="width: 60%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                    <div class="progress-info info4 mb-0">
                        <h6 class="progress-tittle">Web Development <span class="">85%</span></h6>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped gradient-4" role="progressbar" style="width: 85%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->
    <!-- //home page progress section -->
    <!-- testimonials -->


    <!-- 輪播功能 -->
    <!-- <section class="w3l-testimonials" id="testimonials">
    
    <div class="cusrtomer-layout py-5">
        <div class="container py-lg-4 py-md-3 py-2 pb-lg-0">

            <h5 class="title-small text-center mb-1">Happy Clients Feedback</h5>
            <h3 class="title-big text-center mb-sm-5 mb-4">Reviews and Testimonials</h3>
            
            <div class="testimonial-width">
                <div id="owl-demo1" class="owl-two owl-carousel owl-theme">
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <blockquote>
                                    <q>Lorem ipsum dolor sit amet elit. Velit beatae
                                        laudantium voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                        Dolores molestias adipisci dolo amet!. Lorem ipsum dolor sit amet consectetur
                                        adipisicing elit. Esse architecto est ea sunt eligendi cum?</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="test-img"><img src="assets/images/team1.jpg" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <div class="peopl align-self">
                                        <h3>John wilson</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <blockquote>
                                    <q>Lorem ipsum dolor sit amet elit. Velit beatae
                                        laudantium
                                        voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                        Dolores molestias adipisci dolo amet!.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="test-img"><img src="assets/images/team2.jpg" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <div class="peopl align-self">
                                        <h3>Julia sakura</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <blockquote>
                                    <q>Lorem ipsum dolor sit amet elit. Velit beatae
                                        laudantium
                                        voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                        Dolores molestias adipisci dolo amet!.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="test-img"><img src="assets/images/team3.jpg" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <div class="peopl align-self">
                                        <h3>Roy Linderson</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <blockquote>
                                    <q>Lorem ipsum dolor sit amet elit. Velit beatae
                                        laudantium
                                        voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                        Dolores molestias adipisci dolo amet!.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="test-img"><img src="assets/images/team4.jpg" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <div class="peopl align-self">
                                        <h3>Smith Johnson</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </div> -->

    </section>
    <!-- //testimonials -->


    <!-- blog  文章功能 -->
    <!-- <section class="w3l-blog">
    <div class="blog py-5" id="Newsblog">
        <div class="container py-lg-5 py-md-4 py-2">
            <h5 class="title-small text-center mb-1">Latest News</h5>
            <h3 class="title-big text-center mb-sm-5 mb-4">Our insight and articles</h3>
            <div class="row">
                <div class="col-lg-4 col-md-6 item">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#blog-single" class="zoom d-block">
                                <img class="card-img-bottom d-block" src="assets/images/blog1.jpg"
                                    alt="Card image cap">
                            </a>
                        </div>
                        <div class="card-body blog-details">
                            <div class="price-review d-flex justify-content-between mb-1 align-items-center">
                                <p>Startup Business</p>
                            </div>
                            <a href="#blog-single" class="blog-desc">Business opportunity in developing a reliable electric motor. </a>
                        </div>
                        <div class="card-footer">
                            <div class="author align-items-center">
                                <a href="#author" class="post-author"> 
                                    <img src="assets/images/team1.jpg" alt="" class="img-fluid rounded-circle">
                                </a>
                                <ul class="blog-meta">
                                    <li>
                                        <span class="meta-value">by</span><a href="#author"> Jessica</a>
                                    </li>
                                </ul>
                                <div class="date">
                                    <p>20 March, 2021</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 item mt-md-0 mt-5">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#blog-single" class="zoom d-block">
                                <img class="card-img-bottom d-block" src="assets/images/blog2.jpg"
                                    alt="Card image cap">
                            </a>
                        </div>
                        <div class="card-body blog-details">
                            <div class="price-review d-flex justify-content-between mb-1 align-items-center">
                                <p>Marketing Strategy</p>
                            </div>
                            <a href="#blog-single" class="blog-desc">The fledgling company builds its business around AC motors</a>
                        </div>
                        <div class="card-footer">
                            <div class="author align-items-center">
                                <a href="#author" class="post-author"> 
                                    <img src="assets/images/team2.jpg" alt="" class="img-fluid rounded-circle">
                                </a>
                                 <ul class="blog-meta">
                                    <li>
                                        <span class="meta-value">by</span><a href="#author"> Elizabeth</a>
                                    </li>
                                </ul>
                                <div class="date">
                                    <p>20 March, 2021</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 item mt-lg-0 mt-5">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#blog-single" class="zoom d-block">
                                <img class="card-img-bottom d-block" src="assets/images/blog3.jpg"
                                    alt="Card image cap">
                            </a>
                        </div>
                        <div class="card-body blog-details">
                            <div class="price-review d-flex justify-content-between mb-1 align-items-center">
                                <p>Web Development</p>
                            </div>
                            <a href="#blog-single" class="blog-desc">How to start a profitable home-based business within mins?</a>
                        </div>
                        <div class="card-footer">
                            <div class="author align-items-center">
                                <a href="#author" class="post-author"> 
                                    <img src="assets/images/team3.jpg" alt="" class="img-fluid rounded-circle">
                                </a>
                                <ul class="blog-meta">
                                    <li>
                                        <span class="meta-value">by</span><a href="#author"> Charlotte</a>
                                    </li>
                                </ul>
                                <div class="date">
                                    <p>20 March, 2021</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->


    <!-- <section class="w3l-project py-5" id="subscribe">
    <div class="container py-md-5 py-sm-4 py-2">
        <div class="bottom-info">
            <div class="header-section text-center">
                <h3 class="title-big">Let’s find out how to work together</h3>
                <p class="mt-3 pr-lg-5">Lorem ipsum dolor sit amet elit. Velit beatae
                    rem ullam dolore nisi esse quasi, sit amet. Lorem ipsum dolor sit
                    amet elit.</p>
            </div>
            <form action="#" class="subscribe mt-5" method="post">
                <div class="input-group-text"><span class="fa fa-paper-plane"></span></div>
                <input type="email" name="email" placeholder="Your Email Address" required="">
                <button class="btn btn-style btn-primary">Subscibe</button>
              </form>
        </div>
    </div>
</section> -->
    <!-- footer -->

    <!-- 最後一段 -->

    <!-- <footer class="w3l-footer-29-main">
    <div class="footer-29 py-5">
      <div class="container py-md-4">
  
        <div class="row footer-top-29">
  
          <div class="col-lg-4 col-md-6 footer-list-29 footer-1">
            <div class="footer-logo mb-4">
              <a class="navbar-brand" href="index.html">
                <span class="fa fa-align-right"></span> Corp Vision <span class="logo">Vision to your Future</span></a>
            </div>
            <p>Lorem ipsum viverra feugiat. Pellen tesque libero ut justo, ultrices in ligula. Semper at
              tempufddfel. Lorem ipsum dolor sit amet Semper at elit team advisors.</p>
            <div class="main-social-footer-29 mt-md-4 mt-3">
              <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
              <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
              <a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
              <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
            </div>
          </div>
  
          <div class="col-lg-4 col-md-6 footer-list-29 footer-1 pr-lg-5 mt-md-0 mt-5">
            <h6 class="footer-title-29">Contact Info </h6>
            <p class="mb-2">Address : Corp Vision, 343 marketing, #21 cravel 1st lane street, NY - 62617.</p>
            <p class="mb-2">Phone Number : <a href="tel:+1(21) 234 4567">+1(21) 234 4567</a></p>
            <p class="mb-2">Email : <a href="mailto:info@example.com">info@example.com</a></p>
            <p>Support : <a href="mailto:info@support.com">info@support.com</a></p>
          </div>
  
          <div class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-2 mt-lg-0 mt-5">
            <ul>
              <h6 class="footer-title-29">Services</h6>
              <li><a href="#url">UI/UX Design</a></li>
              <li><a href="#url">Creative agency</a></li>
              <li><a href="#url">Positive thinking</a></li>
              <li><a href="#url">Marketing service</a></li>
              <li><a href="#url">Creative agency</a></li>
            </ul>
          </div>
  
          <div class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-2 mt-lg-0 mt-5">
            <ul>
              <h6 class="footer-title-29">Company</h6>
              <li><a href="about.html"> About company</a></li>
              <li><a href="index.html#blog">Latest Blog posts</a></li>
              <li><a href="index.html#gallery">Our Gallery </a></li>
              <li><a href="#vision">Vision to future</a></li>
              <li><a href="contact.html">Get in touch</a></li>
            </ul>
          </div>
  
        </div>
  
      </div>
    </div> -->
    <!-- copyright -->
    <!-- <section class="w3l-copyright text-center">
      <div class="container">
        <p class="copy-footer-29">© 2021 Corp Vision. All rights reserved. Design by <a href="https://w3layouts.com/"
            target="_blank">
            W3Layouts</a></p>
      </div> -->

    <!-- move top -->
    <!-- <button onclick="topFunction()" id="movetop" title="Go to top">
        &#10548;
      </button> -->
<!-- 底部黑色區塊 -->
	<br>
	<br>
	<br>
	<br>
	<footer class="w3l-footer-29-main">
		<div class="footer-29 py-5">
			<div class="container py-md-4">

				<div class="row footer-top-29">

					<div class="col-lg-4 col-md-6 footer-list-29 footer-1">
						<div class="footer-logo mb-4">
							<a class="navbar-brand" href="index.html"> <span
								class="fa fa-align-right"></span> Cactus <span class="logo">Learning
									Every Where</span></a>
						</div>
						<p>提供共類型知識影片，隨時隨地的學習</p>
						<div class="main-social-footer-29 mt-md-4 mt-3">
							<a href="#facebook" class="facebook"><span
								class="fa fa-facebook"></span></a> <a href="#twitter"
								class="twitter"><span class="fa fa-twitter"></span></a> <a
								href="#instagram" class="instagram"><span
								class="fa fa-instagram"></span></a> <a href="#linkedin"
								class="linkedin"><span class="fa fa-linkedin"></span></a>
						</div>
					</div>

					<div
						class="col-lg-4 col-md-6 footer-list-29 footer-1 pr-lg-5 mt-md-0 mt-5">
						<h6 class="footer-title-29">Contact Info</h6>
						<p class="mb-2">Address : 台北市大安區復興北路一段</p>
						<p class="mb-2">
							Phone Number : <a href="tel:+1(21) 234 4567">(02) 2345 6789</a>
						</p>
						<p class="mb-2">
							Email : <a href="mailto:info@example.com">info@example.com</a>
						</p>
						<p>
							Support : <a href="mailto:info@support.com">info@support.com</a>
						</p>
					</div>

					<div
						class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-2 mt-lg-0 mt-5">
						<ul>
							<h6 class="footer-title-29">Knowledge</h6>
							<li><a href="#url">Coding</a></li>
							<li><a href="#url">Sport</a></li>
							<li><a href="#url">Music</a></li>
							<li><a href="#url">Economy</a></li>
							<li><a href="#url">Photo</a></li>
						</ul>
					</div>

					<div
						class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-2 mt-lg-0 mt-5">
						<ul>
							<h6 class="footer-title-29">Company</h6>
							<li><a href="about.html"> About company</a></li>
							<li><a href="index.html#blog">Latest Blog posts</a></li>
							<li><a href="index.html#gallery">Our Gallery </a></li>
							<li><a href="#vision">Vision to future</a></li>
							<li><a href="contact.html">Get in touch</a></li>
						</ul>
					</div>

				</div>

			</div>
		</div>
		<!-- copyright -->
		<section class="w3l-copyright text-center">
			<div class="container">
				<p class="copy-footer-29">
					© 2021 Cactus. Learning Every Where. Design by <a
						href="https://w3layouts.com/" target="_blank"> W3Layouts</a>
				</p>
			</div>
			

			<!-- move top -->
			<button onclick="topFunction()" id="movetop" title="Go to top">
				&#10548;</button>


    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- /move top -->
    </section>
    <!-- //copyright -->
    </footer>
    <!-- //footer -->


    <!-- Template JavaScript -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/theme-change.js"></script>

    <!-- libhtbox -->
    <script src="${pageContext.request.contextPath}/js/lightbox-plus-jquery.min.js"></script>
    <!-- libhtbox -->

    <!-- banner slick slider -->
    <script src="${pageContext.request.contextPath}/js/slick.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
    <!-- //banner slick slider -->

    <!-- magnific popup -->
    <script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
    <script>


        $(document).ready(function () {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',

                fixedContentPos: false,
                fixedBgPos: true,

                overflowY: 'auto',

                closeBtnInside: true,
                preloader: false,

                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

            $('.popup-with-move-anim').magnificPopup({
                type: 'inline',

                fixedContentPos: false,
                fixedBgPos: true,

                overflowY: 'auto',

                closeBtnInside: true,
                preloader: false,

                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-slide-bottom'
            });
        });
    </script>
    <!-- //magnific popup -->

    <!-- script for tesimonials carousel slider -->
    <script src="${pageContext.request.contextPath}/js/owl.carousel.js"></script>

    <script>
        $(document).ready(function () {
            $("#owl-demo1").owlCarousel({
                loop: true,
                margin: 20,
                nav: false,
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                        nav: false
                    },
                    768: {
                        items: 1,
                        nav: false
                    },
                    1000: {
                        items: 1,
                        nav: false,
                        loop: false
                    }
                }
            })
        })
    </script>
    <!-- //script for tesimonials carousel slider -->

    <!-- disable body scroll which navbar is in active -->
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <!-- disable body scroll which navbar is in active -->

    <!--/MENU-JS-->
    <script>
        $(window).on("scroll", function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#site-header").addClass("nav-fixed");
            } else {
                $("#site-header").removeClass("nav-fixed");
            }
        });

        //Main navigation Active Class Add Remove
        $(".navbar-toggler").on("click", function () {
            $("header").toggleClass("active");
        });
        $(document).on("ready", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
            $(window).on("resize", function () {
                if ($(window).width() > 991) {
                    $("header").removeClass("active");
                }
            });
        });



        // test
        $(window).on("scroll", function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#test1").css("color","#5B5B5B");
            }
        });

        $(window).on("scroll", function () {
            var scroll = $(window).scrollTop();

            if (scroll <= 80) {
                $("#test1").css("color", "#fff");
            }
        });

        //test2
    //     $(window).on("hover", function (){
    //     $("#dropdownMenuLink").
    // });
    </script>

       




    <!--//MENU-JS-->

    <!-- Search -->
    <script>
        $('.control').click(function () {
            $('body').addClass('search-active');
            $('.input-search').focus();
        });

        $('.icon-close').click(function () {
            $('body').removeClass('search-active');
        });
    </script>
    <!-- //Search -->
    <script>
    
    	function fFirst(){
    	
    		myForm.idn.value="qqq000";
    		myForm.idp.value="haha7777";
    		
    	}
    	function s(){
        	
    		myForm.idn.value="qqq000";
    		myForm.idp.value="qqqq1234";
    		
    	}
    </script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    
 	
<!-- //    		window.onload=function(){ -->
<!-- // 	  var login = document.getElementById("test1"); -->
	  
<!-- // 	  var exampleModalCenter = document.getElementById("exampleModalCenter"); -->
	  
<!-- // 	  login.onclick = function(){ -->
<!-- // 		  var xhr = new XMLHttpRequest(); -->
<%-- // 		  xhr.open("GET","<c:url value='/testt' />", true); --%>
<!-- // 		  xhr.send(); -->
<!-- // 		    xhr.onreadystatechange = function(){ -->
<!-- // 		    	if (xhr.readyState == 4 && xhr.status == 200){ -->
<!-- 		    		/*exampleModalCenter.innerHTML =  /*"<div class='modal-dialog modal-dialog-centered' role='document'>"+*/ -->
<!-- // 		    										"<div class='modal-content'>"+ -->
<!-- // 		    										"<div class='modal-body'>"+ -->

<!-- // 		    				                        "<form class='login' method='post' action='loginCheck.controller' name='myForm'>"+ -->
<!-- // 		    				                        "<h1 class='hh1'>Login 登入</h1>"+ -->
<!-- // 		    				                        "<i  class='fas fa-user'></i> "+ -->
<!-- // 		    				                        "<input type='text' placeholder='Username 用戶名' name='username' id='idn' required/>"+ -->
<!-- // 		    				                        "<input type='password' placeholder='Password 密碼' name='password' id='idp' required/>"+ -->
<%-- // 		    				        				"<div style='color:#FF0000'>${e.msg}</div>"+ --%>
<!-- // 		    				        				"<input id='lg' type='submit' value='Login' />  "+ -->
<!-- // 		    				        				"<a id='a1' href="+"<c:url value='/forgotpassword'/>"+">Forgot Password ?</a> "+ -->
<%-- // 		    				        				"<a id='a2' href="+"${pageContext.request.contextPath}/signUpPage"+">Sign up</a>"+ --%>
<!-- // 		    				        				"<div>______________________________________</div>"+ -->
<!-- // 		    				        				"<input id='i1' type='submit' value='Login with Facebook'/>  "+ -->
<!-- // 		    				        				"<input id='i2' type='submit' value='Login with Google' onclick="+"location.href='http://localhost:8080/cactus/user'"+"/>"+ -->
<!-- // 		    				        				"<input id='yaya' type='button' value='一鍵登入' onclick='fFirst()'/>"+ -->
<!-- // 		    				        				"<img class='img2' src="+"<c:url value='/images/googleYAY.png'  />"+"/>"+ -->
<%-- // 		    				        				"<img class='img1' src='${pageContext.request.contextPath}/images/fb2_1.png' />"+ --%>
<!-- // 		    				        				"</form>"; -->
<!-- // 		    				        				"</div>"+ -->
<!-- // 		    				        				"</div>"+ -->
<!-- // 		    				        				"</div>"; -->
<!-- // 		    				        				} -->
<!-- // 		    				        				  <div id="div" style="color:#FF0000"></div> -->
		    				                           
		    				                          
		    				                          
		    				                          
		    				                          
		    				                         
		    				                          
		    				                          
		    				                          
		    				                          
		    				                        
		    				                       
<!-- // 		    				                        <div class="modal-footer">
<!-- // 		    				                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
<!-- // 		    				                          <button type="button" class="btn btn-primary">Save changes</button> -->
<!-- // 		    				                        </div> --> 
		    				                      
		    				                    
<!-- // 		    	} -->
<!-- // 		    } -->
<!-- // 	  } -->



</body>

</html>