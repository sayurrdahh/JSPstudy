<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ResponseProc.jsp" method="post">
	<table width="400">
			<tr height="60">
				<td align="center" width="150">아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr height="60">
				<td align="center" width="150">비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr height="60">
				<td	colspan="2">
					<input type="submit" value="로그인">
					<input type="reset" value="취소">
				</td>
			</tr>
	</table>
</form>
</body>
</html>