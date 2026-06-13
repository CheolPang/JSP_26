<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20_process</title>
</head>
<body>
	<%
	MultipartRequest multi = new MultipartRequest(request, "C:/upload", 5 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());
	Enumeration params = multi.getParameterNames();
	while (params.hasMoreElements()){
		String name = (String) params.nextElement();
		String value = multi.getParameter(name);
		out.println(name+"="+value+"<br>");
	}
	
	out.println("-----------------<br>");
	
	Enumeration files = multi.getFileNames();
	while (files.hasMoreElements()){
		String name = (String) files.nextElement();
		String filename = multi.getFilesystemName(name);
		String original = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		File file = multi.getFile(name);
		out.println("name:"+name+"<br>");
		out.println("filename:"+filename+"<br>");
		out.println("original:"+original+"<br>");
		out.println("type:"+type+"<br>");
		out.println("file:"+file+"<br>");
		
		if(file != null) out.println("파일 크기 : "+file.length()/1024+"MByte");
	}
	%>
</body>
</html>