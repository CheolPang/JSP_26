<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>24_validation.jsp</title>
<script>
	function checkForm(){
		var form = document.loginForm;
		/* 데이터의 길이 확인하기 */
		if(form.id.value.length < 4 || form.id.value.length > 12){
			alert("아이디는 4~12자 이내로 입력 가능합니다.");
			form.id.focus();
			return false;
		}
		if(form.pw.value.length < 4){
			alert("비번은 4자 이상으로 입력 가능합니다.");
			form.pw.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<body>
	<form action="24_process.jsp" method="post" name="loginForm">
		<p>아이디 : <input type="text" name="id"/></p>
		<p>비밀번호 : <input type="password" name="pw"/></p>
		<p><input type="button" value="전송" onclick="checkForm()"/></p>
	</form>
</body>
</html>