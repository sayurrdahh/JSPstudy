<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	int ref = Integer.parseInt(request.getParameter("ref"));
	int re_step = Integer.parseInt(request.getParameter("re_step"));
	int re_level = Integer.parseInt(request.getParameter("re_level"));

%>

<form action="BoardReWriteProc.jsp" method="post">
	
	<table width="600" border="1" boardercolor="gray" bgcolor="skyblue">
		<tr height = "40">
			<td align="center" width = "150"> 작성자 </td>
			<td width = "450" > <input type="text" name ="writer" size="60"> </td>
		</tr>
		<tr height = "40">
			<td align="center" width = "150"> 제목 </td>
			<td width = "450" > <input type="text" name ="subject" size="60"> </td>
		</tr>
		<tr height = "40">
			<td align="center" width = "150"> 이메일 </td>
			<td width = "450" > <input type="email" name ="email" size="60"> </td>
		</tr>
		<tr height = "40">
			<td align="center" width = "150"> 비밀번호</td>
			<td width = "450" > <input type="password" name ="password" size="60"> </td>
		</tr>
		<tr height = "40">
			<td align="center" width = "150"> 글내용</td>
			<td width = "450" > <textarea rows="10" cols="50" name="content" ></textarea> </td>
		</tr>
		
		
		<tr height = "40">
			<td align="center" colspan="2">
				<input type="hidden" name="ref" value="<%=ref%>">
				<input type="hidden" name="re_step" value="<%=re_step%>">
				<input type="hidden" name="re_level" value="<%=re_level%>">
				<input type = "submit" value = "글 수정"> &nbsp;&nbsp;
				<input type = "reset" value = "리셋"> &nbsp;&nbsp;
				<button onclick="location.href='BoardList.jsp'">목록</button>
			</td>
 		</tr>

		
	</table>




</form>






</body>
</html>