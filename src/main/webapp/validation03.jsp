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
 	    var rePw = form.rePw.value;
 	   	var regExPwCombi = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]).{8,}$/;
 	    
 	    
 	   	if(!regExPwCombi.test(pw)) {
	 		alert("영문 + 숫자 + 특수기호 8자리 이상으로 구성하여야 합니다.");
	 		form.pw.select();
	 		return;
	 	}
 	   	
 	   	if(pw != rePw) {
 			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
 			form.rePw.select();
 			return;
 		}
	 	
	 	
	 	form.submit();
	}
 	
 	
</script>
</head>
<body>
	<form action="validation03_process.jsp" method="post" name="loginForm">
		<p>아이디 : <input type="text" name="id"/></p>
		<p>비밀번호 : <input type="password" name="pw"/></p>
		<p>비밀번호 확인 : <input type="password" name="rePw"/></p>
		<p><input type="button" value="전송" onclick="check()"/></p>
	</form>
</body>
</html>