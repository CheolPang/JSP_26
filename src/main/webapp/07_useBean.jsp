<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_useBean</title>
</head>
<body>
	<jsp:useBean id="bean" class="com.dao.Calculator"/>
	<% 
		int m = bean.process(5);
		out.println("5의 3제곱은 "+m+"이다.");
	%>
</body>
</html>