<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- 하나의 자바 블록으로 이해하면 정말 이해하기 쉬워진다. 선언부는 <%! 로 표시하며 
    
    필드나 메소드를 정의한다. static priavte final 다 가능하다.
    
    여러개가 있어도 무방하다 --%>
    <%! int myField =0; %>
    <%! 
    public int mutipleNum(int x , int y){
    	return x*y;
    }
    %>
    
    <%-- 메서드 오버로딩 한것 자바 코드로 이해하자. --%>
        <%! 
    public int mutipleNum(int x , double y){
    	return x*(int)y;
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	2,10의 곱셉은 <%= mutipleNum(2, 10) %> 입니다.
	<br>
	
 <%-- 페이지에 인스턴스들은 다 남아있다. --%>
	<%= myField++  %>
</body>
</html>
