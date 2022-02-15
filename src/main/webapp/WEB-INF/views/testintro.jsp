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

<link rel="stylesheet" href="<c:url value='/css/css03.css'  />">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
#more {
	display: none;
}
</style>
<link rel="stylesheet" href="<c:url value='/css/style-starter.css'  />">
</head>
<body>

	<header id="site-header" class="fixed-top"
		style="background-image:url(${pageContext.request.contextPath}/images/title.png)">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-dark stroke">
				<h1>
					<a class="navbar-brand" href="<c:url value='/homeLoginPage/'/>"
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

				<a href="login.html"><i class="fa fa-user-circle-o" id="test1"
					style="font-size: 28px; color: #fff; padding: 7px 0px 0px 13px;"
					title="Login 登入"></i></a>

			</nav>
		</div>
	</header>

	<div>
		<div class="introbox1">
			<!-- 			<div style="margin-left:20%;"> -->
			<!-- 				<span>軟體編程</span> <span> > </span> <span>python</span> -->
			<!-- 			</div> -->

			<br>

	

			<div class="introbox2">
				<h2 style="color: white;">${course.courseName}</h2>
				<p style="color: white;">${course.courseDescription}</p>
<!-- 				<p style="color: white;">Brain</p> -->
			</div>
			<!-- 			<div class="box2"> -->
			<%-- 				<img class="img11" src="<c:url value='/images/python03.jpg' />" /> --%>
			<!-- 			</div> -->

			<div class="introbuy introdiv-2">
				<div>
					<div style="background-color: white;">
						<img src="<c:url value='/images/${images}' />"
							style="width: 100%">
						<div style="margin-left: 10%; padding: 10px;">
							<h2>$ ${course.price}</h2>
							<p>${course.course_type }</p>
							<p>testtest321321</p>
							<p>example@example.com</p>
						</div>
						<p style="text-align: center; padding: 10px;">
							<button class="btnintroprice">加入購物車</button>
						</p>
					</div>
				</div>

			</div>

		</div>
	</div>



	<div class="introdiv introdiv-2">

		<h2 style="margin-top: 6px; margin-left: 6px;">您將會學到</h2>
		<br>

		<ol>
			<li>${course.point} </li>
			
		</ol>
	</div>

	<div style="margin-left: 20%; margin-top: 30px;">
		<h2>要求</h2>
		<ol>
			<li>${course.requiry}</li>
		</ol>
	</div>

	<div style="margin-left: 20%; margin-top: 30px; width: 35%;">
		<h2>說明</h2>
		<br>
		<p class="introp">
			 <span id="dots">${course.coursedetail}</span><span
				id="more">
		</p>
		<button class="btnreadmore btnintro" onclick="readmorefunction()"
			id="myBtn">Read more</button>


	</div>
	<br>
	<div class="introteacher">
		<h2>教師</h2>
		<br>
		<p class="teachername">  ${course.cactusBean.username}</p>
		<br>
		<div class="flex-container">
			<div>
				<img class="imgteacher" src="<c:url value='/images/andy001.jpg' />" />
			</div>

			<div style="margin-left: 35px;">

				<div class="flex-container">
					<img class="littleimg" src="<c:url value='/images/star.png' />" />
					<p style="margin-left: 15px;">教師評等</p>
					<p class="pcolor1" style="margin-left: 5px;"> ${score} </p>
				</div>
				<div class="flex-container">
					<img class="littleimg" src="<c:url value='/images/medal.png' />" />
					<p class="pcolor1" style="margin-left: 15px;"> ${appraise}</p>
					<p style="margin-left: 5px;">則評論</p>
				</div>
				<div class="flex-container">
					<img class="littleimg"
						src="<c:url value='/images/user-group.png' />" />
					<p class="pcolor1" style="margin-left: 15px;"> ${courseId} </p>
					<p style="margin-left: 5px;">位學生</p>
				</div>
				<div class="flex-container">
					<img class="littleimg"
						src="<c:url value='/images/play-button.png' />" />
					<p class="pcolor1" style="margin-left: 15px;"> ${USER_ID} </p>
					<p style="margin-left: 5px;">部影片</p>
				</div>

			</div>
		</div>
		<br>
		<h4>教師簡介</h4>
		<br>
		<p>在面試中遇到自我介紹的環節，經常不知道要說什麼，或是說什麼都感覺尷尬嗎？超過 9 成的企業都會在面試的第一關中，請求職者用
			30 秒到 3 分鐘不等的時間自我介紹，而如何在短短的時間內用自我介紹抓住 HR 與面試官的注意力，提高面試的錄取機率</p>

	</div>
	<br>
	<br>
	<div class="introteacher">
		<h2>學生意見及反饋</h2>
		<br> <br>
		<div class="flex-container">

			<div style="margin-top: 30px;">
				<p class="ratingp" style="padding: 10px;"> 4.8</p>
				<span class="fa fa-star checked"></span> <span
					class="fa fa-star checked"></span> <span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span> <span class="fa fa-star"></span>
				<p style="text-align: center;">課程評等</p>
			</div>
			<div class="raterow">
				<div class="rateside">
					<div>5 star</div>
				</div>
				<div class="ratemiddle">
					<div class="bar-container">
						<div class="bar-5"></div>
					</div>
				</div>
				<div class="rateside rateright">
					<div>8</div>
				</div>
				<div class="rateside">
					<div>4 star</div>
				</div>
				<div class="ratemiddle">
					<div class="bar-container">
						<div class="bar-4"></div>
					</div>
				</div>
				<div class="rateside rateright">
					<div>4</div>
				</div>
				<div class="rateside">
					<div>3 star</div>
				</div>
				<div class="ratemiddle">
					<div class="bar-container">
						<div class="bar-3"></div>
					</div>
				</div>
				<div class="rateside rateright">
					<div>2</div>
				</div>
				<div class="rateside">
					<div>2 star</div>
				</div>
				<div class="ratemiddle">
					<div class="bar-container">
						<div class="bar-2"></div>
					</div>
				</div>
				<div class="rateside rateright">
					<div>1</div>
				</div>
				<div class="rateside">
					<div>1 star</div>
				</div>
				<div class="ratemiddle">
					<div class="bar-container">
						<div class="bar-1"></div>
					</div>
				</div>
				<div class="rateside rateright">
					<div>3</div>
				</div>
			</div>
		</div>
	</div>


	<div class="introteacher">
		<h2>評論</h2>
		<br>
<c:forEach var='mm' items='${QQ}'>
		<div class="flex-container" style="border-bottom:2px solid gray;margin-top:25px;">
			<img class="commentphoto" src="<c:url value='/images/${mm.getCactusBean().getPhotopath()}' />" />
			<div style="margin-left:25px;">
				<p style="font-weight: bold;">${mm.getCactusBean().getUsername()}</p>
				<c:choose>
							<c:when test="${mm.score =='1'}">
								<img id="img111" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img222" class="i"
									src="<c:url value='/images/star2.gif'/>" />
								<img id="img333" class="i"
									src="<c:url value='/images/star2.gif'/>" />
								<img id="img444" class="i"
									src="<c:url value='/images/star2.gif'/>" />
								<img id="img555" class="i"
									src="<c:url value='/images/star2.gif'/>" />
								<br>
							</c:when>
							<c:when test="${mm.score =='2'}">
								<img id="img111" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img222" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img333" class="i"
									src="<c:url value='/images/star2.gif'/>" />
								<img id="img444" class="i"
									src="<c:url value='/images/star2.gif'/>" />
								<img id="img555" class="i"
									src="<c:url value='/images/star2.gif'/>" />
								<br>
							</c:when>
							<c:when test="${mm.score =='3'}">
								<img id="img111" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img222" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img333" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img444" class="i"
									src="<c:url value='/images/star2.gif'/>" />
								<img id="img555" class="i"
									src="<c:url value='/images/star2.gif'/>" />
								<br>
							</c:when>
							<c:when test="${mm.score =='4'}">
								<img id="img111" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img222" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img333" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img444" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img555" class="i"
									src="<c:url value='/images/star2.gif'/>" />
								<br>
							</c:when>

							<c:otherwise>
								<img id="img111" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img222" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img333" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img444" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<img id="img555" class="i"
									src="<c:url value='/images/star1.gif'/>" />
								<br>
							</c:otherwise>
						</c:choose>

						
				
				<br>
				<p>${mm.appraise}</p>

			</div>

		</div>
</c:forEach>
		
		
		
		
<!-- 		<div class="flex-container" style="border-bottom:2px solid gray;margin-top:25px;"> -->
<%-- 			<img class="commentphoto" src="<c:url value='/images/user-group.png' />" /> --%>
<!-- 			<div style="margin-left:25px;"> -->
<!-- 				<p style="font-weight: bold;">username</p> -->
<!-- 				<span class="fa fa-star checked"></span> -->
<!-- 				<span class="fa fa-star checked"></span>  -->
<!-- 				<span class="fa fa-star checked"></span> -->
<!-- 				<span class="fa fa-star"></span>  -->
<!-- 				<span class="fa fa-star"></span> -->
<!-- 				<br> -->
<!-- 				<p>我覺得這老師超讚</p> -->

<!-- 			</div> -->

<!-- 		</div> -->
<!-- 		<div class="flex-container" style="border-bottom:2px solid gray;margin-top:25px;"> -->
<%-- 			<img class="commentphoto" src="<c:url value='/images/user-group.png' />" /> --%>
<!-- 			<div style="margin-left:25px;"> -->
<!-- 				<p style="font-weight: bold;">username</p> -->
<!-- 				<span class="fa fa-star checked"></span> -->
<!-- 				<span class="fa fa-star checked"></span>  -->
<!-- 				<span class="fa fa-star checked"></span> -->
<!-- 				<span class="fa fa-star"></span>  -->
<!-- 				<span class="fa fa-star"></span> -->
<!-- 				<br> -->
<!-- 				<p>我覺得這老師超讚</p> -->

			</div>

		</div>
	</div>
	<br>
	<br>
	<br>

	<footer class="w3l-footer-29-main">
    <div class="footer-29 py-5">
      <div class="container py-md-4">
  
        <div class="row footer-top-29">
  
          <div class="col-lg-4 col-md-6 footer-list-29 footer-1">
            <div class="footer-logo mb-4">
              <a class="navbar-brand" href="index.html">
                <span class="fa fa-align-right"></span> Cactus <span class="logo">Learning Every Where</span></a>
            </div>
            <p>提供共類型知識影片，隨時隨地的學習</p>
            <div class="main-social-footer-29 mt-md-4 mt-3">
              <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
              <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
              <a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
              <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
            </div>
          </div>
  
          <div class="col-lg-4 col-md-6 footer-list-29 footer-1 pr-lg-5 mt-md-0 mt-5">
            <h6 class="footer-title-29">Contact Info </h6>
            <p class="mb-2">Address : 台北市大安區復興北路一段</p>
            <p class="mb-2">Phone Number : <a href="tel:+1(21) 234 4567">(02) 2345 6789</a></p>
            <p class="mb-2">Email : <a href="mailto:info@example.com">info@example.com</a></p>
            <p>Support : <a href="mailto:info@support.com">info@support.com</a></p>
          </div>
  
          <div class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-2 mt-lg-0 mt-5">
            <ul>
              <h6 class="footer-title-29">Knowledge</h6>
              <li><a href="#url">Coding</a></li>
              <li><a href="#url">Sport</a></li>
              <li><a href="#url">Music</a></li>
              <li><a href="#url">Economy</a></li>
              <li><a href="#url">Photo</a></li>
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
    </div> 
    <!-- copyright -->
    <section class="w3l-copyright text-center">
      <div class="container">
        <p class="copy-footer-29">© 2021 Cactus. Learning Every Where. Design by <a href="https://w3layouts.com/"
            target="_blank">
            W3Layouts</a></p>
      </div> -->
      
      


    <!-- move top -->
     <button onclick="topFunction()" id="movetop" title="Go to top">
        &#10548;
     </button> 



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





	<!-- READ MORE Function -->

	<script>
		function readmorefunction() {
			var dots = document.getElementById("dots");
			var moreText = document.getElementById("more");
			var btnText = document.getElementById("myBtn");

			if (dots.style.display === "none") {
				dots.style.display = "inline";
				btnText.innerHTML = "Read more";
				moreText.style.display = "none";
			} else {
				dots.style.display = "none";
				btnText.innerHTML = "Read less";
				moreText.style.display = "inline";
			}
		}
	</script>



	<!-- 下拉式選單  下層 -->

	<script>
		function cartAlert() {
			alert("已加入購物車");
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