<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>33_errorCode</title>
</head>
<body>
	<h2>web.xml파일을 이용한 에러처리</h2>
	<form action="33_errorCode_process.jsp">
		<p>숫자 1: <input type="text" name="num1"></p>
		<p>숫자 2: <input type="text" name="num2"/></p>
		<input type="submit" value="나누기"/>
	</form>
</body>
</html>