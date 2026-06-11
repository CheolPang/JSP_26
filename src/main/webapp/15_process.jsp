<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>15_process</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("id");
		String userPw = request.getParameter("pw");
		if(userId.equals("관리자") && userPw.equals("1234")) {
			response.sendRedirect("15_success.jsp");
		} else {
			response.sendRedirect("15_fail.jsp");
		}
	%>
</body>
</html>