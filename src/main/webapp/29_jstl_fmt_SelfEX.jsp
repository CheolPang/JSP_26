<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>locale</title>
</head>
<body>
    <fmt:setLocale value="${param.language}"/>
    <fmt:setBundle basename="com.locale.locale"/>

    <a href="?language=ko">Korean</a>
    <a href="?language=en">English</a>
    
    <form action="#" method="post">
        <p>
            <label for="id">
                <fmt:message key="id"/>
            </label>
            <input type="text" name="id"/>
        </p>
        <p>
            <label for="pw">
                <fmt:message key="pw"/>
            </label>
            <input type="password" name="pw"/>
        </p>
    </form> 
</body>
</html>