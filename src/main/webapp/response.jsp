<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response</title>
</head>
<body>
	<%
	Calendar calendar = Calendar.getInstance();
	String ap;
	int apm = calendar.get(Calendar.AM_PM);
	if (apm == 0) {
		ap = "AM";
	} else {
		ap = "PM";
	}
	out.println("현재 시간은 "+calendar.get(Calendar.HOUR)+":"+(Calendar.MINUTE)+":"+(Calendar.SECOND)+" "+ap);
	%>

	<%
		response.setIntHeader("refresh", 5);
	%>
	<br>
	<a href="response_data.jsp"><br>구글 홈페이지로 이동하기</a>
	
</body>
</html>