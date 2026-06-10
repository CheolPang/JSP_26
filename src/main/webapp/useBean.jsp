<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<jsp:useBean id="bean" class="com.dao.GuGuDan"/>
	<%
		out.println(bean.process(5));
	%>
	
	
</body>
</html>