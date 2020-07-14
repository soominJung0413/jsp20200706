<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
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
<%--
	el 에서 11개의 기본객체가 아니면 attribute
	page->request->session->application 순으로 찾게 됨.
 --%>
	<%
	pageContext.setAttribute("page1", "page value1");
	pageContext.setAttribute("req1", "page value2");
	request.setAttribute("req1", "req value");
	session.setAttribute("session1", "session value1");
	application.setAttribute("application1", "application value1");
	
	Map<String,String> map = new HashMap<>();
	map.put("key1", "value1");
	request.setAttribute("my-map", map);	
	
	Map<String,String> map2 = new HashMap<>();
	map2.put("key2", "value2");
	request.setAttribute("myMap", map2);
	%>
	
	<h1>Attribute에 저정된 map 객체 도출</h1>
	myMap.key2: >>>>  ${myMap.key2 } <br />
	requestScope["myMap"].key2 : >>>>   ${requestScope["myMap"].key2} <br />
	requestScope.myMap.key2 >>>>>  ${requestScope.myMap.key2 }
	
	<h1>Attribute에 저장된 map 객체 도출</h1>
	${requestScope["my-map"].key1} <br />
	${requestScope["my-map"]["key1"] }
	
	<h1>pageScope</h1>
	${pageScope.page1}, ${page1 }
	
	<h1>requestScope</h1>
	${requestScope.req1 }, ${req1 }
	
	<h1>sessionScope</h1>
	${sessionScope.session1 }, ${session1 }
	
	<h1>applicationScope</h1>
	${applicationScope.application1 }, ${application1 }
</body>
</html>