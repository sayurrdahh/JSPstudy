<%@page import="model.BoardBean"%>
<%@page import="java.util.Vector"%>
<%@page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<%

//전체 게시글의 내용을 jsp 쪽으로 가져와야 한다 
BoardDAO bdao = new BoardDAO();

//전체 게시글을 리턴 받아주는 메소드
Vector<BoardBean> vac = bdao.getBoardAll();


%>

<h2>전체 게시글 보기</h2>
<table width="600" border="1" bgcolor="skyblue">
	<tr height="40">
		<td width="50" align="center">번호</td>
		<td width="250" align="center">제목</td>
		<td width="100" align="center">작성자</td>
		<td width="150" align="center">작성일</td>
		<td width="50" align="center">조회수</td>
	</tr>
<%
	for(int i = 0; i<vac.size() ; i++ ){
		BoardBean bean = vac.get(i); //벡터에 저장되어 있는 빈 클래스를 하나씩 추출
	
%>
	<tr height="40">
		<td width="50" align="center"><%= i+1 %></td>
		<td width="250" align="left"><a href="BoardInfo.jsp?num=<%=bean.getNum()%>" >
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
		<input type="button" value="글쓰기" onclick="location.href='BoardWriteForm.jsp'"></td>
	</tr>
	
	
	
</table>


</body>
</html>