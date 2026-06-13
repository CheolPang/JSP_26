<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>22_process</title>
</head>
<body>
	<%
		DiskFileUpload upload = new DiskFileUpload();
		String path = "C:/upload";
		upload.setSizeMax(100000000);
		upload.setSizeThreshold(5000);
		upload.setRepositoryPath(path);
		
		List items = upload.parseRequest(request);
		Iterator params = items.iterator();
		while(params.hasNext()){
			FileItem fileItem = (FileItem) params.next();
			if(!fileItem.isFormField()) {
				//업로드된 파일 (경로 포함)의 이름을 얻어온다.
				String fileName = fileItem.getName();
				out.println(fileName+"<br>");
				//요청 파라미터의 이름을 얻어온다.
				String fileFieldName = fileItem.getFieldName();
				String contentType = fileItem.getContentType();
				out.println(contentType+"<br>");
				long fileSize = fileItem.getSize();
				out.println(fileSize+"<br>");
			}
		}
	%>
</body>
</html>