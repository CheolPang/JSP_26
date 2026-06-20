<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>48_final_process</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<h3>입력한 데이터가 서버에 저장되었습니다.</h3>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>학과</th>
			<th>이름</th>
			<th>주소</th>
			<th>연락처</th>
		</tr>
	<%
		request.setCharacterEncoding("UTF-8");
		ResultSet rs = null;
		String number = request.getParameter("number");
		int num = Integer.parseInt(number);
		String depart = request.getParameter("depart");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String call = request.getParameter("call");
		
		PreparedStatement pstmt = null;
		try{ 
			String sql = "insert into ExerciseDB values (?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, depart);
			pstmt.setString(3, name);
			pstmt.setString(4, address);
			pstmt.setString(5, call);
			pstmt.executeUpdate();
			
			if(pstmt != null) pstmt.close();
			
			sql = "select * from ExerciseDB";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String dbNum = rs.getString("num");     
				String dbDepart = rs.getString("depart");   
				String dbName = rs.getString("name"); 
				String dbAddress = rs.getString("address"); 
				String dbCall = rs.getString("phone"); 
	%>
				<tr>
					<td><%= dbNum %></td>
					<td><%= dbDepart %></td>
					<td><%= dbName %></td>
					<td><%= dbAddress %></td>
					<td><%= dbCall %></td>
				</tr>
	<%
			}
			
		} catch(SQLException e){
			out.println("실패하였습니다." + e.getMessage());
		} finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close(); 
			if(conn != null) conn.close(); 
		}
	%>
	</table>
</body>
</html>