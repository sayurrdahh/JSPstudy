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
	BoardBean bean = bdao.getOneBoard(num);

%>

	<table width="600" boarder="1" bgcolor="skyblue">
		<tr height = "40">
			<td align="center" width="120">�� ��ȣ</td>
			<td align="left" width="180"><%=bean.getNum() %></td>
			<td align="center" width="120">��ȸ��</td>
			<td align="left" width="180"><%=bean.getReadcount() %></td>
		</tr>
		<tr height = "40">
			<td align="center" width="120">�ۼ���</td>
			<td align="left" width="180"><%=bean.getWriter()%></td>
			<td align="center" width="120">�ۼ���</td>
			<td align="left" width="180"><%=bean.getReg_date() %></td>
		</tr>
		<tr height = "40">
			<td align="center" width="120">�̸���</td>
			<td align="left" width="180"><%=bean.getEmail() %></td>
		</tr>
		<tr height = "80">
			<td align="center" width="120">�� ����</td>
			<td align="left" width="180"><%=bean.getContent() %></td>
		</tr>
		
		<tr height = "40">
			<td align="center" colspan="4">
				<input type="button" value="���ۼ�" 
				onclick="location.href='BoardReWriteForm.jsp?num=<%=bean.getNum()%>&ref=<%=bean.getRef()%>&re_step=<%=bean.getRe_step()%>&re_level=<%=bean.getRe_level()%>' ">
				<input type="button" value="�ۼ���" onclick="location.href='BoardUpdateForm.jsp?num=<%=bean.getNum() %>'">
				<input type="button" value="�ۻ���" onclick="location.href='BoardDeleteForm.jsp?num=<%=bean.getNum() %>'">
				<input type="button" value="���" onclick="location.href='BoardList.jsp'">
			</td>
		</tr>
		
	</table>
	



</body>
</html>