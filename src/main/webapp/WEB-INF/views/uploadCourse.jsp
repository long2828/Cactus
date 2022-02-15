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
<link rel="stylesheet" href="<c:url value='/css/profilek02.css'  />">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
</style>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="<c:url value='/css/style-starter.css'  />">
</head>
<body>
	<div id="mySidebar" class="sidebar" onmouseover="toggleSidebar()"
		onmouseout="toggleSidebar()">
		<a class="navbar-brand" href="<c:url value='/toIndex'  />" id="test3"> <span
						class="fa fa-align-right" style="color:green;"></span> <span style="margin-left:23px;">Cactus</span></a><br>
    
        <a href="<c:url value='/showYourProfile'  />"><i class="material-icons">account_circle</i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;個人資料</span></a><br>
        <a href="<c:url value='/sessionRecord'  />"><i class="material-icons">pending_actions</i><span class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;購買紀錄</a></span><br>
        <a href="<c:url value='/coursesList'  />"><i class="material-icons">menu_book</i><span class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;課程管理<span></a><br> 
		<a href="<c:url value='/uploadCourse'  />"><i class="material-icons">file_upload</i><span class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;上傳課程<span></a><br> 
		<a href="<c:url value='/income'  />"><i class="material-icons">paid</i><span class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;收益<span></a><br> 
        <a href="#"><i class="material-icons">email</i><span class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;contact<span></a>
	</div>

	<h2 style="margin-top: 3%; margin-left: 10%; font-size: 48px;">影片上傳</h2>

	<div style="margin-top: 3%; margin-left: 10%; width: 50%;">
		<form action="<c:url value='/VideoTest' />" method="GET">
			
			<h4>Course Name:</h4>
			<input type='text' name='courseName' class='text' id='courseName'
				value=''>
				
				
			<h4>Course Type:</h4>	
			<select name="courseType">
				<option>請選擇您的課程類型</option>
				<option value="sport">sport</option>
				<option value="music">music</option>
				<option value="economy">economy</option>
				<option value="coding">coding</option>
				<option value="language">language</option>
				<option value="photography">photography</option>
			</select>

<br>
<br>
			<h4>Price:</h4>
			<input type='text' name='price' class='text' id='price'
				value=''>
				
				<h4>Description:</h4>
			<input type='text' name='description' class='text' id='description'
				value=''>

<!-- 			<h4>launched:</h4> -->


<!-- 			<input type='datetime-local' name='launched' class='text' -->
<!-- 				id='launched' value=''> -->
			<br>
			<br>
			<h4>Video:</h4>
			<br>

			<div style="margin-left: 10%;">
				<input type="file" name="video" id="video" value=""
					class="inputfile inputfile-1"
					data-multiple-caption="{count} files selected" multiple /> <label
					for="video"><svg xmlns="http://www.w3.org/2000/svg"
						width="20" height="17" viewBox="0 0 20 17">
						<path
							d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z" /></svg>
					<span>Choose a video&hellip;</span></label>
			</div>

<br>

			<!-- 			<div> -->
			<!-- 				<input id="video" type="file" name="video" class="inputfile" -->
			<%-- 					value="${video.path }" --%>
			<!-- 					data-multiple-caption="{count} files selected" multiple> <label -->
			<!-- 					for="video">Choose a video</label> -->
			<!-- 			</div> -->
<h4>Image:</h4>
			
			<div class="containerkj2" style="margin-left: 10%; margin-top: 50px;">
				<div class="wrapperkj2">
					<div class="imagekj2">
						<img src="" alt="">
					</div>
					<div class="contentkj2">
						<div class="iconkj2">
							<i class="fas fa-cloud-upload-alt"></i>
						</div>
						<div class="textkj2">No file chosen, yet!</div>
					</div>
					<div id="cancel-btn">
						<i class="fas fa-times"></i>
					</div>
					<div class="file-namekj2">File name here</div>
				</div>
				<!-- 		<button onclick="defaultBtnActive()" id="custom-btn">Choose a -->
				<!-- 			file</button> -->
				<div>
					<input id="default-btn" type="file" name="imgpath"
						class="inputfile" value=""> <label
						for="default-btn">Choose a image</label>
				</div>

			</div>




			<!-- 			<input type='file' name='imgpath' -->
			<%-- 				class='text' id='img' value='${video.image}'> --%>
			<button id='send' class="btnintroprice"
				style="width: 35%; margin-top: 50px;">Upload</button>

		</form>
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



	<!-- 上傳影片顯示名稱 -->

	<script>
		var inputs = document.querySelectorAll('.inputfile');
		Array.prototype.forEach
				.call(
						inputs,
						function(input) {
							var label = input.nextElementSibling, labelVal = label.innerHTML;

							input
									.addEventListener(
											'change',
											function(e) {
												var fileName = '';
												if (this.files
														&& this.files.length > 1)
													fileName = (this
															.getAttribute('data-multiple-caption') || '')
															.replace(
																	'{count}',
																	this.files.length);
												else
													fileName = e.target.value
															.split('\\').pop();

												if (fileName)
													label.querySelector('span').innerHTML = fileName;
												else
													label.innerHTML = labelVal;
											});
						});
	</script>






	<!-- 個人照片 -->
	<script>
		const wrapper = document.querySelector(".wrapperkj2");
		const fileName = document.querySelector(".file-namekj2");
		const defaultBtn = document.querySelector("#default-btn");
		const customBtn = document.querySelector("#custom-btn");
		const cancelBtn = document.querySelector("#cancel-btn i");
		const img = document.querySelector("img");
		let regExp = /[0-9a-zA-Z\^\&\'\@\{\}\[\]\,\$\=\!\-\#\(\)\.\%\+\~\_ ]+$/;
		function defaultBtnActive() {
			defaultBtn.click();
		}
		defaultBtn.addEventListener("change", function() {
			const file = this.files[0];
			if (file) {
				const reader = new FileReader();
				reader.onload = function() {
					const result = reader.result;
					img.src = result;
					wrapper.classList.add("activekj2");
				}
				cancelBtn.addEventListener("click", function() {
					img.src = "";
					wrapper.classList.remove("activekj2");
				})
				reader.readAsDataURL(file);
			}
			if (this.value) {
				let valueStore = this.value.match(regExp);
				fileName.textContent = valueStore;
			}
		});
	</script>



	<!-- 側邊選單單 -->

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