<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<jsp:useBean id="mbean" class="model.MemberBean">
	<jsp:setProperty name="mbean" property="*" />
</jsp:useBean>

<%

	MemberDAO mdao = new MemberDAO();
	
	//스트링 타입으로 저장되어 있는 패스워드를 가져옴
	String pass = mdao.getPass(mbean.getId());
	
	if(mbean.getPass1().equals(pass)){
	
		mdao.deleteMember(mbean.getId());
%>
	<script type="text/javascript">
		alert("삭제되었습니다.");
	</script>
<%
		
		response.sendRedirect("MemberList.jsp");
		
	}else {
	
%>

<script type="text/javascript">
	alert("패스워드가 맞지 않습니다. 다시 확인해 주세요.");
	history.go(-1);
</script>
<%
	}
%>

</body>
</html>