<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>21_fileupload</title>
</head>
<body>
	<form action="21_process.jsp" method="post" enctype="multipart/form-data">
		<p>토픽 1 <input type="text" name="title1"/></p>
		<p>파일 1 <input type="file" name="file1"/></p>
		
		<p>토픽 2 <input type="text" name="title2"/></p>
		<p>파일 2 <input type="file" name="file2"/></p>
		
		<p>토픽 3 <input type="text" name="title3"/></p>
		<p>파일 3 <input type="file" name="file3"/></p>
	
		<input type="submit" value="파일 올리기"/>
	</form>
</body>
</html>