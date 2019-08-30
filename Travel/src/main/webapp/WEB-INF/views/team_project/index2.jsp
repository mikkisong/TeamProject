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
	<meta http-equiv="X-UA-Compatible" content="ie=edge">


<title>wetravel.co.kr - 최저가 항공권, 동행자 찾기</title>

<!-- Bootstrap core CSS -->
<!-- <link href="./resources/assets/css/bootstrap.min.css" rel="stylesheet"> -->
<!-- <link href="./resources/assets/css/main.scss" rel="stylesheet"> -->

    <!-- Font Icon -->
    <link rel="stylesheet" href="./resources/assets/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="./resources/assets/css/jquery-ui.min.css">

<!-- Main css -->
<link rel="stylesheet" href="./resources/assets/css/index_style.css">

<script src="./resources/jquery-3.4.1.js"></script>


</head>

<body>
	<!-- 헤더가 들어가는 곳 -->
<%-- 	<jsp:include page="inc/top.jsp" /> --%>
	<!-- 헤더가 들어가는 곳 -->

	
	<div class="main">

					<div class="main_title_content">
						<h1 class="sitename">위트래블</h1>
						<p class="sitename2" >최저가 항공권 예약, 동행자 찾기</p>
					</div>
        <div class="container">
       				 
            <form action='<c:url value="/flight"/>' id="booking-form" class="booking-form" method="GET">
                <div class="form-group">
                <div class="form-destination">
                        <label for="destination">출발지</label>
                        <input type="text" id="from" name="from" placeholder="EG. BUSAN" />
                    </div>
                    <div class="form-destination">
                        <label for="destination">도착지</label>
                        <input type="text" id="destination" name="destination" placeholder="EG. HAWAII" />
                    </div>
                    <div class="form-date-from form-icon">
                        <label for="date_from">가는날</label>
                        <input type="text" id="date_from" class="date_from" placeholder="Pick a date" />
                        <!-- <span class="icon"><i class="zmdi zmdi-calendar-alt"></i></span> -->
                    </div>
                    <div class="form-date-to form-icon">
                        <label for="date_to">오는날</label>
                        <input type="text" id="date_to" class="date_to" placeholder="Pick a date" />
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

    </div>


	<!-- Bootstrap core JavaScript -->
<!-- 	<script src="./resources/assets/jquery/jquery.slim.min.js"></script> -->
<!-- 	<script src="./resources/assets/js/bootstrap.bundle.min.js"></script> -->
	
	    <!-- JS -->
    <script src="./resources/assets/js/jquery.min.js"></script>
    <script src="./resources/assets/js/jquery-ui.min.js"></script>
    <script src="./resources/assets/js/index_main.js"></script>
</body>

</html>
