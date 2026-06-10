<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_pageImport</title>
</head>
<body>
	<%@ page import="java.util.Date" %>
	<%=new Date()%>
	<% 
		String str = null;
		out.println(str.toString());
	%>
</body>
</html>