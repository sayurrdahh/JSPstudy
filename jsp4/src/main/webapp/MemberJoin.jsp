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
				<td> <input type="password" name="pass1" size="20"></td>
 			</tr>
 			<tr height="50">
				<td width="150" align="center"> 비밀번호 확인 </td>
				<td> <input type="password" name="pass2" size="20"></td>
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
				<td width="150" align="center"> 당신의 관심분야 </td>
				<td> 
					<!-- name이 동일해야한 -->
					<input type="checkbox" name="hobby" value="camping">캠핑&nbsp;
					<input type="checkbox" name="hobby" value="reading">독서&nbsp;
					<input type="checkbox" name="hobby" value="climbing">등산&nbsp;
				</td>
 			</tr>
 			<tr height="50">
				<td width="150" align="center"> 당신의 직업은 </td>
				<td> 
					<select name="job">
						<option value="singer">가수</option>
						<option value="teacher">교사</option>
						<option value="CEO">사장</option>
						<option value="cook">요리사</option>
					</select>
				</td>
 			</tr>
 			<tr height="50">
				<td width="150" align="center"> 당신의 연령 </td>
				<td> 
					<!-- name이 동일해야한 -->
					<input type="radio" name="age" value="10">10&nbsp;
					<input type="radio" name="age" value="20">20&nbsp;
					<input type="radio" name="age" value="30">30&nbsp;
				</td>
 			</tr>
 			
 			<tr height="50">
				<td width="150" align="center">하고싶은 말</td>
				<td> 
					<textarea rows="5" cols="40" name="info"></textarea>
				</td>
 			</tr>
 			
 			<tr height="50">
				<td colspan="2" align="center">
					<input type="submit" value="회원 가입">
					<input type="reset" value="취소">
				</td>
 			</tr>
		
		</table>
	</form>
</body>
</html>