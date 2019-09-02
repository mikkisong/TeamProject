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

<title>최저가 항공권 결과</title>

<!-- Bootstrap core CSS -->
<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet">
<script src="./resources/jquery-3.4.1.js"></script>
<script type="text/javascript">
	// 마우스 포커스 활성화 시 placeholder 삭제
</script>
</head>

<body>
	<!-- 헤더가 들어가는 곳 -->
	<jsp:include page="../inc/top.jsp" />
	<!-- 헤더가 들어가는 곳 -->

	<h1>최저가 항공권 결과</h1>
	
	<table border="1px solid #fff">
		<tr>
			<td>여행지</td><td>비행날짜</td><td>비행시간</td><td>인원수</td><td>좌석 등급</td><td>항공사</td><td>가격</td>
		</tr>
		<c:forEach var="bean" items="${list }">
		<tr>
			<td>${bean.trip }</td><td>${bean.date }</td><td>${bean.time }</td><td>${bean.count }</td><td>${bean.comp }</td><td>${bean.airline }</td><td>${bean.fare }</td>
		</tr>
		</c:forEach>
	</table>
	



	<!-- Bootstrap core JavaScript -->
	<script src="resources/assets/jquery/jquery.slim.min.js"></script>
	<script src="resources/assets/js/bootstrap.bundle.min.js"></script>
</body>

</html>
