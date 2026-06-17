<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>26_validation</title>
<script>
	/*
	[1]직원번호 : 회사명 info 로 시작하고 숫자 포함해서 총 6자~10자까지여야 함.
	[2]아이디 : 문자로 시작하여야 함.
	[3]비번 : 숫자만으로 4자리 입력하도록 함.
	[4]이름 : 이름은 한글만 입력되도록 함.
	[5]전화번호 : 첫 번째 그룹은 2-3자리, 두 번째, 세 번째 그룹은 4자리 수자가 입력되도록 함
	[6]이메일 : @ 앞부분은 영문자와 숫자로, 뒷 부분은 소문자만 있는 도메인 확장자로 끝나는 형식이어야 한다.
 	*/
 	function checkMember(){
	 	var regExEmpNo = /^info(?=.*\d)[a-zA-Z0-9]{2,6}$/i;
	 	var regExId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	 	var regExPw = /^[0-9]{4}$/;
	 	var regExName = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	 	var regExPhone = /^\d{2,3}-\d{4}-\d{4}$/;
	 	var regExEmail = /^[a-zA-Z0-9]+@[a-z]+\.[a-z]+$/i;
	 	var form = document.member;
	 	var empNo = form.empNo.value;
	 	var id = form.id.value;
	 	var pw = form.pw.value;
	 	var name = form.name.value;
	 	var phone = form.phone1.value+"-"+form.phone2.value+"-"+form.phone3.value;
	 	var email = form.email.value;
	 	
	 	if(!regExEmpNo.test(empNo)) {
	 		alert("직원번호는 info 로 시작하고, 대소문자 구별없이 숫자를 포함하여 총 6자~10자까지 입력해주세요.")
	 		form.empNo.select();
	 		return;
	 	}
	 	if(!regExId.test(id)) {
	 		alert("아이디는 문자로 시작하여야 합니다.")
	 		form.id.select();
	 		return;
	 	}
	 	if(!regExPw.test(pw)) {
	 		alert("비번은 숫자만으로 4자리를 입력하여야 합니다.")
	 		form.pw.select();
	 		return;
	 	}
	 	if(!regExName.test(name)) {
	 		alert("이름은 한글로 입력하여야 합니다.")
	 		form.name.select();
	 		return;
	 	}
	 	if(!regExPhone.test(phone)) {
	 		alert("전화번호의 첫 번째 그룹은 2-3자리, 두 번째와 세 번째 그룹은 4자리 숫자가 입력되어야 합니다.")
	 		form.phone.select();
	 		return;
	 	}
	 	if(!regExEmail.test(email)) {
	 		alert("이메일은 @ 앞부분은 영문자와 숫자로, 뒷부분은 도메인이 입력되어야 합니다.")
	 		form.email.select();
	 		return;
	 	}
	 	form.submit();
	}
</script>
</head>
<body>
	<h2>회원 가입</h2>
	<form action="26_process.jsp" name="member" method="post">
		<p>직원 번호 <input type="text" name="empNo"/></p>
		<p>아이디 <input type="text" name="id"/></p>
		<p>비번 <input type="password" name="pw"/></p>
		<p>이름 <input type="text" name="name"/></p>
		<p>연락처 <select name="phone1" id="">
			<option value="010">010</option>
			<option value="02">02</option>
			<option value="031">031</option>
			<option value="041">041</option>
		</select>
		<input type="text" name="phone2" maxlength="4" size="1"/>
		<input type="text" name="phone3" maxlength="4" size="1"/>
		</p>
		<p>이메일 <input type="email" name="email"></p>
		<p><input type="button" value="가입하기" onclick="checkMember()"/></p>
	</form>
</body>
</html>