<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>동행게시판 - 위트래블</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="./resources/assets/tour/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="./resources/assets/tour/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="./resources/assets/tour/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="./resources/assets/tour/css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="./resources/assets/tour/css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="./resources/assets/tour/css/owl.carousel.min.css">
	<link rel="stylesheet" href="./resources/assets/tour/css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="./resources/assets/tour/css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="./resources/assets/tour/fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="./resources/assets/tour/css/style.css">

	<!-- Modernizr JS -->
	<script src="./resources/assets/tour/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->


<script src='<c:url value="/resources/jquery-3.4.1.js"/>'></script>
<script type="text/javascript">

$(document).ready(function(){
	$('#check2').submit(function(){
		var fid = $('#id').val();
		var fpass = $('#pass').val();
		
		if(fid==""){
			alert("아이디를 입력하세요!")
			$('#id').focus();
			return false;
		}
		
		if(fpass=="") {
			alert("비밀번호를 입력하세요!")
			$('#pass').focus();
			return false;
		}
	});
});
</script>
	</head>
	<body>
		
	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			
			<!-- 탑메뉴 들어가는 곳 -->
			<jsp:include page="../inc/top.jsp" />
			<!-- 탑메뉴 들어가는 곳 -->

		</nav>
		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/cover-img-2.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h2>위트래블</h2>
				   					<h1>회원로그인</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>

		<div id="colorlib-blog">
			<div class="container">
				
				<form action='<c:url value="/member/login"/>' method="post" name="fr" id="check2">
					아이디:<input type="text" name="id" id="id"><br>
					비밀번호:<input type="password" name="pass" id="pass"><br>
				<input type="submit" value="로그인"><br>
					<input type="checkbox">아이디기억하기
				</form>
				<a href='<c:url value="/join"/>'>가입하기</a>
				
			</div>
		</div>
	


		
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
			<!-- 푸터 들어가는 곳 -->
	<jsp:include page="../inc/bottom.jsp" />

	<!-- jQuery -->
	<script src="./resources/assets/tour/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="./resources/assets/tour/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="./resources/assets/tour/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="./resources/assets/tour/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="./resources/assets/tour/js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="./resources/assets/tour/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="./resources/assets/tour/js/jquery.magnific-popup.min.js"></script>
	<script src="./resources/assets/tour/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="./resources/assets/tour/js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="./resources/assets/tour/js/jquery.stellar.min.js"></script>

	<!-- Main -->
	<script src="./resources/assets/tour/js/main.js"></script>

	</body>
</html>

