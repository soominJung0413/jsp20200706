<%@page import="chap08.MyBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- 객체생성해서 속성에 넣어준 것 -->
  <%--  
   <%
   chap08.MyBean myBean = (MyBean) request.getAttribute("myBean");
   if(myBean == null){
	   myBean = new chap08.MyBean();
	   request.setAttribute("MyBean", myBean);
   }
   %>  스프링의 빈객체와 상당히 동일 --%>
   <!-- id 어트리뷰트를 꺼내서 없을경우 class객체를 넣는다. default 값은 page이므로 pageContext가 생명주기다 -->
    <jsp:useBean id="MyBean" class="chap08.MyBean" />
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
<p>	<%= ((chap08.MyBean)pageContext.getAttribute("MyBean")).getName() %> </p>

<p>	<%= ((chap08.MyBean)pageContext.getAttribute("MyBean")).getId() %> </p>
</body>
</html>