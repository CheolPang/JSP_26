<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>26_process</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<p>직원번호 : <%=request.getParameter("empNo")%></p>
	<p>아이디 : <%=request.getParameter("id")%></p>
	<p>비번 : <%=request.getParameter("pw")%></p>
	<p>이름 : <%=request.getParameter("name")%></p>
	<p>연락처 : <%=request.getParameter("phone")%></p>
	<p>이메일 : <%=request.getParameter("email")%></p>
</body>
</html>