<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_declaration</title>
</head>
<body>
	<%! 
		int sum(int a, int b) {
		return a+b;
	}
	String makeItLower(String data) {
		return data.toLowerCase();
	}
	%> <!-- 선언문태그 : 전역변수나 전역 메소드 정의 -->
	<%
		out.println("2+3=" + sum(2,3)+"<br>");
		out.println(makeItLower("Hello, World"));
		out.println("<br>");
		int a=2;
		int b=3;
		int sum = a*b;
		out.println("a * b = "+sum);
		out.println("<br>");
		for (int i=0; i<=10; i++) {
			if (i%2==0) out.println(i+"<br>");
		}
	%> <!-- 스크립트릿 : 지역변수나 로직 -->
	
	
</body>
</html>