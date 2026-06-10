<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome</title>
</head>
<body>
	<header>
		<nav class="navBar">
			<h1>JSP Server</h1>
		</nav>
	</header>

	<section>
		<div class="main">
			<h2>
				h2 Text style<br>
				A+B = <%
				int a = 1;
				int b = 5;
				out.print(a+b);%>
			</h2>
			<h3>h3 Text style</h3>
			<h4>h4 Text style</h4>
			<h5>h5 Text style</h5>
		</div>
	</section>
	<footer>
		
	</footer>
</html>