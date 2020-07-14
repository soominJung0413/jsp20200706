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
	<%
		List<String > list = new ArrayList<>();
	list.add("java");
	list.add("html");
	list.add("Css");
	list.add(null);
	
	request.setAttribute("myList", list);
	pageContext.setAttribute("myNum", "2");
	%>
	
	<h1>List 컬렉션의 사용</h1>
	<h3>${myList[0]} , ${myList[1]}, ${myList[2]}</h3>
	<hr />
	
	
	<h3>값이 null이라면 ${ myList[3]}  출력하지 않는다.</h3>
	<%= ((List<String>)(request.getAttribute("myList"))).get(3) %>
	<hr />
	
	<h4>인덱스에 리터럴을 줘서도 사용가능하다 myList[myNum] : >>>>>  ${myList[myNum]}</h4>
	
</body>
</html>