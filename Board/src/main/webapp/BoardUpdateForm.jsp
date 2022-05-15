<%@page import="model.BoardBean"%>
<%@page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num").trim());

	BoardDAO bdao = new BoardDAO();
	BoardBean bean = bdao.getOneUpdateBoard(num);

%>

<form action="BoardUpdateProc.jsp" method="post">
<table width="600" border="1" bgcolor="skyblue">
	<tr height="40">
		<td width="120" align="center">작성자</td>
		<td width="180" align="center"><%=bean.getWriter() %></td>
		<td width="120" align="center">작성</td>
		<td width="180" align="center"><%=bean.getReg_date() %></td>
	</tr>
	<tr height="40">
		<td width="120" align="center">제목</td>
		<td width="480" colspan="3"><input type="text" name="subject" value="<%=bean.getSubject() %>" size="60"></td>
	</tr>
	<tr height="40">
		<td width="120" align="center">비밀번호</td>
		<td width="480" colspan="3"><input type="password" name="password" value="<%=bean.getPassword() %>" ></td>
	</tr>
	<tr height="40">
		<td width="120" align="center">내용</td>
		<td width="480" colspan="3"><textarea rows="10" cols="60" name="content" align="left"><%= bean.getContent() %></textarea></td>
	</tr>
	<tr height="40">
		<td colspan="4" align="center">
			<input type="hidden" name ="num" value="<%=bean.getNum() %>">
			<input type="submit" value="수정">&nbsp;&nbsp;
			<input type="button" onclick="location.href='BoardList.jsp'" value="목록">
		</td>
	</tr>

</table>

</form>

</body>
</html>