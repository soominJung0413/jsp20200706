<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿 사용</title>
</head>
<body>

<%-- write 메소드로 html 문서를 써주는 듯함 --%>

<%-- 출력메소드 파라메터 로 String 이 들어가다가 스크립트요소를 만나면 자바코드로 간다 --%>
<%
	int sum =0;
for(int i =0; i<=10; i++){
	sum += i;
}
%>
<%-- <%= 은 출력입니다. sum은 출력의 매개변수 입니다.  즉 print()메소드의 매개변수 --%>
1부터 10까지의 합은 <%= sum %> 입니다.
</body>
</html>