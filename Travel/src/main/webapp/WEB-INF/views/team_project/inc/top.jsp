<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
<%
String id=(String)session.getAttribute("id");

%>
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
					<li class="nav-item"><a class="nav-link" href="board">여행스토리</a></li>
					<li class="nav-item"><a class="nav-link" href="community">커뮤니티</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="cs">고객센터</a>
					</li>
							
					
					<li class="nav-item">
					<%
						if(id==null){ 
							%><div id="login"><a class="nav-link"  href="/member/loginForm.jsp">로그인</a></div>
							<%
						}else{
							%><div id="login"><a class="nav-link"  href="/member/memberInfo.jsp"><%=id %>님</a></div>
							<%
						}
						%>
					</li>
					
				</ul>
			</div>
		</div>
	</nav>
</header>