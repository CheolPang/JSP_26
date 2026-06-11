<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_param</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<jsp:forward page="10_data.jsp">
		<jsp:param value="admin" name="id"/>
		<jsp:param value='<%=URLEncoder.encode("메모를 남김", "UTF-8") %>' name="memo"/>
		<jsp:param value='<%=URLEncoder.encode("관리자", "UTF-8") %>' name="name"/>
	</jsp:forward>
</body>
</html>