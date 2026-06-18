<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>33_exceptionType_error</title>
</head>
<body>
	NumberFormatException 발생하였습니다.<br>
	예외유형 <%=exception.getClass().getName() %><br>
	오류메세지 <%=exception.getMessage() %>
</body>
</html>