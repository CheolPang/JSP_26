<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>25_validation.jsp</title>
<script>
	function checkForm(){
		var form = document.loginForm;
		if(form.id.value==""){
			alert("아이디를 입력해주세요");
			form.id.focus();
			return false;
		}
		/* 아이디는 영문 소문자로만, 비번은 숫자로만 입력 가능하도록 조건 만들기 */
		for(i=0; i<form.id.value.length; i++){
			var ch = form.id.value.charAt(i);
			if(ch < 'a' || ch > 'z') {
				alert("아이디는 영문 소문자로만 입력 가능합니다.")
				form.id.select();
				return;
			}
		}
		
		if(!form.pw.value){
			alert("비밀번호를 입력해주세요");
			form.pw.focus();
			return false;
		} else if(isNaN(form.pw.value)) {
			alert("비번은 숫자로만 입력 가능합니다.")
			form.pw.select();
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