<%@page import="model.MemberDAO"%>
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
	request.setCharacterEncoding("euc-kr");

	String hobby[] = request.getParameterValues("hobby");
	
	String texthobby="";
	
	for(int i=0; i<hobby.length; i++){
		texthobby += hobby[i]+" ";
	}
%>

<!-- useBean을 이용하여 한꺼번에 데이터를 받아옴 -->

<jsp:useBean id="mbean" class="model.MemberBean">
	<jsp:setProperty name="mbean" property="*" />
</jsp:useBean>

<%

	mbean.setHobby(texthobby);

//데이터베이스 클래스 객체 생성
MemberDAO mdao = new MemberDAO();

mdao.insertMember(mbean);



%>

오라클 접속 완료.

</body>
</html>