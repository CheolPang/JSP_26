<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09_getProperty</title>
</head>
<body>
	<jsp:useBean id="person" class="com.dao.Person"/>
	
	<p>아이디 : <%= person.getId() %></p>
	<p>이름 : <%= person.getName() %></p>
	
	<p>아이디2 : <jsp:getProperty property="id" name="person"/></p>
	<p>이름2 : <jsp:getProperty property="name" name="person"/></p>
</body>
</html>