<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>33_arithmeticException_error</title>
</head>
<body>
	ArithmeticException 발생하였습니다.
	<p>입력한 숫자1 : <%=request.getParameter("num1") %></p>
	<p>입력한 숫자2 : <%=request.getParameter("num2") %></p>
</body>
</html>