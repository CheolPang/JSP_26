<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_declaration</title>
</head>
<body>
	<%! int sum(int a, int b) {
		return a+b;
	}
	%> <!-- 선언문태그 : 전역변수나 전역 메소드 정의 -->
	<%
		out.println("2+3=" + sum(2,3));
	%>
</body>
</html>