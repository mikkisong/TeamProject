<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>여행후기게시판 - 위트래블</title>
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
			   	<li style="background-image: url(../images/cover-img-4.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h2>리얼트래블러의</h2>
				   					<h1>여행후기</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>

		<div class="colorlib-wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="row">
							<div class="wrap-division">
								<div class="col-md-6 col-sm-6 animate-box">
									<div class="hotel-entry">
										<a href="hotel-room.html" class="hotel-img" style="background-image: url(../images/hotel-1.jpg);">
											<p class="price"><span>$120</span><small> /night</small></p>
										</a>
										<div class="desc">
											<p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>
											<h3><a href="hotel-room.html">Hotel Edison</a></h3>
											<span class="place">New York, USA</span>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
										</div>
									</div>
								</div>

								<div class="col-md-6 col-sm-6 animate-box">
									<div class="hotel-entry">
										<a href="hotel-room.html" class="hotel-img" style="background-image: url(../images/hotel-2.jpg);">
											<p class="price"><span>$120</span><small> /night</small></p>
										</a>
										<div class="desc">
											<p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>
											<h3><a href="hotel-room.html">Hotel Edison</a></h3>
											<span class="place">New York, USA</span>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
										</div>
									</div>
								</div>

								<div class="col-md-6 col-sm-6 animate-box">
									<div class="hotel-entry">
										<a href="hotel-room.html" class="hotel-img" style="background-image: url(../images/hotel-3.jpg);">
											<p class="price"><span>$120</span><small> /night</small></p>
										</a>
										<div class="desc">
											<p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>
											<h3><a href="hotel-room.html">Hotel Edison</a></h3>
											<span class="place">New York, USA</span>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
										</div>
									</div>
								</div>

								<div class="col-md-6 col-sm-6 animate-box">
									<div class="hotel-entry">
										<a href="hotel-room.html" class="hotel-img" style="background-image: url(../images/hotel-4.jpg);">
											<p class="price"><span>$120</span><small> /night</small></p>
										</a>
										<div class="desc">
											<p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>
											<h3><a href="hotel-room.html">Hotel Edison</a></h3>
											<span class="place">New York, USA</span>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
										</div>
									</div>
								</div>

								<div class="col-md-6 col-sm-6 animate-box">
									<div class="hotel-entry">
										<a href="hotel-room.html" class="hotel-img" style="background-image: url(../images/hotel-5.jpg);">
											<p class="price"><span>$120</span><small> /night</small></p>
										</a>
										<div class="desc">
											<p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>
											<h3><a href="hotel-room.html">Hotel Edison</a></h3>
											<span class="place">New York, USA</span>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
										</div>
									</div>
								</div>

								<div class="col-md-6 col-sm-6 animate-box">
									<div class="hotel-entry">
										<a href="hotel-room.html" class="hotel-img" style="background-image: url(../images/hotel-6.jpg);">
											<p class="price"><span>$120</span><small> /night</small></p>
										</a>
										<div class="desc">
											<p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>
											<h3><a href="hotel-room.html">Hotel Edison</a></h3>
											<span class="place">New York, USA</span>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
										</div>
									</div>
								</div>

								<div class="col-md-6 col-sm-6 animate-box">
									<div class="hotel-entry">
										<a href="hotel-room.html" class="hotel-img" style="background-image: url(../images/hotel-7.jpg);">
											<p class="price"><span>$120</span><small> /night</small></p>
										</a>
										<div class="desc">
											<p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>
											<h3><a href="hotel-room.html">Hotel Edison</a></h3>
											<span class="place">New York, USA</span>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
										</div>
									</div>
								</div>

								<div class="col-md-6 col-sm-6 animate-box">
									<div class="hotel-entry">
										<a href="hotel-room.html" class="hotel-img" style="background-image: url(../images/hotel-8.jpg);">
											<p class="price"><span>$120</span><small> /night</small></p>
										</a>
										<div class="desc">
											<p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>
											<h3><a href="hotel-room.html">Hotel Edison</a></h3>
											<span class="place">New York, USA</span>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 text-center">
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

					<!-- SIDEBAR-->
					<div class="col-md-3">
						<div class="sidebar-wrap">
							<div class="side search-wrap animate-box">
								<h3 class="sidebar-heading">Find your hotel</h3>
								<form method="post" class="colorlib-form">
				              	<div class="row">
				                <div class="col-md-12">
				                  <div class="form-group">
				                    <label for="date">Check-in:</label>
				                    <div class="form-field">
				                      <i class="icon icon-calendar2"></i>
				                      <input type="text" id="date" class="form-control date" placeholder="Check-in date">
				                    </div>
				                  </div>
				                </div>
				                <div class="col-md-12">
				                  <div class="form-group">
				                    <label for="date">Check-out:</label>
				                    <div class="form-field">
				                      <i class="icon icon-calendar2"></i>
				                      <input type="text" id="date" class="form-control date" placeholder="Check-out date">
				                    </div>
				                  </div>
				                </div>
				                <div class="col-md-12">
				                  <div class="form-group">
				                    <label for="guests">Guest</label>
				                    <div class="form-field">
				                      <i class="icon icon-arrow-down3"></i>
				                      <select name="people" id="people" class="form-control">
				                        <option value="#">1</option>
				                        <option value="#">2</option>
				                        <option value="#">3</option>
				                        <option value="#">4</option>
				                        <option value="#">5+</option>
				                      </select>
				                    </div>
				                  </div>
				                </div>
				                <div class="col-md-12">
				                  <input type="submit" name="submit" id="submit" value="Find Hotel" class="btn btn-primary btn-block">
				                </div>
				              </div>
				            </form>
							</div>
							<div class="side animate-box">
								<div class="row">
									<div class="col-md-12">
										<h3 class="sidebar-heading">Price Range</h3>
										<form method="post" class="colorlib-form-2">
						              	<div class="row">
						                <div class="col-md-6">
						                  <div class="form-group">
						                    <label for="guests">Price from:</label>
						                    <div class="form-field">
						                      <i class="icon icon-arrow-down3"></i>
						                      <select name="people" id="people" class="form-control">
						                        <option value="#">1</option>
						                        <option value="#">200</option>
						                        <option value="#">300</option>
						                        <option value="#">400</option>
						                        <option value="#">1000</option>
						                      </select>
						                    </div>
						                  </div>
						                </div>
						                <div class="col-md-6">
						                  <div class="form-group">
						                    <label for="guests">Price to:</label>
						                    <div class="form-field">
						                      <i class="icon icon-arrow-down3"></i>
						                      <select name="people" id="people" class="form-control">
						                        <option value="#">2000</option>
						                        <option value="#">4000</option>
						                        <option value="#">6000</option>
						                        <option value="#">8000</option>
						                        <option value="#">10000</option>
						                      </select>
						                    </div>
						                  </div>
						                </div>
						              </div>
						            </form>
					            </div>
								</div>
							</div>
							<div class="side animate-box">
								<div class="row">
									<div class="col-md-12">
										<h3 class="sidebar-heading">Review Rating</h3>
										<form method="post" class="colorlib-form-2">
										   <div class="form-check">
												<input type="checkbox" class="form-check-input" id="exampleCheck1">
												<label class="form-check-label" for="exampleCheck1">
													<p class="rate"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span></p>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
										    	   <p class="rate"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span></p>
										      </label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
										      	<p class="rate"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span></p>
										     </label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
										      	<p class="rate"><span><i class="icon-star-full"></i><i class="icon-star-full"></i></span></p>
										     </label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
										      	<p class="rate"><span><i class="icon-star-full"></i></span></p>
										     </label>
										   </div>
										</form>
									</div>
								</div>
							</div>
							<div class="side animate-box">
								<div class="row">
									<div class="col-md-12">
										<h3 class="sidebar-heading">Categories</h3>
										<form method="post" class="colorlib-form-2">
										   <div class="form-check">
												<input type="checkbox" class="form-check-input" id="exampleCheck1">
												<label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Apartment</h4>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Hotel</h4>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Hostel</h4>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Inn</h4>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Villa</h4>
												</label>
										   </div>
										</form>
									</div>
								</div>
							</div>
							<div class="side animate-box">
								<div class="row">
									<div class="col-md-12">
										<h3 class="sidebar-heading">Location</h3>
										<form method="post" class="colorlib-form-2">
										   <div class="form-check">
												<input type="checkbox" class="form-check-input" id="exampleCheck1">
												<label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Greece</h4>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Italy</h4>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Spain</h4>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Germany</h4>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Japan</h4>
												</label>
										   </div>
										</form>
									</div>
								</div>
							</div>
							<div class="side animate-box">
								<div class="row">
									<div class="col-md-12">
										<h3 class="sidebar-heading">Facilities</h3>
										<form method="post" class="colorlib-form-2">
										   <div class="form-check">
												<input type="checkbox" class="form-check-input" id="exampleCheck1">
												<label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Airport Transfer</h4>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Resto Bar</h4>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Restaurant</h4>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Swimming Pool</h4>
												</label>
										   </div>
										   <div class="form-check">
										      <input type="checkbox" class="form-check-input" id="exampleCheck1">
										      <label class="form-check-label" for="exampleCheck1">
													<h4 class="place">Japan</h4>
												</label>
										   </div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	
		<div id="colorlib-subscribe" style="background-image: url(../images/img_bg_2.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<h2>이메일 구독하기</h2>
						<p>최신여행정보를 받아보세요.</p>
						<form class="form-inline qbstp-header-subscribe">
							<div class="row">
								<div class="col-md-12 col-md-offset-0">
									<div class="form-group">
										<input type="text" class="form-control" id="email" placeholder="이메일주소 입력란">
										<button type="submit" class="btn btn-primary">구독하기</button>
									</div>
								</div>
							</div>
						</form>
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

