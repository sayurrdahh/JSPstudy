<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이 페이지는 ResponseRedirect.jsp 페이지 입니다. 
	<%
	
		request.setCharacterEncoding("euc-kr");
	
		String id = request.getParameter("id");
		
	%>
	
	<h3>리다이렉트 아이디 = <%=id %> </h3>
</body>
</html>