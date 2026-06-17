<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>27_locale</title>
</head>
<body>
	<%
		Locale locale = request.getLocale();
		String country = locale.getDisplayCountry();
		String language = locale.getDisplayLanguage();
		String langcode = locale.getLanguage();
		String countrycode = locale.getCountry();
		NumberFormat currency = NumberFormat.getCurrencyInstance(locale);
		String currencyFormat = currency.format(12345678);
	%>
	<p>국가 : <%=country %></p>
	<p>언어 : <%=language %></p>
	<p>언어코드 : <%=langcode %></p>
	<p>국가코드 : <%=countrycode %></p>
	<p>통화형식 : <%=currencyFormat %></p>	
</body>
</html>