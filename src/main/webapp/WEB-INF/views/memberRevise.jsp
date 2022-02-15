<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改資訊</title>

</head>
</head>
<style>
body{
	background-color:
}
fieldset {
	margin: 100px;
	border-radius: 20px;
}

legend {
	font-size: 30px;
}

body {

	align: center;
}

div, td, input {
	font-size: 18px;
	margin: 10px;
}

select {
	height: 20px;
	width: 300px;
}

.title {
	font-size: 16px;
	padding: 10px;
	width: 80%;
}

.text {
	height: 20px;
	width: 300px;
	border: 1px solid #AAAAAA;
}

.line {
	margin: 2px;
}

.leftDiv {
	width: 110px;
	float: left;
	height: 22px;
	line-height: 22px;
	font-weight: bold;
}

.rightDiv {
	height: 42px;
}

.button {
	border: 0;
	background-color: #2894FF;
	color: #fff;
	border-radius: 5px;
}
</style>
<body>
	
	
	<form action="<c:url value='/Put_CC_member/${memberName.memberName}' />"
		method="POST">
		<input type="hidden" name="_method" value="put" />
		<div align="center">
			<br />
			<fieldset style='width: 30%'>
				<legend> 修改列表 </legend>
				<br />
				<div class='line'>
					<div align="left" class='leftDiv'>帳號：</div>
					<div align="left" class='rightDiv'>
						<input type="text" name="memberName" class="text"
							value="${memberName.memberName}"/>
					</div>
				</div>

				<div class='line'>
					<div align="left" class='leftDiv'>密碼：</div>
					<div align="left" class='rightDiv'>
						<input type="password" name="password" class="text"
							value="${memberName.password}" />
					</div>
				</div>

				<div class='line'>
					<div align="left" class='leftDiv'>姓名：</div>
					<div align="left" class='rightDiv'>
						<input type="text" name="name" class="text"
							value="${memberName.name}" />
					</div>
				</div>

				<br />
				<div class='line'>

					<br /> <input type="submit" name="btn" value=" 送出 " class="button"><br />

				</div>
			</fieldset>
<!-- 		</div> -->
	</form>
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
//     	function fFirst(){
    	
//     		myForm.idn.value="ccc777";
//     		myForm.idp.value="777ccc";
    		
//     	}
    </script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

	
	
	<%-- 	<form action="<c:url value='/Put_CC_member/${username.username}' />" method="post"> --%>
	<!-- 		<input type="hidden" name="_method" value="put" /> -->
	<!-- 		<div> -->
	<!-- 			<label>帳號</label> <input type="text" name=username -->
	<%-- 				value="${username.username}" disabled="disabled"> --%>
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<label>密碼</label> <input type="password" name=password -->
	<%-- 				value="${username.password}" > --%>
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<label>信箱</label> <input type="text" name=email -->
	<%-- 				value="${username.email}"> --%>
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<label>姓名</label> <input type="text" name=name -->
	<%-- 				value="${username.name}"> --%>
	<!-- 		</div> -->
	<!-- 		<button>送出</button> -->
	<!-- 	</form> -->
</body>


</html>