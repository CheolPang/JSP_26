<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>47_delete</title>
</head>
<body>
	<h3>회원탈퇴</h3>
	<form action="47_delete_process.jsp">
		<p>아이디 <input type="text" name="id"/></p>
		<p>비번 <input type="password" name="pw"/></p>
		<input type="submit" value="회원탈퇴"/>
	</form>
</body>
</html>