<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>16_response</title>
</head>
<body>
	<p>이 페이지는 5초마다 새로고침됩니다.</p>
	<%
		response.setIntHeader("refresh", 5);
	%>
	<p><%=new java.util.Date() %>
</body>
</html>