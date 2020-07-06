<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식에 대한 이해</title>
</head>
<body>
 1부터 1까지의 합은
 <br>
 <%= 1+2+3+4+5+6+7+8+9+10 %> <%-- 표현식은 <%= 로 표현하며 print 메소드의 매개변수값이다. 즉 out.print(1+2+3+4+5+6+7+8+9+10)이다 --%>
  입니다.
  <br>
  
 <br>
 
 <%-- HTML문서가 java코드로 작성되는 과정을 코드로 써보면 이하와 같다. --%>
 <% out.write("<h1>Hello</h1>"); %>
 <% out.write("<h2>lorem</h2>"); %>
 <% out.print(1+2+3+4+5+6+7+8+9+10); %>
</body>
</html>