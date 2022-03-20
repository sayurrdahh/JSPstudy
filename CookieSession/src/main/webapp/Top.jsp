<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<%

//로그아웃 클릭시 파라미터를 통해서 로그아웃인지 여부를 확인
String logout = request.getParameter("logout");

if(logout != null){
	session.setAttribute("id", null);
	session.setMaxInactiveInterval(0);
}


//세션을 통하여 아이디를 읽어들임
String id =(String) session.getAttribute("id");

//tostring하면 안나옴

//로그인이 되어 있지 않다면 session값이 null과 같음
if(id == null){
	id = "guest";
}

%>
<table width="800">
	<tr height="100">
		<td colspan="2" align="center">
			<img alt="" src="img/logo.jpeg" width="200" height="70">
		</td>
		<td colspan="5" align="center">
			<font size="10">레츠고 캠핑</font>
		</td>
	</tr>
	<tr height="50">
		<td align="center">텐트</td>
		<td align="center">의자</td>
		<td align="center">식기류</td>
		<td align="center">침낭</td>
		<td align="center">테이블</td>
		<td>
	<%
		if(id.equals("guest")) {
	%>
			<%=id %>님 	<button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">로그인</button>
	
			
	<% } else { %>
		
		<%=id %>님 <button onclick="location.href='SessionMain.jsp?logout=1'">로그아웃</button>
	
	<% } %>
	</td>
	</tr>
</table>
	

</body>
</html>