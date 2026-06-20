<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>43_connection</title>
</head>
<body>
	<%
		Connection conn = null;
		try{
			String url = "jdbc:oracle:thin:localhost:1521:xe";
			String user = "C##dbexam";
			String pw = "m1234";
					
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pw);
			out.println("DB 연결 성공");
		} catch(ClassNotFoundException e) {
			out.println("DB 연결 실패");
			e.printStackTrace();
		} finally {
			if (conn != null ) conn.close();
		}

	%>
</body>
</html>