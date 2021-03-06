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
<!-- <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link rel="stylesheet" href="<c:url value='/css/css03.css'  />">
<link rel="stylesheet" href="<c:url value='/css/profilekj1.css'  />">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
.radiodiv {
	-webkit-appearance: button;
	-moz-appearance: button;
	appearance: button;
}
</style>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="<c:url value='/css/style-starter.css'  />">
<script>
window.onload=function(){
			 var revenuemonth = document.getElementById("revenuemonth");
			 var ajaxmonth1 = document.getElementById("ajaxmonth1");
			 revenuemonth.onchange = function(){
				 var xhr = new XMLHttpRequest();
				 xhr.open("GET","<c:url value='/ajaxmonth' />", true);
				  xhr.send();
				    xhr.onreadystatechange = function(){
				    	if (xhr.readyState == 4 && xhr.status == 200){
				    		ajaxmonth1.innerHTML = findeachincome(xhr.responseText);
				    	}
				    }				 
			 }			 
			 function findeachincome(memberString){
				 var revenuemonthvalue = document.getElementById("revenuemonth").value;	
					var course = JSON.parse(memberString);
					var segment =  "<span>"+(parseInt(revenuemonthvalue,10)+1)+"???:"+"</span>"+"$"+course[parseInt(revenuemonthvalue,10)];
					return segment;				              
				}
}

</script>
</head>
<body>
	<div id="mySidebar" class="sidebar" onmouseover="toggleSidebar()"
		onmouseout="toggleSidebar()">
		<a class="navbar-brand" href="<c:url value='/toIndex'  />" id="test3">
			<span class="fa fa-align-right" style="color: green;"></span> <span
			style="margin-left: 23px;">Cactus</span>
		</a><br> <a href="<c:url value='/showYourProfile'  />"><i
			class="material-icons">account_circle</i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;????????????</span></a><br>
		<a href="<c:url value='/sessionRecord'  />"><i
			class="material-icons">pending_actions</i><span class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;????????????</a></span><br>
		<a href="<c:url value='/coursesList'  />"><i
			class="material-icons">menu_book</i><span class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;????????????<span></a><br>
		<a href="<c:url value='/income'  />"><i class="material-icons">paid</i><span
			class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;??????<span></a><br>
		<a href="<c:url value='/teacherVerify'  />"><i
			class="material-icons">school</i><span class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;????????????</span></a><br>
		<a href="#"><i class="material-icons">email</i><span
			class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;contact<span></a>
	</div>

	<div class="flex-container incomediv02"
		style="margin-left: 15%; margin-top: 5%;">
		<h2 style="font-size: 36px;">?????????: ${total} </h2>
		<h4 style="color: purple; font-size: 36px;">$ </h4>
	</div>


	<div style="margin-left:15%;width:25%;margin-top:30px;">
	<h2>??????????????????:</h2>
	<select id="revenuemonth" name="courseType" style="margin-top:20px">
				<option>???????????????</option>
				<option value="0">1???</option>
				<option value="1">2???</option>
				<option value="2">3???</option>
				<option value="3">4???</option>
				<option value="4">5???</option>
				<option value="5">6???</option>
				<option value="6">7???</option>
				<option value="7">8???</option>
				<option value="8">9???</option>
				<option value="9">10???</option>
				<option value="10">11???</option>
				<option value="11">12???</option>
			</select>
		<div style="font-size:30px; margin-top:20px;">
			<span>  </span>
			<span id="ajaxmonth1">

			</span>
			</div>
		<br>
		<br>
		<c:forEach var='a' items='${income}'>

			<div class="incomediv flex-container incomeborder">

				<!-- Portfolio Gallery Grid -->

				<div class="">
					<div class="introdiv-2">
						<div class="" style="height: 120px; width: 200px; padding: 10px;">
							<img src="<c:url value='/images/${a.image}' />"
								style="width: 100%" />
							<!-- 						<h3>name</h3> -->
							<!-- 						<h4>price</h4> -->
						</div>
					</div>
					<!-- END GRID -->
				</div>

				<div style="margin-left: 10%;">
					<h4>????????????: ${a.courseName}</h4>

					<h4 style="margin-top: 8px;">?????? ${a.price}</h4>

					<h4 style="margin-top: 8px;">????????????:${a.total}</h4>
				</div>

				<div class="flex-container incomeright">
					<h4>?????? :</h4>
					<h4 style="color: purple;">$  ${a.point}</h4>
				</div>

				<!-- END MAIN -->
			</div>
		</c:forEach>
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
						<p>???????????????????????????????????????????????????</p>
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
						<p class="mb-2">Address : ????????????????????????????????????</p>
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
					?? 2021 Cactus. Learning Every Where. Design by <a
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


	<!-- ??????????????? -->

	<script>
		var minikj1 = true;

		function toggleSidebar() {
			if (minikj1) {
				console.log("opening sidebar");
				document.getElementById("mySidebar").style.width = "250px";
				// 				document.getElementById("mainkj1").style.marginLeft = "250px";
				this.minikj1 = false;
			} else {
				console.log("closing sidebar");
				document.getElementById("mySidebar").style.width = "85px";
				//				document.getElementById("mainkj1").style.marginLeft = "85px";
				this.minikj1 = true;
			}
		}
	</script>

	<!-- ???????????????  ?????? -->

	<script>
		function cartAlert() {
			alert("??????????????????");
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