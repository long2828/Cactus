<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<%--      <link rel='stylesheet' href='${pageContext.request.contextPath}/css/style-starter.css' />  --%>
    <link rel='stylesheet' href='${pageContext.request.contextPath}/css/profile.css' /> 
	
  <meta charset="UTF-8">
<!--   <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  
  <script>
  window.onload=function(){
	  var t = document.getElementById("t");
	  var p = document.getElementById("p");
	  var a = document.getElementById("a");
	  var b = document.getElementById("b");

	  var exhibitorright = document.getElementById("exhibitorright");
	  
	  b.onclick = function(){
		  var xhr = new XMLHttpRequest();
		  xhr.open("GET","<c:url value='/findCourse' />", true);
		  xhr.send();
		    xhr.onreadystatechange = function(){
		    	if (xhr.readyState == 4 && xhr.status == 200){
		    		exhibitorright.innerHTML = findCourse(xhr.responseText);
		    	}
		    }
	  }
	  
	  t.onclick = function() {
			var xhr = new XMLHttpRequest();
			xhr.open("GET", "<c:url value='/teacher' />", true);			              
			xhr.send();	
			  xhr.onreadystatechange = function() {
					if (xhr.readyState == 4 && xhr.status == 200) {	
// 						var abc = JSON.parse(xhr.responseText);
						
// 						exhibitorright.innerHTML = 
// 							abc.username + "<h3>'想成為老師嗎?'</h3><br>";					
// 					}else {
// 						alert("sad");

						exhibitorright.innerHTML = beTeacher(xhr.responseText);
						exhibitorright.innerHTML += "<a href='''<c:url value='/showTeacherProfile'  />'''><h2 class='h22'><button id ='w'>想</button></h2></a>";
						var w = document.getElementById("w");
// 						w.onclick = function() {
// 							  var xhr = new XMLHttpRequest();
// 								xhr.open("GET", "<c:url value='/information1' />", true);			              
// 								xhr.send();	
// 								  xhr.onreadystatechange = function() {
// 										if (xhr.readyState == 4 && xhr.status == 200) {	
// 											exhibitorright.innerHTML = personalInformation(xhr.responseText);
// // 											exhibitorright.innerHTML += "<h4>教師資格:是</h4>"
// 										}
// 						  	}
// 						  }						
					}					
			  }
			}	
	  p.onclick = function() {
		  var xhr = new XMLHttpRequest();
			xhr.open("GET", "<c:url value='/information' />", true);			              
			xhr.send();	
			  xhr.onreadystatechange = function() {
					if (xhr.readyState == 4 && xhr.status == 200) {	
						exhibitorright.innerHTML = personalInformation(xhr.responseText);
						var revise = document.getElementById("revise");
						revise.onclick = function(){
							xhr.open("GET", "<c:url value='/RevisePage' />", true);			              
							xhr.send();	
							xhr.onreadystatechange = function(){
								if (xhr.readyState == 4 && xhr.status == 200){
									exhibitorright.innerHTML = beforeReviseData(xhr.responseText);
									var reviseComplete = document.getElementById("reviseComplete");
// 									reviseComplete.onclick = function(){
// 										xhr.open("GET", "<c:url value='/RevisePage' />", true);			              
// 										xhr.send();
// 										xhr.onreadystatechange = function(){
// 										if (xhr.readyState == 4 && xhr.status == 200) {	
//  											exhibitorright.innerHTML = personalInformation(xhr.responseText);
// 										}
// 									}
									var passwordRevise = document.getElementById("passwordRevise");
									passwordRevise.onclick = function(){
										xhr.open("GET", "<c:url value='/RevisePage' />", true);			              
										xhr.send();	
										xhr.onreadystatechange = function(){
											if (xhr.readyState == 4 && xhr.status == 200){
												exhibitorright.innerHTML = "<h4>輸入新密碼</h4><input type='password' name='username' class='text' id='password'><br><br><br><h4>再次輸入密碼</h4><input type='password' name='username' class='text' id='password1'><br><br><br><button id ='afterPasswordRevise'>確定</button>";
												var afterPasswordRevise = document.getElementById("afterPasswordRevise");
												afterPasswordRevise.onclick = function(){
													var passwordValue = document.getElementById("password").value;
			 										var password1Value = document.getElementById("password1").value;
			 										
			 											
			 										var obj = {											   
			 											"password": passwordValue,
			  											};
			 										
			 										var xhr2 = new XMLHttpRequest();
			 										var url = "<c:url value='/p@ssW0rdRevisePage'  />";
			 										console.log(url);
			 										xhr2.open("PUT", url);
			 										xhr2.setRequestHeader("Content-Type", "application/json");
			 										xhr2.send(JSON.stringify(obj));
			 										xhr2.onreadystatechange = function(){
			 											if (xhr2.readyState == 4 && xhr2.status == 200){
			 												exhibitorright.innerHTML = personalInformation(xhr2.responseText);
			 											}
			 										}													
												}
											
											}
										}
									}
 									reviseComplete.onclick = function(){
 										var birthValue = document.getElementById("birth").value;
 										var nameValue = document.getElementById("name").value;
 										var emailValue = document.getElementById("email").value;
 										var cellphoneValue = document.getElementById("cellphone").value;
 										var gendervalue = document.querySelector("input[name='gender1']:checked").value;
//  															
										
 										var obj = {											   
 											   "name": nameValue,
 											   "birth": birthValue,
 											   "cellphone": cellphoneValue,
 											   "email": emailValue,
  											  "gender": gendervalue
 											};
 										
 										var xhr2 = new XMLHttpRequest();
 										var url = "<c:url value='/CactusRevise'  />";
 										console.log(url);
 										xhr2.open("PUT", url);
 										xhr2.setRequestHeader("Content-Type", "application/json");
 										xhr2.send(JSON.stringify(obj));
 										xhr2.onreadystatechange = function(){
 											if (xhr2.readyState == 4 && xhr2.status == 200){
 												exhibitorright.innerHTML = personalInformation(xhr2.responseText);
 											}
 										}
 									}
									
//								}
							}
						}
						
						}
			}
					}
				}
				a.onclick = function() {
					var xhr = new XMLHttpRequest();
					xhr.open("GET", "<c:url value='/information' />", true);
					xhr.send();
					xhr.onreadystatechange = function() {
						if (xhr.readyState == 4 && xhr.status == 200) {
							exhibitorright.innerHTML = revisePage(xhr.responseText);
							exhibitorright.innerHTML += "<h2><button id ='sure'>確定</button></h2>";
							var sure = document.getElementById("sure");
							sure.onclick = function() {
								var xhr = new XMLHttpRequest();
								xhr.open("GET", "<c:url value='/KJ3' />", true);
								xhr.send();
								xhr.onreadystatechange = function() {
									if (xhr.readyState == 4
											&& xhr.status == 200) {
										exhibitorright.innerHTML = personalInformation(xhr.responseText);
									}
								}
							}
						}
					}
				}
				
				function findCourse(memberString){
					var course = JSON.parse(memberString);
					var segment = "<h3>課程類型 :" + course.course_type + "</h3><br>" +
					              "<h3>老師名稱 :" + course.username_teacher + "</h3><br>" +
					              "<h3>課程名稱 :" + course.course_name + "</h3><br>" 
					              "<h3>課程價格 :" + course.price + "</h3><br>" 
					              "<h3>購買日期 :" + course.launched + "</h3><br>" ;
					return segment;				              
				}
				
				function beTeacher(memberString) {
					var member = JSON.parse(memberString);
					var segment = "<h3>" + member.username + "</h3>"
							+ "<h3>想成為老師嗎?</h3><br>";
					return segment;
				}

				function personalInformation(memberString) {
					var member = JSON.parse(memberString);
					if (member.birth == null)
						member.birth = "";
					if (member.name == null)
						member.name = "";
					if (member.gender == null)
						member.gender = "";
					if (member.email == null)
						member.email = "";
					if (member.cellphone == null)
						member.cellphone = "";
					if (member.qualification_of_teacher == "F"
							|| member.qualification_of_teacher == null)
						var valueQualification_of_teacher = "否";
					else
						valueQualification_of_teacher = "是";
					var segment = "<h4>" + "帳號:" + member.username
							+ "</h4><br>" + "<h4>" + "姓名:" + member.name
							+ "</h4><br>" + "<h4>" + "性別:" + member.gender
							+ "</h4><br>" + "<h4>" + "生日:" + member.birth
							+ "</h4><br>" + "<h4>" + "信箱:" + member.email
							+ "</h4><br>" + "<h4>" + "手機:" + member.cellphone
							+ "</h4><br>" + "<h4>" + "教師資格:"
							+ valueQualification_of_teacher
							+ "</h4><br><button id ='revise'>修改資料</button>";
					console.log(member.birth);
					return segment;

				}

// 				function revisePage(memberString) {
// 					var member = JSON.parse(memberString);
// 					var revisePage1 = "<h4>"
// 							+ member.username
// 							+ "</h4><br>"
// 							+ "<h4>姓名：</h4>"
// 							+ "<input type='text' name='name' class='text' value='${name}'/>"
// 							+ "<h4>密碼：</h4>"
// 							+ "<input type='text' name='password' class='text' value='${password}'/>"
// 							+ "<h4>生日：</h4>"
// 							+ "<input type='text' name='birth' class='text' value='${birth}'/>"
// 							+ "<h4>電話號碼：</h4>"
// 							+ "<input type='text' name='cellphone' class='text' value='${cellphone}'/>"
// 							+ "<h4>信箱：</h4>"
// 							+ "<input type='text' name='email' class='text' value='${email}'/>"
// 							+ "<input type='text' name='gender' value='男' id='sexMale' >"
// 							+ "<label for='sexMale'>男</label>"
// 							+ "<input type='radio' name='gender' value='女' id='sexFemale'><label for='sexFemale'>女</label>";
// 					return revisePage1;
// 				}
				function beforeReviseData(memberString){
	  				var member = JSON.parse(memberString);
	  				if (member.birth == null)
						member.birth = "";
					if (member.name == null)
						member.name = "";
					if (member.gender == null)
						member.gender = "";
					if (member.email == null)
						member.email = "";
					if (member.cellphone == null)
						member.cellphone = "";
	  				var segment;
	  				segment = 
	  				"<h4>姓名:</h4><input type='text' name='username' class='text' id='name' value="+member.name+">"
	  				+"<h4>密碼:</h4><input type='password' name='username' class='text' value="+member.password+">"
	  				+"<button id ='passwordRevise'>修改密碼</button>"
					+ "<h4>生日：</h4>"
					+ "<input type='text' name='birth' class='text' id='birth'value="+member.birth+">"
					+ "<h4>電話號碼：</h4>"
					+ "<input type='text' name='cellphone' class='text' id='cellphone' value="+member.cellphone+">"
					+ "<h4>信箱：</h4>"
					+ "<input type='text' name='email' class='text' id='email' value="+member.email+"><br>"
					+ "<input type='radio' name='gender1' value='男' id='gender' >"
					+ "<label for='sexMale'>男</label>"
					+ "<input type='radio' name='gender1' value='女' id='gender'>"
					+"<label for='sexFemale'>女</label>"
					+ "<br><br><br><button id ='reviseComplete'>修改完成</button>";
	  			return segment;
	  			}
			}
  
  			
		</script>
</head>

<body>
  <!--header-->
  <header id="site-header" class="fixed-top" style="background-image:url(${pageContext.request.contextPath}/images/title.png)">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark stroke">
        <h1>
          <a class="navbar-brand" href="index.html" id="test3">
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
          </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav mx-lg-auto">
            <li class="nav-item active">
              <a class="nav-link" id="test2" href="index.html">Home <span class="sr-only">(current)</span></a>
            </li>
            <!-- <li class="nav-item @@about__active">
                <a class="nav-link" href="about.html">About</a>
              </li>
              <li class="nav-item @@services__active">
                <a class="nav-link" href="services.html">Services</a>
              </li>
              <li class="nav-item @@contact__active">
                <a class="nav-link" href="contact.html">Contact</a>
              </li>            -->
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
        <a href="login.html"><i class="fa fa-user-circle-o" id="test1"
            style="font-size: 28px; color:#fff; padding:7px 0px 0px 13px;" title="Login 登入"></i></a>


        <!-- //toggle switch for light and dark theme -->
      </nav>

    </div>
  </header>

  <!--/header-->

  <section class="w3l-gallery py-5" id="gallery" style="margin-top: 5%;">
    <div class="container py-lg-5 py-md-4 py-2" style="width: 40%; height: 40%;">
      <div class="title-content text-center mb-5">



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
  <script src="<c:url value='/js/jquery-3.3.1.min.js' />"></script>
  <script src="assets/js/theme-change.js"></script>

  <!-- libhtbox -->
  <script src="assets/js/lightbox-plus-jquery.min.js"></script>
  <!-- libhtbox -->

  <!-- banner slick slider -->
  <script src="assets/js/slick.js"></script>
  <script src="assets/js/script.js"></script>
  <!-- //banner slick slider -->

  <!-- magnific popup -->
  <script src="assets/js/jquery.magnific-popup.min.js"></script>
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
  <script src="assets/js/owl.carousel.js"></script>

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
  <div class="container">
    <div>
      <div class="dimg1">
        <label class=><i class="fa fa-user-circle-o"></i></label>
      </div>
      <div id="exhibitor114">
        <div id="exhibitorleft">
          <div class="dli1">

            <li class="cl123">
              <h2 class="h22"><button id ='p'>個人資料</button></h2>
              <h2 class="h22"><button id ='b'>購買紀錄</button></h2>
              <h2 class="h22"><button id ='s'>評分紀錄</button></h2>        
                <h2 class="h22"><button id ='t'>成為教師</button></h2>           
            </li>
          </div>
        </div>
        <div id="exhibitorright">
			
        </div>
      </div>
    </div>

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
      // $(window).on("scroll", function () {
      //   var scroll = $(window).scrollTop();

      //   if (scroll >= 80) {
      //     $("#test1").css("color", "green");
      //   }
      // });

      // $(window).on("scroll", function () {
      //   var scroll = $(window).scrollTop();

      //   if (scroll <= 80) {
      //     $("#test1").css("color", "#fff");
      //   }
      // });

      $(window).on("scroll", function () {
        var scroll = $(window).scrollTop();

        if (scroll >= 80) {
          $("#test2").css("color", "#fff");
        }
      });

      $(window).on("scroll", function () {
        var scroll = $(window).scrollTop();

        if (scroll >= 80) {
          $("#test3").css("color", "#fff");
        }
      });



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

    <script src="assets/js/bootstrap.min.js"></script>


</body>

</html>