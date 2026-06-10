<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_taglib</title>
</head>
<body>
	<h1>taglib 디렉티브 태그</h1>
	<h4>태그 라이브러리 종류</h4>
	<ul>
		<li>표현언어</li>
		<li>JSTL</li>
		<li>사용자 정의 태그 등</li>
	</ul>
	사용방법은 <%-- <%@ taglib prefix="태그 식별자" uri="정의태그의 설정 정보를 가진 경로주소" %> --%>의 형식을 갖는다.
	<c:forEach var="k" begin="1" end="10" step="2">
		<c:out value="${k}"/>
	</c:forEach>
	
</body>
</html>