<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="member" class="chap08.MemberIfo1" scope="request">
    	<jsp:setProperty name="member"  property="*"/>
    </jsp:useBean>
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
	<div class="container">
		<table border="1" width="500px" class="table table-dark">
			<tr>
				<td>
				<label for="">아이디</label>
				</td>
				<td>
				${ member.id }
				</td>
				<td>
				<label for="">암호</label>
				</td>
				<td>
				${ member.password }
				<%-- <jsp:getProperty property="password" name="member"/> --%>
				</td>
			</tr>
			<tr>
				<td>
				<label for="">이름</label>
				</td>
				<td>
				${ member.name }
				<%-- <jsp:getProperty property="name" name="member"/> --%>
				</td>
				<td>
				<label for="">이메일</label>
				</td>
				<td>
				${ member.email }<%-- 
				<jsp:getProperty property="email" name="member"/> --%>
				</td>
			</tr>
		</table>
		</div>
</body>
</html>