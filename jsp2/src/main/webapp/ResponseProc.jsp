<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이 페이지는 로그인 정보가 넘어오는 페이지 입니다. 
	<%
	
		request.setCharacterEncoding("euc-kr");
	
		String id = request.getParameter("id");
		
		//response.sendRedirect("ResponseRedirect.jsp"); //흐름제어 -> 값이 안넘어간다
	
		
	%>
	 <!-- 흐름제어. 값이 넘어감! -->
	
	<jsp:forward page="ResponseRedirect.jsp">
		<jsp:param value="mmmm" name="id" /> 
	</jsp:forward>
	
	<h3>아이디 = <%=id %></h3> 
	
</body>
</html>