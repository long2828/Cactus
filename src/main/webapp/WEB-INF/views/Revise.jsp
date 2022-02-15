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
body {
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


	<form action="<c:url value='/Put_C_member/${username.username}' />"
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
						<input type="text" name="username" class="text"
							value="${username.username}" disabled="disabled">
					</div>
				</div>

				<div class='line'>
					<div align="left" class='leftDiv'>密碼：</div>
					<div align="left" class='rightDiv'>
						<input type="password" name="password" class="text"
							value="${username.password}" />
					</div>
				</div>

				<div class='line'>
					<div align="left" class='leftDiv'>姓名：</div>
					<div align="left" class='rightDiv'>
						<input type="text" name="name" class="text"
							value="${username.name}" />
					</div>
				</div>

				<div class='line'>
					<div align="left" class='leftDiv'>信箱：</div>
					<div align="left" class='rightDiv'>
						<input type="text" name="email" class="text"
							value="${username.email}" />
					</div>
				</div>
				<!-- <div class='line'> -->
				<!-- <div align="left" class='leftDiv'>請再次輸入密碼：</div> -->
				<!-- <div align="left" class='rightDiv'> -->
				<!-- <input type="password" name="passwordConfirm" class="text" /> -->
				<!-- </div> -->
				<!-- </div> -->
				<div class='line'>
					<div align="left" class='leftDiv'>性別：</div>
					<div align="left" class='rightDiv'>
						<input type="radio" name="gender" value='M' checked id="sexMale">
						<label for="sexMale">男</label> <input type="radio" name="gender"
							value='F' id="sexFemale"> <label for="sexFemale">女</label>
					</div>
				</div>
				<!-- <div class='line'> -->
				<!-- <div align="left" class='leftDiv'>請輸入年齡：</div> -->
				<!-- <div align="left" class='rightDiv'> -->
				<!-- <input type="text" name="age" class="text"> -->
				<!-- </div> -->
				<!-- </div> -->
				<div class='line'>
					<div align="left" class='leftDiv'>手機：</div>
					<div align="left" class='rightDiv'>
						<input type="text" name="cellphone" class="text"
							value="${username.cellphone}" />
					</div>
				</div>
				<div class='line'>
					<div align="left" class='leftDiv'>生日：</div>
					<div align="left" class='rightDiv'>
						<input type="text" name="birth" class="text"
							value="${username.birth}" /> <br />格式："yyyy/mm/dd"
					</div>
				</div>
				<!-- <div class='line'> -->
				<!-- <div align="left" class='leftDiv'>請選擇您的愛好</div> -->
				<!-- <div align="left" class='rightDiv'> -->
				<!-- <input type="checkbox" name="interesting" value="音樂影視" id="i1"> -->
				<!-- <label for="i1">音樂影視</label> -->
				<!-- <input type="checkbox" name="interesting" value="外出旅遊" id="i2"> -->
				<!-- <label for="i2">外出旅遊</label> -->
				<!-- <input type="checkbox" name="interesting" value="社交活動" id="i3"> -->
				<!-- <label for="i3">社交活動</label> -->
				<!-- </div> -->
				<!-- </div> -->
				<!-- <div class='line'> -->
				<!-- <div align="left" class='leftDiv'>請選擇省市：</div> -->
				<!-- <div align="left" class='rightDiv'> -->
				<!-- <select name="area"> -->
				<!-- <option>---請選擇省份---</option> -->
				<!-- <optgroup label="北京市"> -->
				<!-- <option value="北京市海淀區">海淀區</option> -->
				<!-- <option value="北京市朝陽區">朝陽區</option> -->
				<!-- <option value="北京市東城區">東城區</option> -->
				<!-- <option value="北京市西城區">西城區</option> -->
				<!-- </optgroup> -->
				<!-- <optgroup label="山東省"> -->
				<!-- <option value="山東省濟南市">濟南市</option> -->
				<!-- <option value="山東省青島市">青島市</option> -->
				<!-- <option value="山東省濰坊市">濰坊市</option> -->
				<!-- </optgroup> -->
				<!-- </select> -->
				<!-- </div> -->
				<!-- </div> -->
				<!-- <div class='line'> -->
				<!-- <div align="left" class='leftDiv'>自我描述：</div> -->
				<!-- <div align="left" class='rightDiv'> -->
				<!-- <textarea name="description" rows="4" style="width:300px; ">請填寫其他資料... </textarea> -->
				<!-- </div> -->
				<!-- </div> -->
				<br />
				<div class='line'>

					<br /> <input type="submit" name="btn" value=" 送出 " class="button"><br />

				</div>
			</fieldset>
		</div>
	</form>
	<script>
        // When the user scrolls down 20px from the top of the document, show the button
//         window.onscroll = function () {
//             scrollFunction()
//         };

//         function scrollFunction() {
//             if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
//                 document.getElementById("movetop").style.display = "block";
//             } else {
//                 document.getElementById("movetop").style.display = "none";
//             }
//         }

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