<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>28_jstl_fmt</title>
</head>
<body>
	<h3>jstl_fmt 태그 : 다국어 문서 처리를 위한 국제화 및 지역화 태그</h3>
	<p>한국 지역화</p>
	<fmt:setLocale value="ko"/>
	<fmt:bundle basename="com.bundle.myBundle">
		<p>제목 : <fmt:message key="title"/></p>
		<p>제품명 : <fmt:message key="productName"/></p>
	</fmt:bundle>
	<p>영어 지역화</p>
	<fmt:setLocale value="en"/>
	<fmt:bundle basename="com.bundle.myBundle">
		<p>제목 : <fmt:message key="title"/></p>
		<p>제품명 : <fmt:message key="productName"/></p>
	</fmt:bundle>
	
	<mark>속성값을 또 다른 변수에 저장</mark>
	<fmt:setBundle basename="com.bundle.myBundle" var="bundle"/>
		<p>제목 : <fmt:message key="title" var="webTitle" bundle="${bundle}"/></p>
		<p>제품명 : <fmt:message key="productName" var="webProduct" bundle="${bundle}"/></p>
		
		<p>변수를 활용한 제목 : ${webTitle}</p>
		<p>변수를 활용한 제품명 : ${webProduct}</p>
</body>
</html>