<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<%

//아이디 저장 체크박스가 체크되었는지 판단 여부 
String save = request.getParameter("save");

//아이디 값을 저장
String id = request.getParameter("id");

//체크가 되었는지를 비교 판단 
if(save != null){
	//쿠키를 사용하려면 쿠키 클래스를 설정해주어야 함
	Cookie cookie = new Cookie("id",id);
	
	cookie.setMaxAge(60*10); //10분간 유효합니다 
	
	//사용자에게 쿠키 값을 넘겨줌
	response.addCookie(cookie);
	
	out.write("쿠키 생성 완료");
}



%>
</body>
</html>