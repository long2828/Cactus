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

<link rel="stylesheet" href="<c:url value='/css/css03.css'  />">
<link rel="stylesheet" href="<c:url value='/css/profilekj1.css'  />">
<link rel="stylesheet" href="<c:url value='/css/profileandy.css'  />">
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/style-starterBack.css' />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="../js/jquery-3.3.1.min.js"></script>
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

#put {
	border: 0;
	background-color: #2894FF;
	color: #fff;
	border-radius: 5px;
}

#ccc {
	margin: 50px 200px;
	color: black;
}

#vvv {
	margin: 150px 0px 0px 0px;
	color: black;
}
/* input[type="date"]:before{ */
/* content:attr(placeholder); */
/* } */
/* input[type="date"].full:before{ */
/* content:""!important; */
/* } */
</style>
<script>
	$(document).ready(
			function() {
				var time = new Date();
				var day = ("0" + time.getDate()).slice(-2);
				var month = ("0" + (time.getMonth() + 1)).slice(-2);
				var hour = (time.getHours());
				var min = (time.getMinutes());
				var today = time.getFullYear() + "-" + (month) + "-" + (day)
						+ " " + (hour) + ":" + (min);
				$('#date_info').val(today);
			})
</script>


<body>
	<div id="mySidebar" class="sidebar" onmouseover="toggleSidebar()"
		onmouseout="toggleSidebar()">
		<a class="navbar-brand" href="<c:url value='/toIndex'  />" id="test3">
			<span class="fa fa-align-right" style="color: green;"></span> <span
			style="margin-left: 23px;">Cactus</span>
		</a><br> <a href="<c:url value='/showYourProfile'  />"><i
			class="material-icons">account_circle</i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;個人資料</span></a><br>
		<a href="<c:url value='/sessionRecord'  />"><i
			class="material-icons">pending_actions</i><span class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;購買紀錄</a></span><br>
		<a href="#"><i class="material-icons">email</i><span
			class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;課程管理<span></a><br>
		<a href="<c:url value='/uploadCourse'  />"><i
			class="material-icons">email</i><span class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;上傳課程<span></a><br>
		<a href="<c:url value='/income'  />"><i class="material-icons">email</i><span
			class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;收益<span></a><br>
		<a href="#"><i class="material-icons">email</i><span
			class="icon-text"></span>&nbsp;&nbsp;&nbsp;&nbsp;contact<span></a>
	</div>

	<div align='center' id="vvv">
		<video src="<c:url value='/video/${Foldername}'/>" controls
			width="800" height="500"></video>
	</div>
	<!-- 	<div align='center' id="ccc"> -->
	<%-- 		<h2>${videoname}</h2> --%>
	<!-- 		<hr> -->
	<!-- 		<table border='1'> -->
	<!-- 			<tr> -->
	<!-- 				<th>Name</th> -->
	<!-- 				<th>評分</th> -->
	<!-- 				<th>評價內容</th> -->
	<!-- 				<th>留言時間</th> -->
	<!-- 			</tr> -->
	<%-- 			<c:forEach var='mm' items='${getAppraiseList}'> --%>
	<!-- 				<tr> -->
	<%-- 					<td>${mm.getCactusBean().getName()}</td> --%>
	<%-- 					<td><c:choose> --%>
	<%-- 							<c:when test="${mm.score =='1'}"> --%>
	<!-- 								<img id="img111" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img222" class="i" -->
	<%-- 									src="<c:url value='/images/star2.gif'/>" /> --%>
	<!-- 								<img id="img333" class="i" -->
	<%-- 									src="<c:url value='/images/star2.gif'/>" /> --%>
	<!-- 								<img id="img444" class="i" -->
	<%-- 									src="<c:url value='/images/star2.gif'/>" /> --%>
	<!-- 								<img id="img555" class="i" -->
	<%-- 									src="<c:url value='/images/star2.gif'/>" /> --%>
	<!-- 								<br> -->
	<%-- 							</c:when> --%>
	<%-- 							<c:when test="${mm.score =='2'}"> --%>
	<!-- 								<img id="img111" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img222" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img333" class="i" -->
	<%-- 									src="<c:url value='/images/star2.gif'/>" /> --%>
	<!-- 								<img id="img444" class="i" -->
	<%-- 									src="<c:url value='/images/star2.gif'/>" /> --%>
	<!-- 								<img id="img555" class="i" -->
	<%-- 									src="<c:url value='/images/star2.gif'/>" /> --%>
	<!-- 								<br> -->
	<%-- 							</c:when> --%>
	<%-- 							<c:when test="${mm.score =='3'}"> --%>
	<!-- 								<img id="img111" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img222" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img333" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img444" class="i" -->
	<%-- 									src="<c:url value='/images/star2.gif'/>" /> --%>
	<!-- 								<img id="img555" class="i" -->
	<%-- 									src="<c:url value='/images/star2.gif'/>" /> --%>
	<!-- 								<br> -->
	<%-- 							</c:when> --%>
	<%-- 							<c:when test="${mm.score =='4'}"> --%>
	<!-- 								<img id="img111" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img222" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img333" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img444" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img555" class="i" -->
	<%-- 									src="<c:url value='/images/star2.gif'/>" /> --%>
	<!-- 								<br> -->
	<%-- 							</c:when> --%>

	<%-- 							<c:otherwise> --%>
	<!-- 								<img id="img111" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img222" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img333" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img444" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<img id="img555" class="i" -->
	<%-- 									src="<c:url value='/images/star1.gif'/>" /> --%>
	<!-- 								<br> -->
	<%-- 							</c:otherwise> --%>
	<%-- 						</c:choose></td> --%>
	<%-- 					<td>${mm.appraise}</td> --%>
	<%-- 					<td>${mm.appraiseDate}</td> --%>

	<%-- 					     <td>${mm.launched]}</td> --%>


	<!-- 				</tr> -->
	<%-- 			</c:forEach> --%>
	<!-- 		</table> -->
	<!-- 	</div> -->

	<br>
	<br>
	<br>


	<div style="margin-left: 30%; width: 30%;">
		<div class="flex-container">
			<img class="commentphoto"
				src="<c:url value='/images/${img}' />" />

			<form action="<c:url value='/saveScoreAndAppraise/${courseId}'/>"
				method="GET" class='comment-input' style="margin-left: 40px;">
				<h4>${c1.getName()}</h4>

				<div class="videostar01" id="qq" style="margin-top: 15px;">
					<!--  	    <p>單擊星星可評分 雙擊星星可重置</p> -->
					<img id="img111" class="i" src="<c:url value='/images/star2.gif'/>" />
					<img id="img222" class="i" src="<c:url value='/images/star2.gif'/>" />
					<img id="img333" class="i" src="<c:url value='/images/star2.gif'/>" />
					<img id="img444" class="i" src="<c:url value='/images/star2.gif'/>" />
					<img id="img555" class="i" src="<c:url value='/images/star2.gif'/>" /><br>
					<!--          <span id="score"></span>  -->
				</div>
				<div>
					<input type="text" id="scoretext" name="score"
						style="display: none" />
				</div>
				<div>
					<input type="datetime" name="appraiseDate" id="date_info"
						style="display: none" />
				</div>
				<div style="width: 450px;">
					<!-- 					<input type="text" class='input-comment' name="appraise" -->
					<!-- 						placeholder='請輸入評論' /> -->
					<textarea id="subject" name="appraise"
						placeholder="Write ypur comment.."
						style="height: 100px; margin-top: 10px;"></textarea>

				</div>

				<!-- 				<div> -->
				<!-- 					<input type="submit" class='input-comment' value='送出'> -->
				<!-- 				</div> -->

				<div style="float: right;">
					<input id="default-btn" type="submit" name="imgpath"
						class="inputfile" value=""> <label for="default-btn">submit</label>
				</div>

			</form>
		</div>

	</div>





	<hr>
	<h2 style="margin-left: 30%;">評論區</h2>
	<div id="ccc" style="padding: 10px;margin-left: 30%;">

		<c:forEach var='mm' items='${getAppraiseList}'>
			<div class="flex-container videocommentdiv">

				<div>
					<img class="commentphoto"
						src="<c:url value='/images/${mm.getCactusBean().getPhotopath()}' />" />
				</div>

				<div style="margin-left: 20px;">
					<h4>${mm.getCactusBean().getName()}</h4>
					<p>${mm.appraiseDate}</p>
					<div style="margin-top: 5px;">
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
					</div>
					<div style="margin-top: 10px;">
						<p>${mm.appraise}</p>
					</div>


				</div>


			</div>
			<br>
			<br>
		</c:forEach>


	</div>

	<!-- 星星 評論 By Chester -->
	<%-- "<c:url value='images/star1.gif'/>" --%>
	<!-- 	<form align="center" -->
	<%-- 		action="<c:url value='/saveScoreAndAppraise/${courseId}'/>" --%>
	<!-- 		method="GET" class='comment-input'> -->

	<!-- 		<div align="center" id="qq"> -->
	<!-- 			<!--  	    <p>單擊星星可評分 雙擊星星可重置</p> -->
	
	<%-- 			<img id="img111" class="i" src="<c:url value='/images/star2.gif'/>" /> --%>
	<%-- 			<img id="img222" class="i" src="<c:url value='/images/star2.gif'/>" /> --%>
	<%-- 			<img id="img333" class="i" src="<c:url value='/images/star2.gif'/>" /> --%>
	<%-- 			<img id="img444" class="i" src="<c:url value='/images/star2.gif'/>" /> --%>
	<%-- 			<img id="img555" class="i" src="<c:url value='/images/star2.gif'/>" /><br> --%>
	<!-- 			<!--          <span id="score"></span>  -->
	
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<input type="text" id="scoretext" name="score" style="display: none" /> -->
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<input type="datetime" name="appraiseDate" id="date_info" -->
	<!-- 				style="display: none" /> -->
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<input type="text" class='input-comment' name="appraise" -->
	<!-- 				placeholder='請輸入評論' /> -->
	<!-- 		</div> -->

	<!-- 		<div> -->
	<!-- 			<input type="submit" class='input-comment' value='送出'> -->
	<!-- 		</div> -->

	<!-- 	</form> -->


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

	<script>
		$("#qq img").hover(
				function() {
					console.log("hover");
					$(this).prop("src", "<c:url value='/images/star1.gif'/>")
							.prevAll().prop("src",
									"<c:url value='/images/star1.gif'/>");
					slideNum = $(this).index();
					$("#scoretext").val((slideNum + 1));
					console.log(slideNum);
				},
				function() {
					$(this).prop("src", "<c:url value='/images/star2.gif'/>")
							.prevAll().prop("src",
									"<c:url value='/images/star2.gif'/>");
					$("#scoretext").val("");
				})

		$("#qq img").click(
				function() {
					$(this).prop("src", "<c:url value='/images/star1.gif'/>")
							.prevAll().prop("src",
									"<c:url value='/images/star1.gif'/>")
					$("#scoretext").val((slideNum + 1));
					console.log(slideNum);
					$(this).unbind().prevAll().unbind().nextAll().unbind();
				})

		$("div").dblclick(function() {
			location.reload();
		})
	</script>
</body>
</html>



