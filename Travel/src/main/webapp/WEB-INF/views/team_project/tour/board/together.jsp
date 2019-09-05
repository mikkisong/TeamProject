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
				   					<h2>국내/외 최대 여행커뮤니티</h2>
				   					<h1>동행게시판</h1>
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
				<div class="row">
					<div class="col-md-8">
						<div class="wrap-division">
							<article class="animate-box">
								<div class="blog-img" style="background-image: url(images/blog-1.jpg);"></div>
								<div class="desc">
									<div class="meta">
										<p>
											<span>Feb 24, 2018 </span>
											<span>admin </span>
											<span><a href="#">2 Comments</a></span>
										</p>
									</div>
									<h2><a href="#">A Definitive Guide to the Best Dining</a></h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt, qui quod ipsum harum id, minima nesciunt! Saepe soluta, vitae quas expedita voluptatem voluptates placeat numquam provident quis, atque nisi iure?</p>
								</div>
							</article>
							<article class="animate-box">
								<div class="blog-img" style="background-image: url(images/blog-2.jpg);"></div>
								<div class="desc">
									<div class="meta">
										<p>
											<span>Feb 24, 2018 </span>
											<span>admin </span>
											<span><a href="#">1 Comments</a></span>
										</p>
									</div>
									<h2><a href="#">How These 5 People Found The Path to Their Dream Trip</a></h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt, qui quod ipsum harum id, minima nesciunt! Saepe soluta, vitae quas expedita voluptatem voluptates placeat numquam provident quis, atque nisi iure?</p>
								</div>
							</article>
							<article class="animate-box">
								<div class="blog-img" style="background-image: url(images/blog-3.jpg);"></div>
								<div class="desc">
									<div class="meta">
										<p>
											<span>Feb 24, 2018 </span>
											<span>admin </span>
											<span><a href="#">0 Comments</a></span>
										</p>
									</div>
									<h2><a href="#">Our Secret Island Boat Tour Is just for You</a></h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt, qui quod ipsum harum id, minima nesciunt! Saepe soluta, vitae quas expedita voluptatem voluptates placeat numquam provident quis, atque nisi iure?</p>
								</div>
							</article>
						</div>
						<div class="row">
							<div class="col-md-12">
								<ul class="pagination">
									<li class="disabled"><a href="#">&laquo;</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">&raquo;</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="sidebar-wrap">
							<div class="side animate-box">
								<h3 class="sidebar-heading">Recent Post</h3>
								<div class="blog-entry-side">
									<a href="blog.html" class="blog-post">
										<span class="img" style="background-image: url(images/blog-3.jpg);"></span>
										<div class="desc">
											<span class="date">Feb 24, 2018</span>
											<h3>Our Secret Island Boat Tour Is just for You</h3>
											<span class="cat">Tour</span>
										</div>
									</a>
								</div>
								<div class="blog-entry-side">
									<a href="blog.html" class="blog-post">
										<span class="img" style="background-image: url(images/blog-2.jpg);"></span>
										<div class="desc">
											<span class="date">Feb 24, 2018</span>
											<h3>How These 5 People Found The Path to Their Dream Trip</h3>
											<span class="cat">Hotel</span>
										</div>
									</a>
								</div>
								<div class="blog-entry-side">
									<a href="blog.html" class="blog-post">
										<span class="img" style="background-image: url(images/blog-3.jpg);"></span>
										<div class="desc">
											<span class="date">Feb 24, 2018</span>
											<h3>Our Secret Island Boat Tour Is just for You</h3>
											<span class="cat">Cruises</span>
										</div>
									</a>
								</div>
							</div>
							<div class="side animate-box">
								<div class="sidebar-heading">Categories</div>
								<ul class="category">
									<li><a href="#"><i class="icon-check"></i> Car rental<span>(2)</span></a></li>
									<li><a href="#"><i class="icon-check"></i> Flight<span>(2)</span></a></li>
									<li><a href="#"><i class="icon-check"></i> Activities<span>(3)</span></a></li>
									<li><a href="#"><i class="icon-check"></i> Hotel<span>(5)</span></a></li>
									<li><a href="#"><i class="icon-check"></i> Tour<span>(2)</span></a></li>
									<li><a href="#"><i class="icon-check"></i> Travel<span>(3)</span></a></li>
									<li><a href="#"><i class="icon-check"></i> Night<span>(2)</span></a></li>
									<li><a href="#"><i class="icon-check"></i> Cruises<span>(2)</span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
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

