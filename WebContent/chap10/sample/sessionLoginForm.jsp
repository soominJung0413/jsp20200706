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
<title>로그인 폼</title>
</head>
<body>
	<h1>SessionId</h1>
	<h2><%= session.getId() %></h2>
	<form action="<%= request.getContextPath() %>/chap10/sample/sessionLogin.jsp" method="post">
		아이디 <input type="text" name="id" id=""  size="10"/><br />
		암호 <input type="password" name="password" id="" size="10" /><br />
		<input type="submit" value="로그인" />
	</form>
</body>
</html>