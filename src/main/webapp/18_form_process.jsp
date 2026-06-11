<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>18_form_process</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		// String hobby1 = request.getParameter("hobby1");
		// String hobby2 = request.getParameter("hobby2");
		// String hobby3 = request.getParameter("hobby3");
		String sayHello = request.getParameter("sayHello");
	%>
	<p>아이디 : <%=id%></p>
	<p>비번 : <%=pw %></p>
	<p>이름 : <%=name%></p>
	<p>연락처 : <%=phone1%> - <%=phone2%> - <%=phone3%></p>
	<p>성별 : <%=gender%></p>
	<p>취미 : 
		<%
			if(hobby !=null) {
				for(int i = 0; i<hobby.length; i++){
					out.print(" "+hobby[i]);
				}
			}
		%>
	</p>
	<p>가입인사 : <%=sayHello%></p>
</body>
</html>