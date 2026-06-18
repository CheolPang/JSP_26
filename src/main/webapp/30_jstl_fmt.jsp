<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>30_jstl_fmt</title>
</head>
<body>
	<h3>fmt:formatNumber태그는 숫자를 형식에 맞춰 출력하는 태그이다.</h3>
	<p>
		1. 숫자: 타입을 생략하면 기본타입은 number
		<fmt:formatNumber value="1244500" />
	</p>
	<p>
		1. 숫자: 타입을 number
		<fmt:formatNumber value="1244500" type="number" />
	</p>
	<p>
		1. 숫자: 타입을 currency
		<fmt:formatNumber value="1244500" type="currency" />
	</p>
	<p>
		1. 숫자: 타입을 percent
		<fmt:formatNumber value="1244500" type="percent" />
	</p>
	<p>
		1. 숫자: 타입을 minIntegerDigits와 minFractionDigits
		<fmt:formatNumber value="50000001244500.4567" minIntegerDigits="10" minFractionDigits="3" />
	</p>
	<p>
		1. 숫자
		<fmt:formatNumber value="1244500.45" pattern="000,000.000" />
	</p>
	<p>
		1. 숫자
		<fmt:formatNumber value="1244500.45" pattern="###,###.#" />
	</p>
	<p>
		1. 숫자
		<fmt:formatNumber value="1244500.45" pattern="#,#00.0#" />
	</p>
	<p>
		1. 숫자
		<fmt:formatNumber value="1244500.45" groupingUsed="true" />
	</p>
	<p>
		1. 숫자
		<fmt:formatNumber value="1244500.45" groupingUsed="false" />
	</p>
</body>
</html>