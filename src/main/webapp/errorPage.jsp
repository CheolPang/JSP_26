<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorPage</title>
</head>
<body>
	<%
	int a = 123123;
	int b = 0;
	int c = a/b;
	out.print(a+"/"+b+"="+c);
	%>
</body>
</html>