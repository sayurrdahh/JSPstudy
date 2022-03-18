<%@page import="model.MemberBean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%

	MemberDAO mdao = new MemberDAO();

	String id = request.getParameter("id");
	MemberBean bean = mdao.oneSelectMember(id);
	
%>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Full Width Pics - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="index.html">Hello World</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="MemberList.jsp">Member</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Login</a></li>
                        <li class="nav-item"><a class="nav-link" href="MemberJoin.jsp">Join</a></li>
                    </ul>
                </div>
            </div>
        </nav>
<div style="padding:10%;">
<h2>Member Info</h2>
		
	<table border="1" width="100%">
		<tr height="50">
			<td align="center" >아이디</td>
			<td align="center" >이메일</td>
			<td align="center" >전화번호</td>
			<td align="center" >취미</td>
			<td align="center" >직업</td>
			<td align="center" >나이</td>
		</tr>
		<tr height="50">
			<td align="center" ><%=bean.getId() %></td>
			<td align="center" ><%=bean.getEmail() %></td>
			<td align="center" ><%=bean.getTel() %></td>
			<td align="center" ><%=bean.getHobby() %></td>
			<td align="center" ><%=bean.getJob() %></td>
			<td align="center" ><%=bean.getAge() %></td>
		</tr>
		<tr>
			<td align="center" colspan="7">
				<button onclick="location.href='MemberUpdateForm.jsp?id=<%=bean.getId()%>'">수정</button>
				<button onclick="location.href='MemberDeleteForm.jsp'">삭제</button>
				<button onclick="location.href='MemberList.jsp'">목록</button>
			</td>
		</tr>
	</table>
</div>

</body>
</html>