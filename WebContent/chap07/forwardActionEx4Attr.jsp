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

	<h1>forward 를 통한 데이터 전송이 가능한가</h1>
	pageContext 영역의 속성정보 <%= pageContext.getAttribute("name") %> <br />
	request 영역의 속성정보 <%= request.getAttribute("name") %> <br />
	session 영역의 속성정보 <%= session.getAttribute("name") %> <br />
	application 영역의 속성정보 <%= application.getAttribute("name") %>
	<br />
	<br />
	<br />
	
	<p><b>jsp 페이지의 요청을 처리하는 pageContext는 생명주기가 끝나고 넘어온 request부터 살아있음</b></p>
</body>
</html>