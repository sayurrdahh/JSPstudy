<%@page import="model.BoardBean"%>
<%@page import="java.util.Vector"%>
<%@page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>

<%

BoardDAO bdao = new BoardDAO();

Vector<BoardBean> vac = bdao.getBoardAll();

%>

<table width="600" border="1" bgcolor="skyblue">
	<tr height="40">
		<td width="50" align="center">글번호</td>
		<td width="250" align="center">제목</td>
		<td width="100" align="center">작성자</td>
		<td width="150" align="center">등록일</td>
		<td width="50" align="center">조회수</td>
	</tr>
<%
	for(int i = 0; i<vac.size() ; i++ ){
		BoardBean bean = vac.get(i); 
	
%>
	<tr height="40">
		<td width="50" align="center"><%= i+1 %></td>
		<td width="250" align="left">
		<a href="BoardInfo.jsp?num=<%=bean.getNum()%>" style='text-decoration:none;' >
		<%
			if(bean.getRe_step() > 1) {
				for(int j = 0; j < (bean.getRe_step()-1)*5 ; j++){
		%>&nbsp;
		<%			
				}
			}
		%>
			
		
			<%= bean.getSubject() %></a>	</td>
		<td width="100" align="center"> <%= bean.getWriter()%> </td>
		<td width="150" align="center"><%= bean.getReg_date() %></td>
		<td width="50" align="center"><%= bean.getReadcount() %></td>
	</tr>
<%
	}
%>
	<tr height="40">
		<td align="center" colspan="5">
		<input type="button" value="글작성" onclick="location.href='BoardWriteForm.jsp'"></td>
	</tr>
	
	
	
</table>


</body>
</html>