<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러</title>
</head>
<body>
	<h1>에러발생</h1>
	<p>에러가 발생하였습니다.</p>
	<% 
		exception.printStackTrace(new java.io.PrintWriter(out));
	%>
</body>
</html>