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

<!-- useBean을 이용하여 한꺼번에 데이터를 받아옴 -->

<jsp:useBean id="mbean" class="model.MemberBean">
	<jsp:setProperty name="mbean" property="*" />
</jsp:useBean>

<%

//데이터베이스 클래스 객체 생성
MemberDAO mdao = new MemberDAO();

mdao.insertMember(mbean);

%>
<script type="text/javascript">
	alert("회원정보 저장이 완료되었습니다.");
	location.href= 'index.html';
</script>


</body>
</html>