<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_process</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		session.setAttribute("userID", id);
		session.setAttribute("userPW", pw);
		
		response.sendRedirect("welcome.jsp");
	%>
</body>
</html>