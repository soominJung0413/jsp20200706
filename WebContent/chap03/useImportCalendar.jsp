<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- trimDirectiveWhitespaces를 true 값으로 주면 위의 2 공백이 사라진다.  page directive--%>
    <%@ page trimDirectiveWhitespaces="true" %>
    
    <%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
오늘은
<%
Calendar cal = Calendar.getInstance();
%>
<%= cal.get(cal.YEAR) %> 년
<%= cal.get(cal.MONTH)+1 %> 월
<%= cal.get(cal.DATE) %> 일
</body>
</html>