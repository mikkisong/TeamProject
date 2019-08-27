<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>wetravel.co.kr - 최저가 항공권, 동행자 찾기</title>

<!-- Bootstrap core CSS -->
<link href="./resources/assets/css/bootstrap.min.css" rel="stylesheet">
<script src="./resources/jquery-3.4.1.js"></script>

<script type="text/javascript">
	// 마우스 포커스 활성화 시 placeholder 삭제
</script>
</head>

<body>
	<!-- 헤더가 들어가는 곳 -->
	<jsp:include page="inc/top.jsp" />
	<!-- 헤더가 들어가는 곳 -->

	<section>
		<!-- Page Content -->
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="main_title_content">
						<h1 class="mt-5">위트래블</h1>
						<p class="lead">최저가 항공권 예약, 동행자 찾기</p>
					</div>
					<div class="search">
						<div class="city">
							<input type="search" role="combobox" aria-autocomplete="both"
								aria-owns="ssg-suggestions" autocomplete="off" autocorrect="off"
								autocapitalize="none" name="sQuery"
								class="js-query input querytext" id="search text"
								placeholder="예) 바르셀로나">
						</div>

						<div class="calendar">
							<table class="calendar1">
								
							</table>
						</div>




					</div>
				</div>
			</div>
		</div>
	</section>



	<!-- Bootstrap core JavaScript -->
	<script src="./resources/assets/jquery/jquery.slim.min.js"></script>
	<script src="./resources/assets/js/bootstrap.bundle.min.js"></script>
</body>

</html>
