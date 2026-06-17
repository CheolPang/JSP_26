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
 	    
 	   	if(checkSequential(pw)) {
	 		alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
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
 	
 	
 	
 	function checkSequential(str) {
 	    for(var i = 0; i < str.length - 2; i++) {
 	        var char1 = str.charCodeAt(i);
 	        var char2 = str.charCodeAt(i + 1);
 	        var char3 = str.charCodeAt(i + 2);

 	        if((char2 === char1 + 1 && char3 === char2 + 1) || (char2 === char1 - 1 && char3 === char2 - 1)) {
 	            return true;
 	        }
 	        if(char1 === char2 && char2 === char3) {
 	            return true;
 	        }
 	    }
 	    return false;
 	}
 	
 	
</script>
</head>
<body>
	<form action="validation02_process.jsp" method="post" name="loginForm">
		<p>아이디 : <input type="text" name="id"/></p>
		<p>비밀번호 : <input type="password" name="pw"/></p>
		<p>비밀번호 확인 : <input type="password" name="rePw"/></p>
		<p><input type="button" value="전송" onclick="check()"/></p>
	</form>
</body>
</html>