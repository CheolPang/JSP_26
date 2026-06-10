<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_expression</title>
</head>
<body>
	<p>
		오늘의 날짜
		<%=new java.util.Date()%>
		<%=java.util.Calendar.getInstance().getTime()%>
	</p>
</body>
</html>