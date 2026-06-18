<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>35_process</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		session.setAttribute("userId", id);
		session.setAttribute("userPw", pw);
		out.println("세션 설정 성공");
		out.println(id+"님 환영합니다.");
		
	%>
</body>
</html>