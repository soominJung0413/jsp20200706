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
	<h3>Param은 싱글 파라미터를 가져온다.</h3>
	<%-- <%= request.getParameter("name") %> --%> 
	<h4>param.name :   >>>>>>>>>>>>>   ${param.name }</h4>
	<hr />
	
	<h2>ParamValues 는 배열의 파라미터를 가져온다.</h2>
	<h4>${paramValues.name[0] } ,   ${paramValues.name[1] }</h4>
	
	
</body>
</html>