<%@page import="model.MemberBean"%>
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

	String mbrId = request.getParameter("mbrId");
	MemberBean bean = mdao.oneSelectMember(mbrId);
	
%>

		
	<table width="1400" border="1">
		<tr height="50">
			<td align="center" width="150">아이디</td>
			<td align="center" width="250">이메일</td>
			<td align="center" width="200">전화번호</td>
			<td align="center" width="200">취미</td>
			<td align="center" width="200">직업</td>
			<td align="center" width="100">나이</td>
			<td align="center" width="300">정보</td>
		</tr>
		<tr height="50">
			<td align="center" width="150"><%=bean.getId() %></a></td>
			<td align="center" width="250"><%=bean.getEmail() %></td>
			<td align="center" width="200"><%=bean.getTel() %></td>
			<td align="center" width="200"><%=bean.getHobby() %></td>
			<td align="center" width="200"><%=bean.getJob() %></td>
			<td align="center" width="100"><%=bean.getAge() %></td>
			<td align="center" width="300"><%=bean.getInfo() %></td>
		</tr>
	</table>
	

</body>
</html>