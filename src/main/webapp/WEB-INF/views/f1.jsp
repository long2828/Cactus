<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="1; url=<c:url value='/'  />">
<title>Forgotpassword</title>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>
<link rel='stylesheet' href="<c:url value='/css/forgotpassword.css'  />" />
<link rel='stylesheet' href="<c:url value='/css/style-starter.css'  />"/>   
</head>
<script type="text/javascript">
window.onload=function (){
	setTimeout("alert('信件已寄出')",600 )
	}

function fFirst(){		
	myForm.idn.value="cloud0958@gmail.com";	
}
</script>
<body style="background-color:#FCFCFC;">
<header id="site-header" class="fixed-top" style="background-color:	#7B7B7B">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-dark stroke">
                <h1>
                    <a class="navbar-brand" href="index.html">
                        <span></span> Cactus</a>
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
                    </span>
                </button>

                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav mx-lg-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="${pageContext.request.contextPath}/homeLoginPage"><span class="sr-only">(current)</span></a>
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
<!--                     full screen form controls -->
                    <i class='icon-close fa fa-close material-icons'></i>
                    <form action="error.html" method="GET" class='search-input'>
                        <input class='input-search' placeholder='Start Typing' type='text'>
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

                

              
                    <a class="fa fa-user-circle-o " id="test1" data-toggle="modal" data-target="#exampleModalCenter" 
                    style="font-size: 28px; color:#fff; padding:7px 0px 0px 13px ; "  ></i></a>
                      
                    
                  
                    
                
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content">
                        <!-- <div class="modal-header"> -->
                          <!-- <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5> -->
                          <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button> -->
                        <!-- </div> -->
<!--                         <div class="modal-body"> -->
<!--                         <form class="login" method="post" action="loginCheck.controller" name="myForm"> -->
<!--                           <h1 class="hh1">管理員登入</h1> -->
<!--                           <i  class="fas fa-user"></i>  -->
<!--                           <input type="text" placeholder="Username 用戶名" name="username" id="idn" required/> -->
<!--         				  <input type="password" placeholder="Password 密碼" name="password" id="idp" required/> -->
<%--         				  <div style="color:#FF0000">${e.msg}</div> --%>
<!--         				  <div id="div" style="color:#FF0000"></div> -->
<!--                           <input id="lg" type="submit" value="Login" />    -->
                         
<!--                           <div>______________________________________</div> -->
                          
<!--                           <input id="yaya" type="button" value="一鍵登入" onclick="fFirst()"/> -->
                          
<!--                         </form> -->
<!--                         </div> -->
                        <!-- <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                          <button type="button" class="btn btn-primary">Save changes</button>
                        </div> -->
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
	<div class="modal-body">
		<form class="login" method="get" action="<c:url value='/sendnewpassword'  />"
			name="myForm">
			<h1 class="hh1">找回密碼</h1>
					<div style="color: #FF0000; font-size:20px;">${e.msg}</div>
			<div>
				<input type="text" placeholder="輸入註冊信箱" name="email" id="idn" required style="width:300px;"/> 
                <span class="s2" id="emilsp"></span>
            </div>
											
					<input id="lg" type="submit" value="送出"/> 		
			
		<i id=fa1 class="far fa-envelope"></i> 
			
		</form>
			<input id="yaya" type="button" value="一鍵輸入" onclick="fFirst()" />
	</div>
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

</body>
</html>