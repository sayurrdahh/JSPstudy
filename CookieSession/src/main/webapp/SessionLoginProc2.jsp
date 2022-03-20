<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

//세션을 이용하여 데이터를 불러와야함
String id = session.getAttribute("id").toString();
String pass = session.getAttribute("pass").toString();

%>

<h2> 당신의 아이디는 <%=id %>입니다. 당신의 패스워드는 <%=pass %>입니다.</h2>

</body>
</html>