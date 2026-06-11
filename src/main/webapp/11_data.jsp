<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11_data</title>
</head>
<body>
	<h4>서브 페이지</h4>
	<%
		String title = request.getParameter("title");
	%>
	<p><%=URLDecoder.decode(title, "UTF-8") %></p>
	<p><%=request.getParameter("date") %></p>
</body>
</html>