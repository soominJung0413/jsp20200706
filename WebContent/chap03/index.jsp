<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML 문서의 제목</title>
</head>
<body>
<!--  자바 코드 기입 공간 스크립트 릿-->
<%
	String bookTitle = "JSP 프로그래밍";
	String author="최범균";
%>
<!-- 표현식  -->
<b><%= bookTitle %></b> (<%= author %>)입니다.
</body>
</html>