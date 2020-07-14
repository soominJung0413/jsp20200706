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
	<h1>장바구니 보기</h1>
	<%
	Object o = session.getAttribute("cart");
	if(o != null){
		Map<String,Integer> cart = (Map<String,Integer>)o;
		
		Set<String> keys = cart.keySet();
		%>
		<ul>
		<%
		for(String prod : keys){
			%>
			<li>
			<%
			out.print(prod+" : ");
			out.print(cart.get(prod)+" 개");
			out.print("<br/>");
		%>
		</li>
		<%
		}
		%>
		</ul>
	<% 
	}
	%>
</body>
</html>