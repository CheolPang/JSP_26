<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_selfEX</title>
</head>
<body>
	<p>
		현재 날짜 : 
		<%=new java.util.Date()%>
		<br>
		5의 제곱 : 
		<%
			double num = 5;
			double zegop = num*num;
			out.println(zegop);
		%>
	</p>
</body>
</html>