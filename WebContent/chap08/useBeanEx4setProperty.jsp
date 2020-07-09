<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="member" class="chap08.MemberInfo" />
   <jsp:setProperty  name="member" property="*"/>
   <!-- property와 value,param 값이 같으면 property에 *을 넣으면 자동 세팅된다 -->
   
   <%--  <jsp:setProperty name="member" property="name" param="name" />
    <jsp:setProperty name="member" property="id" />
    <!-- value 와 param --> --%>
    
   <%--  <%
    member.setName(request.getParameter("name"));
    member.setId(request.getParameter("id"));
    %> --%>
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
<!-- 엑션이 비면 해당 요청은 해당 페이지로 간다 -->
	<form action="" method="post">
	name: <input type="text" name="name" /> <br />
	id: <input type="text" name="id" id="" /> <br />
	<input type="submit" value="등록" />
	</form>
	
	<h1>
		<%= member.getName() %>, <%= member.getId() %> 님 반갑습니다.
	</h1>
</body>
</html>