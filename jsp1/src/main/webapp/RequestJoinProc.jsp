<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>ȸ�� ���� ����</h2>

<%
//post������� �����Ͱ� �Ѿ�ö� �ѱ��� ���� ���� �ֱ⿡
request.setCharacterEncoding("EUC-KR");
//���� ����ڷκ��� �Ѿ�� �����͸� ��������
String id = request.getParameter("id");
String pass1 = request.getParameter("pass1");
String pass2 = request.getParameter("pass2");
String email = request.getParameter("email");
String tel = request.getParameter("tel");

//checkbox []�� Ÿ������ ����
String [] hobby = request.getParameterValues("hobby");

String job = request.getParameter("job");
String age = request.getParameter("age");
String info = request.getParameter("info");

if(!pass1.equals(pass2)){
%>
	<script type="text/javascript">
		alert("�н����尡 ��ġ���� �ʽ��ϴ�");
		history.go(-1); //���� �������� �̵�
	</script>

<%
}
%>
		<table width="500" border="1">
			<tr height="50">
				<td width="150" align="center"> ���̵� </td>
				<td> <%=id %></td>
 			</tr>

 			<tr height="50">
				<td width="150" align="center"> �̸��� </td>
				<td><%=email %></td>
 			</tr>
 			<tr height="50">
				<td width="150" align="center"> ��ȭ��ȣ </td>
				<td><%=tel %></td>
 			</tr>
 			
 			<tr height="50">
				<td width="150" align="center"> ���ɺо� </td>
				<!-- ���� ������ �Ѵ� -->
				<td>
				<%
					for(int i=0;i<hobby.length;i++){
						out.write(hobby[i]+" ");
					}
				%>
				</td>
 			</tr>
 			
 			<tr height="50">
				<td width="150" align="center"> ���� </td>
				<td><%=tel %></td>
 			</tr>
 			
 			<tr height="50">
				<td width="150" align="center"> ���� </td>
				<td><%=age %></td>
 			</tr>
 			
 			<tr height="50">
				<td width="150" align="center">�ϰ���� �� </td>
				<td><%=info %></td>
 			</tr>
	</table>
</body>
</html>