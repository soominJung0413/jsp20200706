<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="chap11.MyBean"%>
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
  MyBean mb = new MyBean();
    mb.setName("백기선");
    mb.setId(100);
    
    request.setAttribute("attr1", "value1");
    request.setAttribute("myBean", mb);
    %>
    
    <h1>${attr1}</h1>
    
    <h1>Bean 객체 도출</h1>
    <h3>${myBean }</h3>
    
    <h1>Property 를 이용한 값 도출</h1>
    <h3>myBean.name : >>>>>  ${myBean.name }</h3>
    <h3>myBean.id : >>>>>  ${myBean.id }</h3>
    <hr />
    <h3>myBean["name"] : >>>>  ${myBean["name"] }</h3>
    <h3>myBean["id"] : >>>>  ${myBean["id"] }</h3>
    	
    	<hr />
    	
    <jsp:include page="elEx4Sub.jsp"/>

</body>
</html>