<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>21_process</title>
</head>
<body>
	<%
		MultipartRequest multi = new MultipartRequest(request, "C:/upload", 5*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
		int count=3;
		String[] topics = new String[count];
		String[] filenames = new String[count];
		
		//name에 대한 속성 저장
		for(int i=0; i<count; i++) {
			topics[i] = multi.getParameter("title"+(i+1)); 
		}
		
		//파일명 저장
		Enumeration files = multi.getFileNames();
		for (int i = count-1; i>=0 && files.hasMoreElements(); i--){
			String file = (String)files.nextElement();
			filenames[i] = multi.getFilesystemName(file);
		}
		
	%>
	<table border="1">
	<!-- tr>th*3>{토픽} -->
		<tr>
			<th>토픽</th>
			<th>파일</th>
		</tr>
	
	<%
		for(int i=0; i<count; i++) {
	%>	
	<tr>
		<td><%=topics[i] %></td>
		<td><%=filenames[i] %></td>
	</tr>
	<%
		}
	%>
	</table>
</body>
</html>