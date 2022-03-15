<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원 정보 보기</h2>

<%
//post방식으로 데이터가 넘어올때 한글이 깨질 수도 있기에
request.setCharacterEncoding("EUC-KR");
//각종 사용자로부터 넘어온 데이터를 저장해줌
String id = request.getParameter("id");
String pass1 = request.getParameter("pass1");
String pass2 = request.getParameter("pass2");
String email = request.getParameter("email");
String tel = request.getParameter("tel");

//checkbox []열 타입으로 리턴
String [] hobby = request.getParameterValues("hobby");

String job = request.getParameter("job");
String age = request.getParameter("age");
String info = request.getParameter("info");

if(!pass1.equals(pass2)){
%>
	<script type="text/javascript">
		alert("패스워드가 일치하지 않습니다");
		history.go(-1); //이전 페이지로 이동
	</script>

<%
}
%>
		<table width="500" border="1">
			<tr height="50">
				<td width="150" align="center"> 아이디 </td>
				<td> <%=id %></td>
 			</tr>

 			<tr height="50">
				<td width="150" align="center"> 이메일 </td>
				<td><%=email %></td>
 			</tr>
 			<tr height="50">
				<td width="150" align="center"> 전화번호 </td>
				<td><%=tel %></td>
 			</tr>
 			
 			<tr height="50">
				<td width="150" align="center"> 관심분야 </td>
				<!-- 포문 돌려야 한다 -->
				<td>
				<%
					for(int i=0;i<hobby.length;i++){
						out.write(hobby[i]+" ");
					}
				%>
				</td>
 			</tr>
 			
 			<tr height="50">
				<td width="150" align="center"> 직업 </td>
				<td><%=tel %></td>
 			</tr>
 			
 			<tr height="50">
				<td width="150" align="center"> 연령 </td>
				<td><%=age %></td>
 			</tr>
 			
 			<tr height="50">
				<td width="150" align="center">하고싶은 말 </td>
				<td><%=info %></td>
 			</tr>
	</table>
</body>
</html>