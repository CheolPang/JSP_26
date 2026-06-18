<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="32_errorMove.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>32_errorPage</title>
</head>
<body>
	<%=request.getParameter("name").toUpperCase() %>
</body>
</html>