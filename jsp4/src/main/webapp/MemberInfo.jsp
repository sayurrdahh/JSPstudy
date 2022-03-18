<%@page import="model.MemberBean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<%

	MemberDAO mdao = new MemberDAO();

	String id = request.getParameter("id");
	MemberBean bean = mdao.oneSelectMember(id);
	
%>

<h2>회원 정보 보기</h2>
		
	<table border="1">
		<tr height="50">
			<td align="center" >아이디</td>
			<td align="center" >이메일</td>
			<td align="center" >전화번호</td>
			<td align="center" >취미</td>
			<td align="center" >직업</td>
			<td align="center" >나이</td>
			<td align="center" >정보</td>
		</tr>
		<tr height="50">
			<td align="center" ><%=bean.getId() %></td>
			<td align="center" ><%=bean.getEmail() %></td>
			<td align="center" ><%=bean.getTel() %></td>
			<td align="center" ><%=bean.getHobby() %></td>
			<td align="center" ><%=bean.getJob() %></td>
			<td align="center" ><%=bean.getAge() %></td>
			<td align="center" ><%=bean.getInfo() %></td>
		</tr>
		<tr>
			<td align="center" colspan="7">
				<button onclick="location.href='MemberUpdateForm.jsp?id=<%=bean.getId()%>'">수정</button>
				<button onclick="location.href='MemberDeleteForm.jsp'">삭제</button>
				<button onclick="location.href='MemberList.jsp'">목록</button>
			</td>
		</tr>
	</table>
	

</body>
</html>