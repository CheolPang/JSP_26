<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>23_process</title>
</head>
<body>
	<h3>입력에 성공했습니다.</h3>
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	%>
	<p> 아이디 : <%= id %>
	<p> 비번 : <%= pw %>
</body>
</html>