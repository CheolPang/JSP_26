<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_data</title>
</head>
<body>
	<p>아이디 : <%= request.getParameter("id") %></p>
	<p>메모 : <%=URLDecoder.decode(request.getParameter("memo"), "UTF-8") %></p>
	<%
		String name = request.getParameter("name");
		
	%>
	<p>이름 : <%=URLDecoder.decode(name, "UTF-8") %></p>
</body>
</html>