<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12_request</title>
</head>
<body>
	<form action="20_process.jsp" method="post" enctype="multipart/form-data">
		<p>이름 : <input type="text" name="name"/></p>
		<p>제목 : <input type="text" name="title"/></p>
		<p>파일 업로드 : <input type="file" name="filename"/></p>
		<p><input type="submit" value="전송"/></p>
	</form>
</body>
</html>