<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link href="./resources/assets/css/main.scss" rel="stylesheet">

<script src="./resources/jquery-3.4.1.js"></script>

<script type="text/javascript">
	// 마우스 포커스 활성화 시 placeholder 삭제
</script>
<style>
.form-group {
overflow:hidden;
}
.form-icon {
float:left;
}
.form-quantity {
float:left;
}
.form-submit {
float:left;
}
.form-destination {
float:left;
}

a:focus, a:active {
  text-decoration: none;
  outline: none;
  transition: all 300ms ease 0s;
  -moz-transition: all 300ms ease 0s;
  -webkit-transition: all 300ms ease 0s;
  -o-transition: all 300ms ease 0s;
  -ms-transition: all 300ms ease 0s; }
  
.container1 {
  width: 1080px;
  background: rgba(11, 13, 24, 0.6);
  margin: 150px auto;
  border-radius: 10px;
  -moz-border-radius: 10px;
  -webkit-border-radius: 10px;
  -o-border-radius: 10px;
  -ms-border-radius: 10px; }
  
.form-group {
color: #FFF;
  align-items: center;
  -moz-align-items: center;
  -webkit-align-items: center;
  -o-align-items: center;
  -ms-align-items: center;
  justify-content: space-between;
  -moz-justify-content: space-between;
  -webkit-justify-content: space-between;
  -o-justify-content: space-between;
  -ms-justify-content: space-between; }
  

</style>
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
					<div class="container1">
       				 
            <form action='<c:url value="/flight"/>' id="booking-form" class="booking-form" method="GET">
                <div class="form-group">
                <div class="form-destination">
                        <label for="destination">출발지</label>
                        <input type="text" id="dep" name="dep" placeholder="예) 부산" />
                    </div>
                    <div class="form-destination">
                        <label for="destination">도착지</label>
                        <input type="text" id="arr" name="arr" placeholder="예) 하와이" />
                    </div>
                    <div class="form-date-from form-icon">
                        <label for="date_from">가는날</label>
                        <input type="text" id="date_dep" name="date_dep" class="date_from" placeholder="Pick a date" />
                        <!-- <span class="icon"><i class="zmdi zmdi-calendar-alt"></i></span> -->
                    </div>
                    <div class="form-date-to form-icon">
                        <label for="date_to">오는날</label>
                        <input type="text" id="date_arr" name="date_arr" class="date_to" placeholder="Pick a date" />
                        <!-- <span class="icon"><i class="zmdi zmdi-calendar-alt"></i></span> -->
                    </div>
                    <div class="form-quantity">
                        <label for="quantity">어른</label>
                        <span class="modify-qty plus" onClick="Tang()"><i class="zmdi zmdi-chevron-up"></i></span>
                        <input type="number" name="adultquantity" id="adultquantity" value="0" min="0" class="nput-text qty text">
                        <span class="modify-qty minus" onClick="Giam()"><i class="zmdi zmdi-chevron-down"></i></span>
                    </div>
                      <div class="form-quantity">
                        <label for="quantity">아이</label>
                        <span class="modify-qty plus" onClick="Tang()"><i class="zmdi zmdi-chevron-up"></i></span>
                        <input type="number" name="childquantity" id="childquantity" value="0" min="0" class="nput-text qty text">
                        <span class="modify-qty minus" onClick="Giam()"><i class="zmdi zmdi-chevron-down"></i></span>
                    </div>
                      <div class="form-quantity">
                        <label for="quantity">유아</label>
                        <span class="modify-qty plus" onClick="Tang()"><i class="zmdi zmdi-chevron-up"></i></span>
                        <input type="number" name="babyquantity" id="babyquantity" value="0" min="0" class="nput-text qty text">
                        <span class="modify-qty minus" onClick="Giam()"><i class="zmdi zmdi-chevron-down"></i></span>
                    </div>
                    <div class="form-submit">
                        <input type="submit" id="submit" class="submit" value="Book now" />
                    </div>
                </div>
            </form>
        </div>
<!-- 					<div class="search"> -->
<!-- 						<div class="city"> -->
<!-- 							<input type="search" role="combobox" aria-autocomplete="both" -->
<!-- 								aria-owns="ssg-suggestions" autocomplete="off" autocorrect="off" -->
<!-- 								autocapitalize="none" name="sQuery" -->
<!-- 								class="js-query input querytext" id="search text" -->
<!-- 								placeholder="예) 바르셀로나"> -->
<!-- 						</div> -->

<!-- 						<div class="calendar"> -->
<!-- 							<table class="calendar1"> -->
								
<!-- 							</table> -->
<!-- 						</div> -->

<!-- 					</div> -->
				</div>
			</div>
		</div>
	</section>



	<!-- Bootstrap core JavaScript -->
	<script src="./resources/assets/jquery/jquery.slim.min.js"></script>
	<script src="./resources/assets/js/bootstrap.bundle.min.js"></script>
	
	
	
</body>

</html>
