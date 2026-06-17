<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>validation01</title>
<script>
 	function check(){	 
 		var form = document.loginForm;
 		var id = form.id.value;
 	    var pw = form.pw.value;
 	    
	 	if(form.id.value == "") {
	 		alert("아이디를 입력해주세요")
	 		form.id.focus();
	 		return;
	 	}
	 	if(pw.includes(id)) {
	 		alert("비밀번호는 아이디를 포함할 수 없습니다.")
	 		form.pw.select();
	 		return;
	 	}
	 	form.submit();
	}
</script>
</head>
<body>
	<form action="validation01_process.jsp" method="post" name="loginForm">
		<p>아이디 : <input type="text" name="id"/></p>
		<p>비밀번호 : <input type="password" name="pw"/></p>
		<p><input type="button" value="전송" onclick="check()"/></p>
	</form>
</body>
</html>