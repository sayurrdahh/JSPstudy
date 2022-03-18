<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<h2>Member Delete</h2>
<form action="MemberDeleteProc.jsp">
	<table border="1" width="100%">
		<tr height="50">
			<td align="center" >아이디</td>
			<td align="center" >비밀번호</td>
		</tr>
		<tr height="50">
			<td align="center" ><%=request.getParameter("id") %></td>
			<td align="center" ><input type="password" name="pass1"></td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				<input type="hidden" value="<%=request.getParameter("id") %>" name="id">
				<input type="submit" value="delete">
			</td>
		</tr>
	</table>
 </form>
</div>

</body>
</html>