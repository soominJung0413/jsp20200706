<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! public int minu(int x, int y){
    	return x-y;
    };
    
    public int plu(int x, int y){
    	return x+y;
    }
    	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	int a =2;
int b= 7;

int r1= plu(a,b);
int r2 =minu(a, b);
%>
<%= a  %> + <%= b %> = <%= r1 %>
<br>
<%= a  %> - <%= b %> = <%=r2 %>
</body>
</html>