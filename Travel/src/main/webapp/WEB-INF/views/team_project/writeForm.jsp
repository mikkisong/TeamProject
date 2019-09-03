<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>게시판 글쓰기</h2>
<form action='<c:url value="/board/write"/>' method="post">
<table border="1">

<select name="notice">
	<option value="nomal">일반</option>
	<option value="notice">공지</option>
</select>
<tr><td>제목</td><td><input type="text" name="subject"></td></tr>
<tr><td>글내용</td>
<td><textarea name="content" rows="10" cols="20">이 부분에 에디터 들여올 예정</textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="글쓰기"></td></tr>
</table>
</form>
</body>
</html>
