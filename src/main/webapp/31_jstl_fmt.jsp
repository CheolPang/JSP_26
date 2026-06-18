<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>31_jstl_fmt</title>
</head>
<body>
	<h3>fmt:formatDate 날짜 정보를 담고 있는 객체를 형식화해서 출력하는 태그</h3>
	<p><jsp:useBean id="now" class="java.util.Date"/></p>
	<p><fmt:formatDate value="${now}" type="date"/></p>
	<p><fmt:formatDate value="${now}" type="time"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></p>
	<p><fmt:formatDate value="${now}" type="both" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초 E요일"/></p>
	
	<h3>fmt:timeZone 는 나라별로 시간을 처리하는 태그</h3>
	<p> 
	<fmt:timeZone value="America/New_York">
		뉴옥 : <fmt:formatDate value="${now}" timeStyle="full" dateStyle="full" type="both"/>		
	</fmt:timeZone></p>
	<fmt:timeZone value="Europe/London">
		런던 : <fmt:formatDate value="${now}" timeStyle="full" dateStyle="full" type="both"/>		
	</fmt:timeZone></p>
</body>
</html>