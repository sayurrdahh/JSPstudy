<%@page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<!-- �Խñ� �ۼ��� �����͸� �ѹ��� �о���� -->
<jsp:useBean id="boardbean" class="model.BoardBean">
	<jsp:setProperty name="boardbean" property="*" />
</jsp:useBean>

<%

BoardDAO bdao = new BoardDAO();
bdao.insertBoard(boardbean);

//�Խñ� ���� �� ��ü �Խñ� ���� 

response.sendRedirect("BoardList.jsp");


%>


</body>
</html>