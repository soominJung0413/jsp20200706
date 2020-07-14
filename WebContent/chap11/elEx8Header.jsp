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
	<h2>Header 도출</h2>
	<ul>
		<li>header : >>>>>>>>>>   ${header}</li>
		<li> header["user-agent"]  : >>>>>>>>>>>>>   ${header["user-agent"] }</li>
		<li> header['sec-fetch-mode' : >>>>>>>    ${header['sec-fetch-mode'] }</li>
	</ul>
	<hr />
	
	
	<h2>headerValues 이용 <br /> headerValues['accept'][0]</h2>
	<ul>
		<li>${headerValues['accept'][0] }</li>
	</ul>
	
	<hr />
	
	<h2>Cookie 도출 <br /> cookie['JSESSIONID'] <br /> cookie['JSESSIONID'].name <br /> cookie['JSESSIONID'].value</h2>
	<ul>
		<li>${cookie['JSESSIONID']} :  >>>>>>  ${cookie['JSESSIONID'].name } , ${cookie['JSESSIONID'].value}</li>
	</ul>
	<hr />
	
	<h2>initParam 도출 : web.xml >>> initParam.logEnabled</h2>
	<ul>
		<li>${initParam} , ${initParam.logEnabled}</li>
	</ul>
</body>
</html>