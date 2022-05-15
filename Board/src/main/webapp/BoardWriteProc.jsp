<%@page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<!-- 게시글 작성한 데이터를 한번에 읽어들임 -->
<jsp:useBean id="boardbean" class="model.BoardBean">
	<jsp:setProperty name="boardbean" property="*" />
</jsp:useBean>

<%

BoardDAO bdao = new BoardDAO();
bdao.insertBoard(boardbean);

//게시글 저장 후 전체 게시글 보기 

response.sendRedirect("BoardList.jsp");


%>


</body>
</html>