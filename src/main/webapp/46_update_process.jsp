<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>46_update_process</title>
</head>
<body>

	<%@ include file="dbconn.jsp" %>
	
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String userPw = request.getParameter("pw");
		String name = request.getParameter("name");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try { 
			String sql = "select name, pw from memTest where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				String r_pw = rs.getString("pw");
				if(userPw.equals(r_pw)){
					sql = "update memTest set name=? where id=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, name);
					pstmt.setString(2, id);
					pstmt.executeQuery();
					out.println("회원데이터 수정이 성공하였습니다.");
					pstmt.close();
				} else {
					out.println("비밀번호가 일치하지 않습니다.");
				}
			} else {
				out.println("해당 아이디가 없습니다.");
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