<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

<link rel='stylesheet' href='${pageContext.request.contextPath}/css/style-starterBack.css' /> 
</head>
<style>
table {
  border: 1px solid black;
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 70%;
  
}


td {
  width: 100px;
  height:200px;
  border: 1px solid #dddddd;
  text-align: center;
  padding: 8px;
}




th {
  
  border: 1px solid #dddddd;
  text-align: center;
  padding: 8px;
}

tr:nth-child(even) {
/*   background-color: #dddddd; */
}
button
{border:0;
font-size: 16px;
background-color:#FF2D2D;
color:#fff;border-radius:5px;
border-radius: 12px;
}

form{
	display:inline;
}
#put{border:0;
background-color:#2894FF;
color:#fff;border-radius:5px;
}


#ccc{
	margin:120px 200px;
	color:black;
}

/* #aaa{ */
/* 	height:500px; */
/* 	width: 1000px; */
	
/* } */

#bbb {
  width: 600px;
  height: 300px;
  position: absolute;
  left:105%;
  bottom:60px;
/*   top: 50%; */
/*   left: 50%; */
/*   margin: -150px 0 0 -300px; */
}
#fff{
  width: 600px;
  height: 300px;
  position: absolute;
  left:99%;
  top:110%;

}



</style>
<body >
<header id="site-header" class="fixed-top" style="background-color:	#7B7B7B">
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
                    </span>
                </button>

                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav mx-lg-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="${pageContext.request.contextPath}/homeLoginPage">我的課程 <span class="sr-only">(current)</span></a>
                        </li>
                       
                    </ul>
                </div>

               
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
           

                

               <div class="dropdown"> 
                    <i><a class="fa fa-user-circle-o " id="test1" data-toggle="modal" data-target="#exampleModalCenter" 
                    style="font-size: 28px; color:#fff; padding:7px 0px 0px 13px ; "  ></a></i>
                      
                    
                  
                   <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                   	  <h5>Hello,<br>${sessionScope.cactusBean.getUsername()}</h5>
                      <a class="dropdown-item" href="<c:url value='/showProfile'  />"> <i class="far fa-address-card"></i> 個人資料</a>
                      <a class="dropdown-item" href="#"><i class="fas fa-money-check-alt"></i> 付款方式</a>
                      <a class="dropdown-item" href="${pageContext.request.contextPath}/MyCourse"><i class="fas fa-book"></i>  我的課程</a>
                      <a class="dropdown-item" href="#"><i class="fas fa-shopping-cart"></i> 購物車</a>
                      <div class="out">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/homeLoginPage	"><i class="fas fa-door-open"></i> 登出</a>
                      </div>
                    </div>
                </div> 
                
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content">
                    
                      </div>
                    </div>
                  </div>
                
    
               
            </nav>

        </div>
    </header>
    <div align='center' id="ccc">
    
<h2>歡迎 ${sessionScope.cactusBean.getUsername()}</h2>

<hr>
  <c:forEach var='m' items='${membersession}'>
				<div class="row mt-lg-5 mt-4 text-center" id="aaa">
                    <div class="col-lg-4 col-md-6">
<!--                         <div class="grids5-info"> -->
                            <a href="#service" class="d-block zoom"><img src="${pageContext.request.contextPath}/images/python02.jpg" 
                            alt=""                                   class="img-fluid service-image" /></a>
                            <div class="blog-info">
                                <a href="#service" class="title">${m.courseBean.courseName}</a>
                                
                                <div id="bbb">
                                <p class="text-para" align="left" style="center"> 介紹:${m.courseBean.courseDescription}</p>
                                <div id="fff">
<%--                                 <button id="put" onclick="location.href='http://localhost:8080/cactus/writeappraise/${m.orderId}'">新增/修改評論</button> --%>
                                </div>
                                </div>
                            </div>
                            <a href="#learnmore" class="btn btn-style1 mt-3">Learn More</a>
                        </div>
                    </div>
                    
	</c:forEach>








<table border='1'>
<tr><th>影片名稱</th><th>影片</th><th>購買時間</th><th>評分</th><th>評論</th><th>修改評價</th></tr>
<c:forEach var='m' items='${course}'>
  <tr> 	
  	 <td>${m.courseName}</td>
<!--      <td></td> -->
<%--      <td>${m.purchaseDate}</td> --%>
<%--      <td>${m.score}</td> --%>
<%--      <td>${m.appraise}</td>  	 --%>
<!--      <td>  -->

<%--       		<button id="put" onclick="location.href='http://localhost:8080/cactus/writeappraise/${m.orderId}'">新增/修改評論</button> --%>
      		
<!--       		<br></br> -->
			
<%--       		<form action="<c:url value='/deleteappraise/${m.orderId}' />" method="post"> --%>
<!--      		<input type="hidden" name="_method" value="delete" /> -->
<!--       		<button onclick="back()">刪除評論</button> -->
     	</form>
     	
     	
     </td>
     
 </tr>    
</c:forEach>
</table>
<hr>
<a href="<c:url value='/'  />">回首頁</a>
<a href="<c:url value='/indexafterlogin'  />">回後台首頁</a>
</div>

<!-- <div align='center' id="ccc"> -->
<%-- 		<a href="<c:url value='/C_members'  />">Cactus Members</a><br> --%>
<%-- 		<a href="<c:url value='/ajax/C_members'  />">Cactus Members(Ajax)</a><br> --%>
<%-- <%-- 		<a href="<c:url value='/ajaxtest/C_members'  />">Cactus Members(Ajax)test</a><br>--%> 
<!-- 	</div>  -->
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
    	
    		myForm.idn.value="ccc777";
    		myForm.idp.value="777ccc";
    		
    	}
    </script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

	

</body>
</html>