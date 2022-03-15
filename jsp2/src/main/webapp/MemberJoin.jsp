<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>회원가입</h2>
	<form action="MemberJoinProc.jsp" method="post">
	<!-- 데이터 암호화해서 넘겨야하기 때문에 post방식 -->
		<table width="500" border="1">
			<tr height="50">
				<td width="150" align="center"> 아이디 </td>
				<td> <input type="text" name="id" size="20"></td>
 			</tr>
 			<tr height="50">
				<td width="150" align="center"> 비밀번호 </td>
				<td> <input type="password" name="pass" size="20"></td>
 			</tr>
 			<tr height="50">
				<td width="150" align="center"> 이메일 </td>
				<td> <input type="email" name="email" size="20"></td>
 			</tr>
 			<tr height="50">
				<td width="150" align="center"> 전화번호 </td>
				<td> <input type="tel" name="tel" size="20"></td>
 			</tr>
 			<tr height="50">
				<td width="150" align="center"> 주소 </td>
				<td> <input type="text" name="address" size="20"></td>
 			</tr>
 			<tr>
 				<td colspan="2"> <input type="submit" value="전송" /> </td>
 			</tr>
 	</table>
 	</form>
</body>
</html>