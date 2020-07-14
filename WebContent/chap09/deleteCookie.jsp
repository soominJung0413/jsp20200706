<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Cookie cookie = new Cookie("my-cookie-1","Hello!");
    cookie.setMaxAge(10);
    response.addCookie(cookie);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css'>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js'></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Insert title here</title>
</head>
<body>
	쿠키목록 <br />
	<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length>0){
		for(Cookie co : cookies){
			if(co.getName().equals("my-cookie-1")){
				co.setMaxAge(0);
			}
		}
	}
	%>
	<ul>
	<%
	for(Cookie co : cookies){
		out.println("<li>"+co.getName()+ " : "+co.getValue()+" </li>");
	}
	%>
	</ul>
</body>
</html>