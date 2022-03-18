<%@page import="model.MemberBean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<%

	String id = request.getParameter("id");

	MemberDAO mdao = new MemberDAO();

	MemberBean mbean = mdao.oneSelectMember(id);
	
%>

<h2>회원 정보 수정 화면</h2>

<form action="MemberUpdateProc.jsp" method="post">
	<table border="1">
		<tr height="50">
			<td align="center">아이디</td>
			<td align="center">이메일</td>
			<td align="center">전화번호</td>
		</tr>
		<tr height="50">
			<td align="center"><%=mbean.getId() %></td>
			<td align="center"><input type="text" name="email" value="<%=mbean.getEmail() %>"></td>
			<td align="center"><input type="text" name="tel" value="<%=mbean.getTel() %>"></td>
		</tr>	
		<tr>
			<td>비밀번호 확인</td>
			<td colspan="2"><input type="password" name="pass1"></td>
		</tr>	
		<tr>
			<td colspan="4">
				<input type="hidden" name="id" value="<%=mbean.getId()%>"> 
				<input type="submit" value="회원 수정하기">
			</td>
		</tr>
	</table>
</form>
</body>
</html>