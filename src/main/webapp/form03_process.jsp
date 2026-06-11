<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form03_process</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String[] fruits = request.getParameterValues("fruits");
	%>
	<h4>선택한 과일</h4>
	<%
		if(fruits!=null) {
			for(int i = 0; i<fruits.length; i++){
				out.print(" "+fruits[i]);
			}
		}
		%>
</body>
</html>