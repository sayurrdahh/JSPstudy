<%@page import="model.MemberBean"%>
<%@page import="java.util.Vector"%>
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

MemberDAO mdao = new MemberDAO();
//회원들의 정보가 얼마나 저장되어 있는지 모르기에 가변길이인vector를 사용하는 편이 좋다

Vector<MemberBean> vac = mdao.allSelectMember();

%>
</body>
</html>