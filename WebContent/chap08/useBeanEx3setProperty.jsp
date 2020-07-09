<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="member" class="chap08.MemberInfo"  scope="page"/>
    <jsp:setProperty property="name" name="member" param="john" />
    <jsp:setProperty name="member" property="id" value="99"/>
    
    <%--
    member.setName("john"); 와 같다. member 객체를 Attribute에서 꺼내서 name 프로퍼티로 john을 넣었다.
    --%>
    
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
<h1>
	${member.name} ,   <%= member.getId() %>
</h1>
</body>
</html>