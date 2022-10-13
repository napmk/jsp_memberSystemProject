<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
	function joinCheck() 
	    {
		if(document.user_info.userId.value.length < 2 ||document.user_info.userId.value.length > 16)			{
			alert("아이디는 2~16자 이내로 입력해야 합니다.");
			document.user_info.userId.focus();
			return false;
		}
		else if(document.user_info.userPw.value.length < 6 )
		{
			alert("비밀번호는 6자 이상로 입력해야 합니다.");
			document.user_info.userPw.focus();
			return false;
		}
		else if(document.user_info.userName.value.length == "" )
		{
			alert("이름은 반드시 입력해야 합니다.");
			document.user_info.userName.focus();
			return false;
		}
		else if(document.user_info.userMail.value.length == "" )
		{
			alert("이메일 주소는 반드시 입력해야 합니다.");
			document.user_info.userMail.focus();
			return false;
		}
		else
		{
			return true;
			
		}
		
	}
</script>
</head>
<body>
	home > 회원가입
	<hr>
	<form action="insertDB.jsp" name="user_info" method="post" onsubmit="return joinCheck()">
		<fieldset style="width:230px">
			<legend>회원 가입 화면</legend>
			아이디 : <br>
			<input type="text" size="16" name="userId"><br><br>
			비밀번호 : <br>
			<input type="password" size="16" name="userPw"><br><br>
			이름 : <br>
			<input type="text" size="16" name="userName"><br><br>
			이메일 : <br>
			<input type="text" size="30" name="userMail"><br><br>
			<hr>
			<input type="reset" value="다시작성">
			<input type="submit" value="가입하기"><br><br>
		</fieldset>
		
	
	</form>
</body>
</html>