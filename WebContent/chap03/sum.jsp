<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 릿 사용</title>
</head>
<body>
<%
	int sum =0;
for(int i =0; i<=10; i++){
	sum+=i;
}
%>
1부터 10까지의 합 : <%= sum %>

<%-- 스크립트 릿은 service라는 메소드 안에 같이 공존한다. 그러므로 변수 중복이 불가능하다. --%>
<%
	//자바 주석은 스크립트 릿 안에 들어갈 수 있다.
sum =0;
	for(int i =11; i<=20; i++){
		sum +=i;
	}
%>
11부터 20까지의 합: <%= sum %>
</body>
</html>