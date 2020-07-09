<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 자바 빈으로 등록됨 -->
    <%-- <%@ page import="chap08.*" %>
    <%
    MyBean mb = new MyBean();
    mb.setName("adc");
    mb.setId(99);
    
    request.setAttribute("MyBean", mb);
    %>  가 변한 것이다. 요청 속성 값에 객체를 넣은 것이다.--%>
    <jsp:useBean id="myBean" class="chap08.MyBean"></jsp:useBean>
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

</body>
</html>