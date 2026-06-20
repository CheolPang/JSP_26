<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>44_insert_process</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String userPw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		PreparedStatement pstmt = null;
		try{ 
			String sql = "insert into memTest values (?, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, userPw);
			pstmt.setString(3, name);
			pstmt.executeUpdate();
			out.println("회원가입이 성공하였습니다.");
		} catch(SQLException e){
			out.println("회원가입이 실패하였습니다.");
			out.println(e.getMessage());
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
			if(conn != null) { 
				conn.close();
			}
		}
	%>
</body>
</html>