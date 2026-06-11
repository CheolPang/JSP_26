<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>18_form</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="19_form_process.jsp">
		<p>아이디 : <input type="text" name="id"/>
				<input type="button" value="중복검사"/>
		</p>
		<p>비번 : <input type="password" name="pw"/></p>
		<p>이름 : <input type="text" name="name"/></p>
		<p>연락처 : 
			<select name="phone1" id="">
				<option value="010">010</option>
				<option value="02">02</option>
				<option value="031">031</option>
			</select> -
			<input type="text" name="phone2" size="1" maxlength="4"/>
			 - 
			<input type="text" name="phone3" size="1" maxlength="4"/>
		</p>
		<p>
			성별 : 
			<input type="radio" name="gender" checked value="male"/>남성
			<input type="radio" name="gender" value="female"/>여성
		</p>
		<p>
			취미 : 
			<input type="checkbox" name="hobby" value="reading"/>독서
			<input type="checkbox" name="hobby" value="exercise"/>운동
			<input type="checkbox" name="hobby" value="movie"/>영화
		</p>
		<p>
			가입인사 : 
			<textarea rows="10" cols="30" placeholder="자기소개를 해주세요." name="sayHello"></textarea>
		</p>
		<p>
			<input type="submit" value="가입하기">
			<input type="reset" value="다시쓰기">
		</p>
	</form>
</body>
</html>