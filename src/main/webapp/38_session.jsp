<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>38_session</title>
</head>
<body>
	<h3>세션 삭제</h3>
	<hr />
	삭제 전<br />
	<%
		String user_id = (String) session.getAttribute("userId");
		String user_pw = (String) session.getAttribute("userPw");
		String jSessionId = session.getId();
		
		out.println("설정된 세션의 속성값: "+user_id+"<br>");
		out.println("설정된 세션의 속성값: "+user_pw+"<br>");
		out.println("jSessionId: "+jSessionId+"<br>");	
		
		//session.removeAttribute("userId");
		session.invalidate();
	%>
	<hr />
	삭제 후<br />
	<%
		//user_id = (String) session.getAttribute("userId");
		//user_pw = (String) session.getAttribute("userPw");
		//jSessionId = session.getId();
		
		//out.println("설정된 세션의 속성값: "+user_id+"<br>");
		//out.println("설정된 세션의 속성값: "+user_pw+"<br>");
		//out.println("jSessionId: "+jSessionId+"<br>");
		if(request.isRequestedSessionIdValid() == true){
			out.print("세션이 유효합니다.");
		} else {
			out.print("세션이 유효하지 않습니다.");
		}
	%>
</body>
</html>