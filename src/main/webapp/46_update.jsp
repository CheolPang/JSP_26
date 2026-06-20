<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>46_update</title>
</head>
<body>
	<h3>회원정보수정</h3>
	<p>아이디, 비번 입력 후 수정할 이름을 입력하세요.</p>
	<form action="46_update_process.jsp">
		<p>아이디 <input type="text" name="id"/></p>
		<p>비번 <input type="password" name="pw"/></p>
		<p>수정할 이름 <input type="text" name="name"/></p>
		<input type="submit" value="회원정보수정"/>
	</form>
</body>
</html>