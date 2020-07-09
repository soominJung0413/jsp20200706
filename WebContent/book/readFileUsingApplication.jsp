<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.io.*" %>
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
	<%
	String resourcePath = "/message/notice.txt";
	%>
	
	자원의 실제경로 : <%= application.getRealPath(resourcePath) %>
	<br />
	<hr />
	<%= resourcePath %> 의 내용 
	<br />
	<hr />
	<%
	char[] buff = new char[128];
	int len = -1;
	
	try(InputStreamReader br = new InputStreamReader(
			application.getResourceAsStream(resourcePath),"UTF-8")) {
		while(( len =br.read(buff)) != -1){
			out.print(new String(buff, 0 , len));
		}
		
	}catch(IOException e){
		e.getStackTrace();
	}
	%>
</body>
</html>