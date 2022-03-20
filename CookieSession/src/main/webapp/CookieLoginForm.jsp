<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<%
	//사용자 컴퓨터에 쿠키 저장소로부터 쿠키값을 읽어들인다. 몇개인지 모르기 때문에 배열을 이용하여 쿠키값을 저장 
	Cookie[] cookies = request.getCookies();
	String id ="";
	
	if(cookies != null){
		for(int i = 0 ; i < cookies.length; i++){
			if(cookies[i].getName().equals("id")){
				id = cookies[i].getName();
				break; //원하는 데이터를 찾았기에 반복문 탈출
			}
		}
	}
	
%>



<h2>쿠키 로그인</h2>
<form action="CookieLoginProc.jsp" method="post">
<table width="400" border="1">
	<tr height="50">
		<td width="150">아이디</td>
		<td width="250"><input type="text" name="id" value="<%=id%>"></td>
	</tr>
	<tr height="50">
		<td width="150">비밀번호</td>
		<td width="250"><input type="password" name="pass"></td>
	</tr>
	<tr height="50">
		<td colspan="2">
			아이디 저장
			<input type="checkbox" name="save">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="login">
		</td>
	</tr>

</table>

</form>
</body>
</html>