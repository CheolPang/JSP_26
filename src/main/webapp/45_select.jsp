<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>45_select</title>
</head>
<body>

	<%@ include file="dbconn.jsp" %>
	
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
		</tr>
	<%
		request.setCharacterEncoding("UTF-8");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try { 
			String sql = "select * from memTest";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String dbId = rs.getString("id");     
				String dbPw = rs.getString("pw");   
				String dbName = rs.getString("name"); 
	%>
				<tr>
					<td><%= dbId %></td>
					<td><%= dbPw %></td>
					<td><%= dbName %></td>
				</tr>
	<%
			}
			
		} catch(SQLException e) {
			out.println(e.getMessage());
		} finally {
			if(rs != null) rs.close(); 
			if(pstmt != null) pstmt.close(); 
			if(conn != null) conn.close();
		}
	%>
	</table>
	</body>
</html>