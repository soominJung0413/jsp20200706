<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* 	Object o = session.getAttribute("member");
if(o != null){
	session.removeAttribute("member");
}
 */
 
 session.invalidate(); // 세션 없애고, 퇴거시킴
response.sendRedirect("/chap09/sample/loginForm.jsp");
 
 
 //세션이 사라지고 리다이렉트되어 새로운 요청전송
%>