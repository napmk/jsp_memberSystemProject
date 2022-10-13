<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script type="text/javascript">
	function joinCheck() {
		if(document.user_info.userID.value.length < 2 || document.user_info.userID.value.length >16)
			{
				alert("아이디는 2~16자 이내로 입력해야 합니다.");
				document.user_info.userID.focus();
				return false;
			}
		else if(document.user_info.userPW.value.length < 6)
			{
				alert("비밀번호는 6자 이상으로 입력해야 합니다.");
				document.user_info.userPW.focus();
				return false;
			}
		else if(document.user_info.userName.value == "")
		{
			alert("이름은 반드시 입력해야 합니다.");
			document.user_info.userName.focus();
			return false;
		}
		else if(document.user_info.userMAIL.value == "")
		{
			alert("이메일 주소는 반드시 입력해야 합니다.");
			document.user_info.userMAIL.focus();
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
	Home > 회원 가입
	<hr>
	<form action="insertDB.jsp" name="user_info" method="post" onsubmit="return joinCheck()">
		<fieldset style="width:230px">
			<legend> 회원 가입 화면 </legend>
			아이디 : <br>
			<input type="text" size="16" name="userID"><br><br>
			비밀번호 : <br>
			<input type="password" size="16" name="userPW"><br><br>
			이 름 : <br>
			<input type="text" size="16" name="userName"><br><br>
			이메일 : <br>
			<input type="text" size="30" name="userMAIL"><br><br>
			<hr>
			<input type="reset" value=" ◀ 다시작성 ">
			<input type="submit" value=" 가입하기 ▶">
			<br><br>
		</fieldset>
	</form>
</body>
</html>