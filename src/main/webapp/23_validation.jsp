<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>23_validation</title>
<script type="text/javascript">
	function checkForm(){
		var form = document.loginForm;
		if(form.id.value==""){
			alert("아이디를 입력해주세요");
			form.id.focus();
			return false;
		} else if(form.pw.value==""){
			alert("비밀번호를 입력해주세요");
			form.pw.focus();
			return false;
		}
		form.submit();
	}
</script>
</head>
<body>
	<form action="23_process.jsp" method="post" name="loginForm">
		<p>아이디 : <input type="text" name="id"/></p>
		<p>비밀번호 : <input type="password" name="pw"/></p>
		<p><input type="button" value="전송" onclick="checkForm()"/></p>
	</form>
</body>
</html>