<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h1>Main Page</h1>
	<p><%= request.getParameter("name") %></p> <br />
	<p><%= request.getParameter("vip") %></p>

<%
	if(request.getParameter("vip") == null){
%>
<!--  forward 시 주소는 forward 페이지가 뜬다. -->
	<jsp:forward page="sample3Forward1Normal.jsp" />
	
<%
	}else{
%>
	<jsp:forward page="sample3Forward2VIP.jsp"></jsp:forward>
	<%
	}
	%>
</body>
</html>