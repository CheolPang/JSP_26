<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int pageCount = 0;
	void addCount() {
		pageCount++;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
	<h1>CheolPang</h1>
	<%
		addCount();
	%>
	<h2>이 사이트 방문은 <%=pageCount %>번째 입니다.</h2>
</body>
</html>