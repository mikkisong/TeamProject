<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
<%
String id=(String)session.getAttribute("id");

%>
<style>
li.nav-item {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.nav-item a:hover {color: #f1f1f1;}

.nav-item:hover .dropdown-content {
  display: block;
}

</style>
<div class="clear"></div>
<!-- 로고들어가는 곳 -->
<!-- 로고들어가는 곳 -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
		<div class="container">
			<a class="navbar-brand" href="index">WeTravel</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="index">홈
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="board">여행스토리</a>
					 <div class="dropdown-content">
					      <a href="#">여행후기</a>
					      <a href="#">소소한 팁</a>
					      <a href="#">여행갤러리</a>
					    </div>
					</li>
					<li class="nav-item"><a class="nav-link" href="community">커뮤니티</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="qna">고객센터</a>
					</li>
							
					
					<li class="nav-item">
					<%
						if(id==null){ 
							%><div id="login"><a class="nav-link"  href="login">로그인</a></div>
							<%
						}else{
							%><div id="login"><a class="nav-link"  href="memberInfo"><%=id %>님</a></div>
							<%
						}
						%>
					</li>
					
				</ul>
			</div>
		</div>
	</nav>
</header>