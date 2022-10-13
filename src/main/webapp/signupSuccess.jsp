<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 성공</title>
</head>
<body>
	Home > 회원 등록 성공
	<hr>
	축하합니다. <br>
	관리자인 경우만 로그인 수행이 가능합니다 <br><br>
	
	<table>
		<tr>
			<td>
				<form action="membership.jsp" method="post">
					<input type="submit" value="  사용자 공간이동 >>">
				</form>
			</td>
			<td>
				<form action="login.jsp" method="post">
					<input type="submit" value=" 관리자 모드이동 >> ">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>