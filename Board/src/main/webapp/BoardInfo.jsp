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
			<td align="center" width="120">글 번호</td>
			<td align="left" width="180"><%=bean.getNum() %></td>
			<td align="center" width="120">조회수</td>
			<td align="left" width="180"><%=bean.getReadcount() %></td>
		</tr>
		<tr height = "40">
			<td align="center" width="120">작성자</td>
			<td align="left" width="180"><%=bean.getWriter()%></td>
			<td align="center" width="120">작성일</td>
			<td align="left" width="180"><%=bean.getReg_date() %></td>
		</tr>
		<tr height = "40">
			<td align="center" width="120">이메일</td>
			<td align="left" width="180"><%=bean.getEmail() %></td>
		</tr>
		<tr height = "80">
			<td align="center" width="120">글 내용</td>
			<td align="left" width="180"><%=bean.getContent() %></td>
		</tr>
		
		<tr height = "40">
			<td align="center" colspan="4">
				<input type="button" value="글작성" 
				onclick="location.href='BoardReWriteForm.jsp?num=<%=bean.getNum()%>&ref=<%=bean.getRef()%>&re_step=<%=bean.getRe_step()%>&re_level=<%=bean.getRe_level()%>' ">
				<input type="button" value="글수정" onclick="location.href='BoardUpdateForm.jsp?num=<%=bean.getNum() %>'">
				<input type="button" value="글삭제" onclick="location.href='BoardDeleteForm.jsp?num=<%=bean.getNum() %>'">
				<input type="button" value="목록" onclick="location.href='BoardList.jsp'">
			</td>
		</tr>
		
	</table>
	



</body>
</html>