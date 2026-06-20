<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dbconn</title>
</head>
<body>
	<%
	Connection conn = null;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "C##dbexam";
	String pw = "m1234";
			
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, user, pw);
	%>
</body>
</html>