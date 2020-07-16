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
	<h1>empty 연산자</h1>
	<%
	List list1 = new ArrayList();
	request.setAttribute("emptyList", list1);
	
	Integer[] integerArr = {};
	String str ="";
	
	request.setAttribute("emptyIntArr", integerArr);
	
	List list2 = new ArrayList();
	list2.add(1);
	list2.add(2);
	list2.add(null);
	request.setAttribute("pooledList", list2);
	%>
	<!-- String 도 charsequnce이니 비어있다면 비어있는 것으로 간주하는 듯 -->
	\${str} : ${empty str} <br />
	\${not empty str} : ${not empty str}
	<hr />
	
	<!-- 참조타입 배열은 비어있는지 여부가 확인이 가능하나 원시타입은 불가함 -->
	\${emptyIntArr} : ${empty emptyIntArr} <br />
	\${not empty emptyIntArr} : ${not empty pooledList}
	<hr />
	
	
	<!-- 객체가 비었는지의 여부에 따라 TRUE FALSE 도출하는 논리연산자 -->
	\${emptyList} : ${empty emptyList} <br />
	\${pooledList} : ${empty pooledList}
	<hr />
	
	<h2>not empty</h2>
	\${! emptyList} : ${! empty emptyList} <br />
	\${not empty pooledList} : ${not empty pooledList}
	<hr />
	
	<h2>empty 연산자로 null 여부 확인</h2>
		\${empty emptyList} : ${empty emptyList[3]} <br />
		<hr />
		
		<h2>not empty 연산자로 null이 아닌지 확인</h2>
		\${not empty emptyList} : ${not empty emptyList[3]} <br />
</body>
</html>