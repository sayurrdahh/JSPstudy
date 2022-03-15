<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 리퀘스트 로그인에서 아이디와 패스워드를 읽어들 -->
	
	<%
	//사용자의 정보가 저장되어있는 객체가 바로 request
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	%>
	
	당신의 아이디는 <%=id %> 이고 password는 <%=password %> 입니다.
	
	<!-- reqeust의 범위는 여기까지이다. 다음페이지까지 정보를 넘길 수 없음. 세션을 쓰면 페이지가 바뀌어도 쓸 수 있다. -->

</body>
</html>