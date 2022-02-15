<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Corp Vision - Corporate Category Bootstrap Responsive
	Template | Home : W3layouts</title>

<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap"
	rel="stylesheet">

<!-- Template CSS -->
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- 購物車圖片 -->
<link
	href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet" href="<c:url value='/css/css03.css'  />">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value='/css/indexcart.css'/>">
<style>
</style>
<link rel="stylesheet" href="<c:url value='/css/style-starter.css'  />">
</head>
<body>
	<header id="site-header" class="fixed-top"
		style="background-image:url(${pageContext.request.contextPath}/images/title.png)">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-dark stroke">
				<h1>
					<a class="navbar-brand" href="<c:url value='/toIndex'/>"
						id="test3"> <span class="fa fa-align-right"></span> Cactus<span
						class="logo">Learning Everywhere</span>
					</a>
				</h1>


				<button class="navbar-toggler  collapsed bg-gradient" type="button"
					data-toggle="collapse" data-target="#navbarTogglerDemo02"
					aria-controls="navbarTogglerDemo02" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon fa icon-expand fa-bars"></span> <span
						class="navbar-toggler-icon fa icon-close fa-times"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
					<ul class="navbar-nav mx-lg-auto">

						<li class="nav-item @@about__active"><a class="nav-link"
							href="<c:url value='/toIndex' />">Home</a></li>
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
					<form action="error.html" method="GET" class='search-input'>
						<input class='input-search' placeholder='Start Typing' type='text'>
					</form>
				</div>
				<!-- 			購物車icon		 -->
				<div class="dropdown">
					<i class="far fa-shopping-cart" data-toggle="modal"
						data-target="#exampleModalCenter"
						style="font-size: 30px; color: #fff; padding: 7px 0px 0px 13px;"
						id="test2"></i>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<div id="aabbabc" class="dropdown-item">
							<i class="fas fa-shopping-cart" style="font-size: 29px;"></i>
							我的購物清單
						</div>
						<c:forEach var='mm' items='${cactus}'>
							<div class="cartlistbox111">

								<div class="cartlistbox222">
									<img class="cartlistimg11"
										src="<c:url value='/images/${mm.getCourseBean().getImage()}' />" />
								</div>
								<div class="cartlistbox333">

									<h6>${mm.getCourseBean().getCourseName()}</h6>
									<p class="cartlistdiv">${mm.getCourseBean().getPoint()}</p>
									<p></p>
									<!-- 				<span><img class="img22" -->
									<%-- 					src="<c:url value='/images/lilstar.png' />" />(886)</span> --%>
									<p>total:${mm.getCourseBean().getVideotime()}</p>


									<form action="<c:url value='/deletfree/${mm.getCartId()}' />"
										method="get" class="sp01">
										<!-- 					<input type="hidden" name="_method" value="delete"/> -->
										<!-- 					<input type="hidden" name="_method" value="" /> -->
										<%-- 					<div style="color:#FF0000">${e.msge}</div> --%>
										<button class="cartlistbtndelete">移除購物車</button>
										<%--       		<input type="button" value="刪除" onclick="location.href='<c:url value='/C_members'  />'"> --%>
									</form>

									<!-- 				<span class="sp01"><button class="btnbuy" id=addcart -->
									<!-- 						onclick="cartAlert();">加入購物車</button></span> -->
									<p class="price">NT$${mm.getCourseBean().getPrice()}</p>

								</div>
							</div>
						</c:forEach>

						<a id="abbabbabbac" class="dropdown-item"
							href="<c:url value='/testbuy' />"><i
							class="fas fa-money-check-alt"></i> 結帳</a>
					</div>

				</div>
				<div class="dropdown">
				<div class="cap10">

					<img
						src="<c:url value='/images/${sessionScope.cactusBean.getPhotopath()}' />"
						id="test1212" data-toggle="modal"
						data-target="#exampleModalCenter" style="font-size: 28px;" />
						</div>



					<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<c:choose>
							<c:when test="${cactusBean.getName()==null}">
								<h5>
									Hello<br>${sessionScope.cactusBean.getUsername()}</h5>
							</c:when>
							<c:otherwise>
								<h5>
									Hello<br>${sessionScope.cactusBean.getName()}</h5>
							</c:otherwise>
						</c:choose>
						<a class="dropdown-item" href="<c:url value='/showYourProfile'  />">
							<i class="far fa-address-card"></i> 個人資料
						</a> <a class="dropdown-item" href="#"><i
							class="fas fa-money-check-alt"></i> 付款方式</a> <a class="dropdown-item"
							href="#"><i class="fas fa-book"></i> 我的課程</a> <a
							class="dropdown-item" href="#"><i
							class="fas fa-shopping-cart"></i> 購物車</a>
						<div class="out">
							<a class="dropdown-item" href="<c:url value='/logout' />"><i
								class="fas fa-door-open"></i> 登出</a>
						</div>
					</div>
				</div>
			</nav>

		</div>
	</header>

	<div class="topnav001" style="margin-top: 120px;">
		<a href="<c:url value='/typeofcoding'  />">Coding</a> <a
			href="<c:url value='/typeofsport'  />">Sport</a> <a
			href="<c:url value='/typeofmusic'  />">Music</a> <a
			href="<c:url value='/typeoflan'  />">Language</a> <a
			href="<c:url value='/typeofeconomy'  />">Economy</a> <a
			class="active" href="<c:url value='/typeoffree'  />">Photo</a>
	</div>

	<br>
	<br>
	<h2 style="margin-left: 28%;">設計 課程</h2>
	<br>
	<br>

	<!--   <div class="sidenav" style="margin-top: 500px;"> -->
	<!--     <a href="#about">About</a> -->
	<!--     <a href="#services" style="border-bottom: 2px solid rgb(177, 170, 170); color:rgb(161, 154, 154)">Search</a> -->
	<!--     <a href="#clients"  style="border-bottom: 2px solid rgb(177, 170, 170); color:rgb(161, 154, 154)">評分</a> -->
	<!--     <a href="#contact" style="border-bottom: 2px solid rgb(177, 170, 170); color:rgb(161, 154, 154)">主題</a> -->
	<!--     <a href="#contact" style="border-bottom: 2px solid rgb(177, 170, 170); color:rgb(161, 154, 154)">級別</a> -->
	<!--     <a href="#contact" style="border-bottom: 2px solid rgb(177, 170, 170); color:rgb(161, 154, 154)">語言</a> -->
	<!--     <a href="#contact" style="border-bottom: 2px solid rgb(177, 170, 170); color:rgb(161, 154, 154)">價格</a> -->
	<!--     <a href="#contact" style="border-bottom: 2px solid rgb(177, 170, 170); color:rgb(161, 154, 154)">字幕</a> -->
	<!--     <a href="#contact" style="border-bottom: 2px solid rgb(177, 170, 170); color:rgb(161, 154, 154)">影片時長</a> -->
	<!--     <button class="dropdown-btn" style="border-bottom: 2px solid rgb(177, 170, 170);color:rgb(161, 154, 154)">星數 -->
	<!--       <i class="fa fa-caret-down"></i> -->
	<!--     </button> -->
	<!--     <div class="dropdown-container"> -->
	<!--       <a href="#">1</a> -->
	<!--       <a href="#">2</a> -->
	<!--       <a href="#">3</a> -->
	<!--       <a href="#">4</a> -->
	<!--       <a href="#">5</a> -->
	<!--     </div> -->

	<!--   </div> -->
	<c:forEach var='mm' items='${cactusCourse}'>
		<div class="box1">

			<div class="box2">
				<a href="<c:url value='/course/${mm.courseId}'  />"> <img
					class="img11" src="<c:url value='/images/${mm.image}'  />" />
				</a>
			</div>
			<div class="box3">

				<h2>${mm.courseName}</h2>
				<p>${mm.courseDescription}</p>
				<p></p>
				<span>購買人數: ${mm.total}</span>
				<p>${mm.videotime}</p>


				<!-- //讓課程版面上 如是老師本人看到 會show 我是上傳者 -->
				<c:set var="isBuy" value="false" />
				<c:forEach var='aa' items='${cactusBean.sessionBeans}'>
					<c:if test="${mm.courseId == aa.courseBean.courseId}">
						<c:set var="isBuy" value="true" />
					</c:if>
				</c:forEach>
				<c:choose>

					<c:when test="${ cactusBean.userId == mm.cactusBean.userId}">

						<form action="<c:url value='/typeoffree/${mm.courseId}' />"
							method="get" class="sp01">
							<div style="color: #FF0000">${e.msge}</div>
							<button onclick="cartAlert();" class="btnbuyupload" disabled="disabled"
								style="">你是上傳者</button>
							<!-- 				<p>已擁有</p> -->
						</form>
					</c:when>

					<c:when test="${isBuy == true}">
						<form action="<c:url value='/typeoffree/${mm.courseId}' />"
							method="get" class="sp01">
							<!-- 					<input type="hidden" name="_method" value="" /> -->
							<div style="color: #FF0000">${e.msge}</div>
							<button onclick="cartAlert();" class="btnbuyupload" disabled="disabled">已購買</button>
							<%--       		<input type="button" value="刪除" onclick="location.href='<c:url value='/C_members'  />'"> --%>
						</form>
					</c:when>



					<c:otherwise>

						<form action="<c:url value='/typeoffree/${mm.courseId}' />"
							method="get" class="sp01">
							<div style="color: #FF0000">${e.msge}</div>
							<button onclick="cartAlert();" id='aa' class="btnbuy" style="">加入購物車</button>
							<!-- 				<p>加入購物車</p> -->
						</form>
					</c:otherwise>


				</c:choose>
				<p class="price">NT$${mm.price}</p>

			</div>


		</div>
	</c:forEach>

	<!--   <div class="box1" style="margin-top: 150px;"> -->

	<!--     <div class="box2"> -->
	<%--       <img class="img1" src="<c:url value='/images/violin.png' />"/> --%>
	<!--      </div> -->
	<!--     <div class="box3"> -->
	<!--       <h2>Mastering Violin Scales Grade 1-3</h2> -->
	<!--       <p>A Play-along Series to Improve Your Playing!</p> -->
	<!--       <p>Chin Hwung 秦始皇</p> -->
	<%--       <span><img class="img2" src= "<c:url value='/images/lilstar.png' />" />(353)</span> --%>
	<!--       <p>total:72 hours </p> -->
	<!--       <span class="sp01"><button class="btnbuy">加入購物車</button></span> -->
	<!--       <p class="price">NT$1,850 </p> -->
	<!--     </div> -->

	<!--   </div> -->
	<!--   <div class="box1"> -->

	<!--     <div class="box2"> -->

	<%--       <img class="img1" src="<c:url value='/images/jazz.jpg/'  />" /> --%>
	<!--     </div> -->
	<!--     <div class="box3"> -->
	<!--       <h2>Drumming Into Jazz - Prepare for Jazz Band Audition</h2> -->
	<!--       <p>Designed to take a drummer with no Jazz experience and equip them with all of the fundamentals for playing in Jazz Band.</p> -->
	<!--       <p>Chin Hwung 秦始皇</p> -->
	<%--       <span><img class="img2" src="<c:url value='/images/lilstar.png/' />"/>(353)</span> --%>
	<!--       <p>total:72 hours </p> -->
	<!--       <span class="sp01"><button class="btnbuy">加入購物車</button></span> -->
	<!--       <p class="price">NT$1,850 </p> -->
	<!--     </div> -->

	<!--   </div> -->

	<!--   <div class="box1"> -->

	<!--     <div class="box2"> -->
	<%--       <img class="img1" src="<c:url value='/images/djay.jpg/' />"/> --%>
	<!--     </div> -->

	<!--     <div class="box3"> -->
	<!--       <h2>Learn How to Become a DJ with Traktor</h2> -->
	<!--       <p>Learn How to Become a DJ in no time. Including basic mixing techniques you can use with any DJ Software. With Captions!</p> -->
	<!--       <p>Chin Hwung 秦始皇</p> -->
	<%--       <span><img class="img2" src="<c:url value='/images/lilstar.png/' />"/>(353)</span> --%>
	<!--       <p>total:72 hours </p> -->
	<!--       <span class="sp01"><button class="btnbuy">加入購物車</button></span> -->
	<!--       <p class="price">NT$1,850 </p> -->
	<!--     </div> -->

	<!--   </div> -->
	<!--   <div class="box1"> -->

	<!--     <div class="box2"> -->
	<%--       <img class="img1" src="<c:url value='/images/guitar.png/'/>"/> --%>
	<!--     </div> -->

	<!--     <div class="box3"> -->
	<!--       <h2>The Professional Guitar Masterclass</h2> -->
	<!--       <p>Learn The Tools Used By The World's Top Professional Guitar Players.</p> -->
	<!--       <p>Chin Hwung 秦始皇</p> -->
	<%--       <span><img class="img2" src="<c:url value='/images/lilstar.png/'/>"/>(353)</span> --%>
	<!--       <p>total:72 hours </p> -->
	<!--       <span class="sp01"><button class="btnbuy">加入購物車</button></span> -->
	<!--       <p class="price">NT$1,850 </p> -->
	<!--     </div> -->

	<!--   </div> -->
	<!--   <div class="box1"> -->

	<!--     <div class="box2"> -->
	<%--       <img class="img1" src="<c:url value='/images/maxresdefault.jpg/'/>"/> --%>
	<!--     </div> -->

	<!--     <div class="box3"> -->
	<!--       <h2>Pianoforall - 'Classics By Ear' - Moonlight Sonata</h2> -->
	<!--       <p>An incredible new way to learn this timeless classic - from the creator of best selling piano course Pianoforall</p> -->
	<!--       <p>Chin Hwung 秦始皇</p> -->
	<%--       <span><img class="img2" src="<c:url value='/images/lilstar.png/'/>"/>(353)</span> --%>
	<!--       <p>total:72 hours </p> -->
	<!--       <span class="sp01"><button class="btnbuy">加入購物車</button></span> -->
	<!--       <p class="price">NT$1,850 </p> -->
	<!--     </div> -->


	<!--   </div> -->

	<!--   <div class="box1"> -->

	<!--     <div class="box2"> -->
	<%--       <img class="img1" src="<c:url value='/images/singing.jpg/'/>"/> --%>
	<!--     </div> -->

	<!--     <div class="box3"> -->
	<!--       <h2>Elite Singing Techniques - Phase I</h2> -->
	<!--       <p>Step by step singing system proven to develop great technique and vocal mastery, Results are immediate!</p> -->
	<!--       <p>Chin Hwung 秦始皇</p> -->
	<%--       <span><img class="img2" src="<c:url value='/images/lilstar.png/'/>"/>(353)</span> --%>
	<!--       <p>total:72 hours </p> -->
	<!--       <span class="sp01"><button class="btnbuy">加入購物車</button></span> -->
	<!--       <p class="price">NT$1,850 </p> -->
	<!--     </div> -->


	<!--   </div> -->
	<!-- 下拉式選單  下層 -->
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
			-->

			<!-- move top -->
			<button onclick="topFunction()" id="movetop" title="Go to top">
				&#10548;</button>



			<script>
				// When the user scrolls down 20px from the top of the document, show the button
				window.onscroll = function() {
					scrollFunction()
				};

				function scrollFunction() {
					if (document.body.scrollTop > 20
							|| document.documentElement.scrollTop > 20) {
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



	<script>
		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {
			scrollFunction()
		};
		//     提醒加入
		function cartAlert() {
			alert("已加入購物車");
		}

		function scrollFunction() {
			if (document.body.scrollTop > 20
					|| document.documentElement.scrollTop > 20) {
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
	<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/theme-change.js"></script>

	<!-- libhtbox -->
	<script
		src="${pageContext.request.contextPath}/js/lightbox-plus-jquery.min.js"></script>
	<!-- libhtbox -->

	<!-- banner slick slider -->
	<script src="${pageContext.request.contextPath}/js/slick.js"></script>
	<script src="${pageContext.request.contextPath}/js/script.js"></script>
	<!-- //banner slick slider -->

	<!-- magnific popup -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.popup-with-zoom-anim').magnificPopup({
				type : 'inline',

				fixedContentPos : false,
				fixedBgPos : true,

				overflowY : 'auto',

				closeBtnInside : true,
				preloader : false,

				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-zoom-in'
			});

			$('.popup-with-move-anim').magnificPopup({
				type : 'inline',

				fixedContentPos : false,
				fixedBgPos : true,

				overflowY : 'auto',

				closeBtnInside : true,
				preloader : false,

				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-slide-bottom'
			});
		});
	</script>
	<!-- //magnific popup -->

	<!-- script for tesimonials carousel slider -->
	<script src="${pageContext.request.contextPath}/js/owl.carousel.js"></script>

	<script>
		$(document).ready(function() {
			$("#owl-demo1").owlCarousel({
				loop : true,
				margin : 20,
				nav : false,
				responsiveClass : true,
				responsive : {
					0 : {
						items : 1,
						nav : false
					},
					768 : {
						items : 1,
						nav : false
					},
					1000 : {
						items : 1,
						nav : false,
						loop : false
					}
				}
			})
		})
	</script>
	<!-- //script for tesimonials carousel slider -->

	<!-- disable body scroll which navbar is in active -->
	<script>
		$(function() {
			$('.navbar-toggler').click(function() {
				$('body').toggleClass('noscroll');
			})
		});
	</script>
	<!-- disable body scroll which navbar is in active -->

	<!--/MENU-JS-->
	<script>
		// $(window).on("scroll", function () {
		//   var scroll = $(window).scrollTop();

		//   if (scroll >= 80) {
		//     $("#site-header").addClass("nav-fixed");
		//   } else {
		//     $("#site-header").removeClass("nav-fixed");
		//   }
		// });

		//Main navigation Active Class Add Remove
		$(".navbar-toggler").on("click", function() {
			$("header").toggleClass("active");
		});
		$(document).on("ready", function() {
			if ($(window).width() > 991) {
				$("header").removeClass("active");
			}
			$(window).on("resize", function() {
				if ($(window).width() > 991) {
					$("header").removeClass("active");
				}
			});
		});
	</script>





	<!--//MENU-JS-->

	<!-- Search -->
	<script>
		$('.control').click(function() {
			$('body').addClass('search-active');
			$('.input-search').focus();
		});

		$('.icon-close').click(function() {
			$('body').removeClass('search-active');
		});
	</script>
	<!-- //Search -->

	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>