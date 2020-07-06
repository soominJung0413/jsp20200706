<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CalendarClass 사용</title>
</head>
<body>
<%-- 풀네임으로 사용하기  --%>
<%

	java.util.Calendar cal = java.util.Calendar.getInstance();
%>
오늘은
<%-- 스크립트 릿 블록안에서는 컨트롤 shift가 먹힘! --%>
<%= cal.get(java.util.Calendar.YEAR) %> 년
<%= cal.get(java.util.Calendar.MONTH) %> 월
<%= cal.get(java.util.Calendar.DATE) %> 일
</body>
</html>