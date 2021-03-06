<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />

<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/style-starterBack.css' />

</head>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 70%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: center;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}

button {
	border: 0;
	background-color: #FF2D2D;
	color: #fff;
	border-radius: 5px;
}

form {
	display: inline;
}
.cap3{
  position: absolute;
  margin-left:55%;
 }

#put {
	border: 0;
	background-color: #2894FF;
	color: #fff;
	border-radius: 5px;
}

#unblock {
	background-color: #00A600;
}

#ccc {
	margin: 120px 200px;
	color: black;
}
.capmonth{
width:100px;

}
</style>
<body>
	<header id="site-header" class="fixed-top"
		style="background-color: #7B7B7B">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-dark stroke">
				<h1>
					<a class="navbar-brand" href="index.html"> <span
						class="fa fa-align-right"></span> Cactus<span class="logo">Learning
							Everywhere</span></a>
				</h1>

				<!-- if logo is image enable this   
          <a class="navbar-brand" href="#index.html">
              <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
          </a> -->
				<button class="navbar-toggler  collapsed bg-gradient" type="button"
					data-toggle="collapse" data-target="#navbarTogglerDemo02"
					aria-controls="navbarTogglerDemo02" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon fa icon-expand fa-bars"></span> <span
						class="navbar-toggler-icon fa icon-close fa-times"></span> </span>
				</button>

				<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
					<ul class="navbar-nav mx-lg-auto">
						<li class="nav-item active"><a class="nav-link"
							href="${pageContext.request.contextPath}/homeLoginPage">??????????????????
								<span class="sr-only">(current)</span>
						</a></li>
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

				<!-- ??????????????? -->
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

				<!-- ????????????????????????
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
                            style="font-size: 28px; color:#fff; padding:7px 0px 0px 13px;" title="Login ??????"></i></a>
                </div> -->



				<div class="dropdown">
					<a class="fa fa-user-circle-o " id="test1" data-toggle="modal"
						data-target="#exampleModalCenter"
						style="font-size: 28px; color: #fff; padding: 7px 0px 0px 13px;"></i></a>



					<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<h5>
							<br>${sessionScope.cmemberBean.getName()}</h5>
						<a class="dropdown-item" href="<c:url value='/C_users'  />"><i
							class="far fa-address-card"></i> ????????????</a> <a class="dropdown-item"
							href="<c:url value='/C_members'  />"><i
							class="far fa-address-card"></i> ????????????</a> <a class="dropdown-item"
							href="<c:url value='/getAllCourse'  />"><i
							class="fas fa-money-check-alt"></i> ????????????</a> <a class="dropdown-item"
							href="<c:url value='/getAllSession'  />"><i
							class="fas fa-book"></i> ??????????????????</a> <a class="dropdown-item"
							href="<c:url value='/getRevenue'  />"><i class="fas fa-book"></i>
							????????????</a>
						<!--                       <a class="dropdown-item" href="#"><i class="fas fa-shopping-cart"></i> ?????????</a> -->
						<div class="out">
							<a class="dropdown-item" href="#"><i class="fas fa-door-open"></i>
								??????</a>
						</div>
					</div>
				</div>

				<div class="modal fade" id="exampleModalCenter" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalCenterTitle"
					aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content"></div>
					</div>
				</div>
			</nav>

		</div>
	</header>
	<div align='center' id="ccc">
		<h2>????????????</h2><br>
		<table border='1'>
<tr><th>??????????????????</th><th>?????????</th><th>?????????</th><th>??????</th><th>????????????</th><th>??????</th><th>??????</th></tr>
<c:forEach var='ss' items='${monthR}'>
  <tr> 	
  	 <td>${ss.orderId}</td>
     <td>${ss.getCactusBean().getName()}</td>
     <td>${ss.getCourseBean().getCactusBean().getName()}</td>
     <td>${ss.getCourseBean().getPrice()}???</td>
     <td>${ss.purchaseDate}</td>
     <td>${ss.score}??????</td>
     <td>${ss.appraise}</td>

 </tr>    
</c:forEach>
</table>
<br>
<h4 class="cap3">????????????:${total}???</h4>
<a href="<c:url value='/getRevenue'  />" style="color:black;" >?????????</a>

<%-- 		<a href="<c:url value='/'  />">?????????</a> <a --%>
<%-- 			href="<c:url value='/back'  />">???????????????</a> --%>
	</div>
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
	<!--     </section> -->
	<!-- //copyright -->
	<!--     </footer> -->
	<!-- //footer -->


	<!-- Template JavaScript -->
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
		$(window).on("scroll", function() {
			var scroll = $(window).scrollTop();

			if (scroll >= 80) {
				$("#site-header").addClass("nav-fixed");
			} else {
				$("#site-header").removeClass("nav-fixed");
			}
		});

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

		// test
		$(window).on("scroll", function() {
			var scroll = $(window).scrollTop();

			if (scroll >= 80) {
				$("#test1").css("color", "#5B5B5B");
			}
		});

		$(window).on("scroll", function() {
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
		$('.control').click(function() {
			$('body').addClass('search-active');
			$('.input-search').focus();
		});

		$('.icon-close').click(function() {
			$('body').removeClass('search-active');
		});
	</script>

	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>



</body>
</html>