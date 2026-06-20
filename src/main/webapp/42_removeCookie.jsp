<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>42_removeCookie</title>
</head>
<body>
	<h3>쿠키 삭제</h3>
	<% 
		Cookie[] cookies = request.getCookies();
		for(int i=0; i<cookies.length; i++) {
			cookies[i].setMaxAge(20);
			response.addCookie(cookies[i]);
		}
		//response.sendRedirect("40_cookie.jsp");
	%>
</body>
</html>