<%@page import="java.util.Date"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>39_session</title>
</head>
<body>
	<%
		String user_id = (String) session.getAttribute("userId");
		String user_pw = (String) session.getAttribute("userPw");

		int time_before = session.getMaxInactiveInterval();
		out.print("세션 유효시간 : "+time_before+"초<br>");
		session.setMaxInactiveInterval(600);
		int time_after = session.getMaxInactiveInterval();
		out.print("세션 유효시간 변경 후 : "+time_after+"초<br>");
	%>
	<h2>웹사이트에서 유지한 시간 출력하기</h2>
	<%
		String jSessionId = session.getId();
		out.print("세션 아이디 : "+jSessionId+"<br>");
		Date date = new Date();
		date.setTime(session.getCreationTime());
		out.print("요청 시작시간 : "+date+"<br>");
		date.setTime(session.getLastAccessedTime());
		out.print("마지막 요청시간 : "+date+"<br>");
		out.print("요청 경과시간 : "+(session.getLastAccessedTime()-session.getCreationTime())/(1000*60)+"분<br>");
	%>
</body>
</html>