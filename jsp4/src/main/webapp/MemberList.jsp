<%@page import="model.MemberBean"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<%

MemberDAO mdao = new MemberDAO();
//회원들의 정보가 얼마나 저장되어 있는지 모르기에 가변길이인vector를 사용하는 편이 좋다

Vector<MemberBean> vac = mdao.allSelectMember();

%>

<h2>모든 회원 보기</h2>
	
	<table width="800" border="1">
		<tr height="50">
			<td align="center" width="150">아이디</td>
			<td align="center" width="250">이메일</td>
			<td align="center" width="200">전화번호</td>
			<td align="center" width="200">취미</td>
		</tr>
		<%
			for(int i=0;i<vac.size();i++){
				MemberBean bean = vac.get(i);		
		%>
		<tr height="50">
			<td align="center" width="150"><a href="MemberInfo.jsp?id=<%=bean.getId()%>"><%=bean.getId() %></a></td>
			<td align="center" width="250"><%=bean.getEmail() %></td>
			<td align="center" width="200"><%=bean.getTel() %></td>
			<td align="center" width="200"><%=bean.getHobby() %></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>