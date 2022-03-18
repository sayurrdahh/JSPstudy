<%@page import="model.MemberBean"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
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
<%

MemberDAO mdao = new MemberDAO();
//회원들의 정보가 얼마나 저장되어 있는지 모르기에 가변길이인vector를 사용하는 편이 좋다

Vector<MemberBean> vac = mdao.allSelectMember();

%>
<div style="padding:10%;">
<h2>Member List</h2>
	
	<table width="800" border="1">
		<tr height="50">
			<td align="center" width="150">Id</td>
			<td align="center" width="250">Email</td>
			<td align="center" width="200">Phone</td>
			<td align="center" width="200">Hobby</td>
		</tr>
		<%
			for(int i=0;i<vac.size();i++){
				MemberBean bean = vac.get(i);		
		%>
		<tr height="50">
			<td align="center" width="150"><a href="MemberInfo.jsp?id=<%=bean.getId()%>"><%=bean.getId() %></a></td>
			<td align="center" width="250"><%=bean.getEmail() %></td>
			<td align="center" width="200"><%=bean.getTel() %></td>
			<td align="center" width="200"><%=bean.getHobby() %></td>
		</tr>
		<%
			}
		%>
	</table>
</div>
</body>
</html>