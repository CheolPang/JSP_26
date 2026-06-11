<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14_request</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<h3>request 내장객체가 가지고 있는 주요 메소드</h3>
	<p>클라이언트 IP : <%=request.getRemoteAddr() %></p>
	<p>요청 정보 크기 : <%=request.getContentLength() %></p>
	<p>요청 정보 인코딩 : <%=request.getCharacterEncoding() %></p>
	<p>요청 정보 컨텐츠 유형 : <%=request.getContentType() %></p>
	<p>요청 정보 프로토콜 : <%=request.getProtocol() %></p>
	<p>요청 정보 전송방식 : <%=request.getMethod() %></p>
	<p>요청 URI : <%=request.getRequestURI() %></p>
	<p>요청 URL : <%=request.getRequestURL() %></p>
	<p>컨텍스트 경로 : <%=request.getContextPath() %></p>
	<p>서버 이름 : <%=request.getServerName() %></p>
	<p>서버 포트 : <%=request.getServerPort() %></p>
	<p>쿼리문 : <%=request.getQueryString() %></p>
</body>
</html>