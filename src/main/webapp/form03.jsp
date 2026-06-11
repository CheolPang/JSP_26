<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form03</title>
</head>
<body> 
	<form action="form03_process.jsp">
		<label for="orange">오렌지</label>
		<input type="checkbox" name="fruits" value="orange" id="orange"/>
		<label for="apple">사과</label>
		<input type="checkbox" name="fruits" value="apple" id="apple"/>
		<label for="banana">바나나</label>
		<input type="checkbox" name="fruits" value="banana" id="banana"/>
		<br>
		<label for="file">과일 이미지 업로드</label>
		<input type="file" name="file"/>
		<input type="submit" value="전송">
	</form>
</body>
</html>