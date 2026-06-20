<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>47_delete_process</title>
</head>
<body>

	<%@ include file="dbconn.jsp" %>
	
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String userPw = request.getParameter("pw");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try { 
			String sql = "select * from memTest where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				String r_id = rs.getString("id");
				String r_pw = pw;
				if(userPw.equals(r_pw) && id.equals(r_id)){
					sql = "delete memTest where id=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, id);
					pstmt.executeUpdate();
					out.println("해당 아이디와 비밀번호를 가진 사용자가 회원탈퇴되었습니다.");
					pstmt.close();
				} else {
					out.println("아이디, 비밀번호가 일치하지 않습니다.");
				}
			} else {
				out.println("Member테이블에 일치하는 아이디가 없습니다.");
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