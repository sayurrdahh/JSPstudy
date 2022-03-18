<%@page import="model.MemberBean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%

	String id = request.getParameter("id");

	MemberDAO mdao = new MemberDAO();

	MemberBean mbean = mdao.oneSelectMember(id);
	
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

<h2>Update Info</h2>

<form action="MemberUpdateProc.jsp" method="post">
	<table border="1" width="100%">
		<tr height="50" style="background-color:silver;">
			<td align="center">Id</td>
			<td align="center">Email</td>
			<td align="center">Tel</td>
		</tr>
		<tr height="50">
			<td align="center"><%=mbean.getId() %></td>
			<td align="center"><input type="text" style="border:none;background-color: highlight;" name="email" value="<%=mbean.getEmail() %>"></td>
			<td align="center"><input type="text" style="border:none;background-color: highlight;" name="tel" value="<%=mbean.getTel() %>"></td>
		</tr>	
		<tr>
			<td align="center" colspan="3">
				password &nbsp;
				<input type="password" name="pass1" style="border:none;background-color: highlight;">
			</td>
		</tr>
		<tr height="60">
			<td colspan="4" align="center">
				<input type="hidden" name="id" value="<%=mbean.getId()%>"> 
				<input type="submit" value="update">
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>