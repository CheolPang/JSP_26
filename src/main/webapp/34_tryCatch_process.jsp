<%@page import="java.lang.reflect.Parameter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>34_tryCatch_process</title>
</head>
<body>
	<%
		try{
			String num1 = request.getParameter("num1");
			String num2 = request.getParameter("num2");
			
			int a = Integer.parseInt(num1);
			int b = Integer.parseInt(num2);
			int c = a/b;
			out.print(num1+"/"+num2+"="+c);
		}catch(NumberFormatException e){
			RequestDispatcher dispatcher = request.getRequestDispatcher("33_exceptionType_error.jsp");
			dispatcher.forward(request, response);
		}catch(ArithmeticException e){
			RequestDispatcher dispatcher = request.getRequestDispatcher("33_arithmeticException_error.jsp");
			dispatcher.forward(request, response);
		}
	%>
</body>
</html>