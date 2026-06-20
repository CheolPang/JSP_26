<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>40_cookie_process</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("") || pw.equals("")){
			out.println("쿠키 생성이 실패했습니다.");
		} else {
			Cookie cookie_id = new Cookie("userID", id);
			Cookie cookie_pw = new Cookie("userPW", pw);
			
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			out.println("쿠키 생성이 성공했습니다.");
			out.println(id+"님 환영합니다.");
		}
	%>
</body>
</html>