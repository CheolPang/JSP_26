<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12_process</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("id");
		String userPw = request.getParameter("pw");
	%>
	<p>아이디 : <%=userId %></p>
	<p>비번 : <%=userPw %></p>
</body>
</html>