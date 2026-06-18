<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>36_session</title>
</head>
<body>
	<%
		String user_id = (String) session.getAttribute("userId");
		String user_pw = (String) session.getAttribute("userPw");
		String test = (String) session.getAttribute("test");
		
		out.println("설정된 세션의 속성값: "+user_id+"<br>");
		out.println("설정된 세션의 속성값: "+user_pw+"<br>");
		out.println("설정된 세션의 속성값: "+test+"<br>");
	%>
</body>
</html>