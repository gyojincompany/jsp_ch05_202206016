<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function checkForm()
	{
		if(document.loginForm.id.value == "")
			{
				alert("아이디는 필수 입력사항입니다.");
				document.loginForm.id.focus();
				return;
			}
		if(document.loginForm.id.value.length <= 4 || document.loginForm.id.value.length >= 11)
		{
			alert("아이디는 5~10 글자이어야 합니다.");
			document.loginForm.id.focus();
			return;
		}
		
		if(document.loginForm.pw.value == "")
		{
			alert("비밀번호는 필수 입력사항입니다.");
			document.loginForm.pw.focus();
			return;
		}
		if(document.loginForm.pw.value.length <= 4)
		{
			alert("비밀번호는 5글자 이상이어야 합니다.");
			document.loginForm.pw.focus();
			return;
		}
		if(isNaN(document.loginForm.age.value))
		{
			alert("나이는 숫자만 입력됩니다.");
			document.loginForm.age.focus();
			return;
		}
		
		document.loginForm.submit();
	}
</script>
<title>데이터 입력 체크</title>
</head>
<body>
	<h2>회원 로그인</h2>
	<hr>
	<form action="loginOk.jsp" name="loginForm">
		아이디 : <input type="text" name="id"><br><br>
		비밀번호 : <input type="text" name="pw"><br><br>
		나이 : <input type="text" name="age"><br><br>
		<input type="button" value="로그인" onclick="checkForm()">	
	</form>
</body>
</html>