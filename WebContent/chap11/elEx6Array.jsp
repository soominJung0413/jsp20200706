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
	<%
	String[] arr = {"java","css","jquery"};
	request.setAttribute("myArr", arr);
	%>
	
	<h1>EL 을통한 배열의 출력</h1>
	<br />
	
	<h2>myArr[0]:   >>>>   ${myArr[0] }</h2>
	<h2>myArr['1']:   >>>>   ${myArr['1'] }</h2>
	<h2>myArr[2]:   >>>>   ${myArr[2] }</h2>
	
	<hr />
	<ul>
		<%
		for(int i =0; i<arr.length; i++){
			pageContext.setAttribute("i", i);
		%>
		<li>${myArr[i] }</li>
		
		<%
		}
		%>
		</ul>
</body>
</html>